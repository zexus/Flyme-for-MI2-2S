.class Lcom/miui/fmradio/FmStationListFragment$2;
.super Ljava/lang/Object;
.source "FmStationListFragment.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmStationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmStationListFragment;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmStationListFragment;)V
    .locals 0

    .prologue
    .line 295
    iput-object p1, p0, Lcom/miui/fmradio/FmStationListFragment$2;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 302
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$2;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-static {p2}, Lcom/miui/fmradio/IFmLocalService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v2

    # setter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1, v2}, Lcom/miui/fmradio/FmStationListFragment;->access$002(Lcom/miui/fmradio/FmStationListFragment;Lcom/miui/fmradio/IFmLocalService;)Lcom/miui/fmradio/IFmLocalService;

    .line 307
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$2;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 309
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$2;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment$2;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mFmLocalServiceCallback:Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;
    invoke-static {v2}, Lcom/miui/fmradio/FmStationListFragment;->access$100(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/miui/fmradio/IFmLocalService;->registerFmStateListener(Lcom/miui/fmradio/IFmLocalServiceCallback;)V

    .line 310
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$2;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 311
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$2;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mIsScanRequest:Z
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$200(Lcom/miui/fmradio/FmStationListFragment;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 312
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$2;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # invokes: Lcom/miui/fmradio/FmStationListFragment;->startScan()V
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$300(Lcom/miui/fmradio/FmStationListFragment;)V

    .line 327
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$2;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mIsScanRequest:Z
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$200(Lcom/miui/fmradio/FmStationListFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$2;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/fmradio/IFmLocalService;->isScanning()Z

    move-result v1

    if-nez v1, :cond_1

    .line 328
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$2;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    const/4 v2, 0x0

    # invokes: Lcom/miui/fmradio/FmStationListFragment;->showScanDialog(Z)V
    invoke-static {v1, v2}, Lcom/miui/fmradio/FmStationListFragment;->access$400(Lcom/miui/fmradio/FmStationListFragment;Z)V

    .line 334
    :cond_1
    :goto_1
    return-void

    .line 313
    :cond_2
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$2;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/fmradio/IFmLocalService;->isScanning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 314
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$2;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    const/4 v2, 0x1

    # invokes: Lcom/miui/fmradio/FmStationListFragment;->showScanDialog(Z)V
    invoke-static {v1, v2}, Lcom/miui/fmradio/FmStationListFragment;->access$400(Lcom/miui/fmradio/FmStationListFragment;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v0

    .line 331
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmStationListFragment"

    const-string v2, "invoking failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 316
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_3
    :try_start_1
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$2;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/fmradio/IFmLocalService;->isFmServiceReady()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 317
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$2;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mIsScanRequest:Z
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$200(Lcom/miui/fmradio/FmStationListFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 318
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$2;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment$2;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v2}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/fmradio/StationItemHelper;->getCurrentFrequency(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/miui/fmradio/IFmLocalService;->turnFmOn(I)V

    goto :goto_0

    .line 321
    :cond_4
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$2;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mIsScanRequest:Z
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$200(Lcom/miui/fmradio/FmStationListFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 322
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$2;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/fmradio/IFmLocalService;->initFmService()V

    .line 323
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$2;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    const/4 v2, 0x1

    # invokes: Lcom/miui/fmradio/FmStationListFragment;->showScanDialog(Z)V
    invoke-static {v1, v2}, Lcom/miui/fmradio/FmStationListFragment;->access$400(Lcom/miui/fmradio/FmStationListFragment;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 298
    return-void
.end method
