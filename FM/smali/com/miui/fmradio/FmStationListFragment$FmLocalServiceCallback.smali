.class Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;
.super Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;
.source "FmStationListFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmStationListFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmLocalServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmStationListFragment;


# direct methods
.method private constructor <init>(Lcom/miui/fmradio/FmStationListFragment;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-direct {p0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/fmradio/FmStationListFragment;Lcom/miui/fmradio/FmStationListFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/fmradio/FmStationListFragment;
    .param p2, "x1"    # Lcom/miui/fmradio/FmStationListFragment$1;

    .prologue
    .line 357
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;-><init>(Lcom/miui/fmradio/FmStationListFragment;)V

    return-void
.end method


# virtual methods
.method public onFmAudioPathChanged(I)V
    .locals 0
    .param p1, "audiopath"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 436
    return-void
.end method

.method public onFmRdsChanged(Ljava/lang/String;)V
    .locals 0
    .param p1, "rds"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 441
    return-void
.end method

.method public onFmRecordError(II)V
    .locals 0
    .param p1, "errCode"    # I
    .param p2, "what"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 456
    return-void
.end method

.method public onFmRecordStarted(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 451
    return-void
.end method

.method public onFmRecordStop(Ljava/lang/String;)V
    .locals 0
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 461
    return-void
.end method

.method public onFmSeekCompleted(I)V
    .locals 2
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 425
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$4;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$4;-><init>(Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 431
    return-void
.end method

.method public onFmServiceDestroyed()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 379
    return-void
.end method

.method public onFmServiceError(II)V
    .locals 0
    .param p1, "errCode"    # I
    .param p2, "what"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 411
    return-void
.end method

.method public onFmServiceReady()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 361
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 367
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mIsScanRequest:Z
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$200(Lcom/miui/fmradio/FmStationListFragment;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    invoke-interface {v1}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v1

    if-nez v1, :cond_0

    .line 368
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v2}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/miui/fmradio/StationItemHelper;->getCurrentFrequency(Landroid/content/Context;)I

    move-result v2

    invoke-interface {v1, v2}, Lcom/miui/fmradio/IFmLocalService;->turnFmOn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 374
    :cond_0
    :goto_0
    return-void

    .line 370
    :catch_0
    move-exception v0

    .line 371
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmStationListFragment"

    const-string v2, "invoking failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onFmSleepModeChange(Z)V
    .locals 0
    .param p1, "inSleepMode"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 446
    return-void
.end method

.method public onFmTuneCompleted(I)V
    .locals 2
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 415
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$3;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$3;-><init>(Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 421
    return-void
.end method

.method public onFmTurnedOff()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 400
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$2;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$2;-><init>(Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 406
    return-void
.end method

.method public onFmTurnedOn()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 387
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mIsScanRequest:Z
    invoke-static {v0}, Lcom/miui/fmradio/FmStationListFragment;->access$200(Lcom/miui/fmradio/FmStationListFragment;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 388
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # invokes: Lcom/miui/fmradio/FmStationListFragment;->startScan()V
    invoke-static {v0}, Lcom/miui/fmradio/FmStationListFragment;->access$300(Lcom/miui/fmradio/FmStationListFragment;)V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$1;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$1;-><init>(Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 396
    return-void
.end method

.method public onHeadsetStateChanged(Z)V
    .locals 0
    .param p1, "headset"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 466
    return-void
.end method

.method public onScanComplete(I)V
    .locals 4
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 515
    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    const/4 v3, 0x0

    # invokes: Lcom/miui/fmradio/FmStationListFragment;->showScanDialog(Z)V
    invoke-static {v2, v3}, Lcom/miui/fmradio/FmStationListFragment;->access$400(Lcom/miui/fmradio/FmStationListFragment;Z)V

    .line 516
    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v2}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 517
    .local v0, "a":Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 518
    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v2}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    new-instance v3, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$7;

    invoke-direct {v3, p0, p1}, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$7;-><init>(Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;I)V

    invoke-virtual {v2, v3}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 531
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v2}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v3}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-static {v3}, Lcom/miui/fmradio/StationItemHelper;->getCurrentFrequency(Landroid/content/Context;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/miui/fmradio/IFmLocalService;->tuneFm(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 535
    :goto_0
    return-void

    .line 532
    :catch_0
    move-exception v1

    .line 533
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Fm:FmStationListFragment"

    const-string v3, "tuneFm failed"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onScanStart()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 483
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$5;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$5;-><init>(Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 493
    return-void
.end method

.method public onServiceClean()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 470
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 472
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # getter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$000(Lcom/miui/fmradio/FmStationListFragment;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/miui/fmradio/IFmLocalService;->unregisterFmStateListener(Lcom/miui/fmradio/IFmLocalServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 477
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    # invokes: Lcom/miui/fmradio/FmStationListFragment;->unbindService()V
    invoke-static {v1}, Lcom/miui/fmradio/FmStationListFragment;->access$900(Lcom/miui/fmradio/FmStationListFragment;)V

    .line 478
    iget-object v1, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    const/4 v2, 0x0

    # setter for: Lcom/miui/fmradio/FmStationListFragment;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1, v2}, Lcom/miui/fmradio/FmStationListFragment;->access$002(Lcom/miui/fmradio/FmStationListFragment;Lcom/miui/fmradio/IFmLocalService;)Lcom/miui/fmradio/IFmLocalService;

    .line 479
    return-void

    .line 473
    :catch_0
    move-exception v0

    .line 474
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmStationListFragment"

    const-string v2, "unregisterFmStateListener failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStationScaned(I)V
    .locals 2
    .param p1, "freq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 497
    iget-object v0, p0, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmStationListFragment;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmStationListFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$6;

    invoke-direct {v1, p0, p1}, Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback$6;-><init>(Lcom/miui/fmradio/FmStationListFragment$FmLocalServiceCallback;I)V

    invoke-virtual {v0, v1}, Landroid/app/Activity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 511
    return-void
.end method
