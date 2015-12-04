.class Lcom/miui/fmservice/FmService$5;
.super Lqcom/fmradio/FmRxEvCallbacksAdaptor;
.source "FmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmservice/FmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmservice/FmService;


# direct methods
.method constructor <init>(Lcom/miui/fmservice/FmService;)V
    .locals 0

    .prologue
    .line 1480
    iput-object p1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    invoke-direct {p0}, Lqcom/fmradio/FmRxEvCallbacksAdaptor;-><init>()V

    return-void
.end method


# virtual methods
.method public FmRxEvDisableReceiver()V
    .locals 2

    .prologue
    .line 1486
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvDisableReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1487
    return-void
.end method

.method public FmRxEvEnableReceiver()V
    .locals 2

    .prologue
    .line 1482
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvEnableReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1483
    return-void
.end method

.method public FmRxEvRadioReset()V
    .locals 2

    .prologue
    .line 1490
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvRadioReset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1491
    iget-object v0, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    invoke-virtual {v0}, Lcom/miui/fmservice/FmService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1493
    const-string v0, "Fm:FmService"

    const-string v1, "FM Radio reset"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1494
    iget-object v0, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # invokes: Lcom/miui/fmservice/FmService;->fmRadioReset()Z
    invoke-static {v0}, Lcom/miui/fmservice/FmService;->access$600(Lcom/miui/fmservice/FmService;)Z

    .line 1496
    :cond_0
    return-void
.end method

.method public FmRxEvRadioTuneStatus(I)V
    .locals 4
    .param p1, "frequency"    # I

    .prologue
    .line 1523
    const-string v1, "Fm:FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FmRxEvRadioTuneStatus: Tuned Frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1526
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$100(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmReceiver;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1527
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    invoke-virtual {v1}, Lcom/miui/fmservice/FmService;->clearStationInfo()V

    .line 1529
    :cond_0
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    const/4 v2, 0x0

    # setter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v1, v2}, Lcom/miui/fmservice/FmService;->access$702(Lcom/miui/fmservice/FmService;Lqcom/fmradio/FmRxRdsData;)Lqcom/fmradio/FmRxRdsData;

    .line 1530
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$800(Lcom/miui/fmservice/FmService;)Lcom/miui/fmservice/IFmServiceCallback;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 1531
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$800(Lcom/miui/fmservice/FmService;)Lcom/miui/fmservice/IFmServiceCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/fmservice/IFmServiceCallback;->onTuneComplete(I)V

    .line 1533
    :cond_1
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    const/4 v2, 0x1

    # setter for: Lcom/miui/fmservice/FmService;->mFMOn:Z
    invoke-static {v1, v2}, Lcom/miui/fmservice/FmService;->access$902(Lcom/miui/fmservice/FmService;Z)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1538
    :goto_0
    return-void

    .line 1535
    :catch_0
    move-exception v0

    .line 1536
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public FmRxEvRdsAfInfo()V
    .locals 2

    .prologue
    .line 1658
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvRdsAfInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1659
    return-void
.end method

.method public FmRxEvRdsGroupData()V
    .locals 2

    .prologue
    .line 1623
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvRdsGroupData"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1624
    return-void
.end method

.method public FmRxEvRdsLockStatus(Z)V
    .locals 4
    .param p1, "bRDSSupported"    # Z

    .prologue
    .line 1547
    const-string v1, "Fm:FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FmRxEvRdsLockStatus: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1549
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$800(Lcom/miui/fmservice/FmService;)Lcom/miui/fmservice/IFmServiceCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1550
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$800(Lcom/miui/fmservice/FmService;)Lcom/miui/fmservice/IFmServiceCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/fmservice/IFmServiceCallback;->onStationRDSSupported(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1555
    :cond_0
    :goto_0
    return-void

    .line 1552
    :catch_0
    move-exception v0

    .line 1553
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public FmRxEvRdsPsInfo()V
    .locals 3

    .prologue
    .line 1627
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvRdsPsInfo: "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1628
    iget-object v0, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v0}, Lcom/miui/fmservice/FmService;->access$100(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1630
    iget-object v0, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$100(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lqcom/fmradio/FmReceiver;->getPSInfo()Lqcom/fmradio/FmRxRdsData;

    move-result-object v1

    # setter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v0, v1}, Lcom/miui/fmservice/FmService;->access$702(Lcom/miui/fmservice/FmService;Lqcom/fmradio/FmRxRdsData;)Lqcom/fmradio/FmRxRdsData;

    .line 1631
    iget-object v0, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v0}, Lcom/miui/fmservice/FmService;->access$700(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1633
    const-string v0, "Fm:FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PI: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v2}, Lcom/miui/fmservice/FmService;->access$700(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v2

    invoke-virtual {v2}, Lqcom/fmradio/FmRxRdsData;->getPrgmId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1634
    const-string v0, "Fm:FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PTY: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v2}, Lcom/miui/fmservice/FmService;->access$700(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v2

    invoke-virtual {v2}, Lqcom/fmradio/FmRxRdsData;->getPrgmType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1635
    const-string v0, "Fm:FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PS: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v2}, Lcom/miui/fmservice/FmService;->access$700(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v2

    invoke-virtual {v2}, Lqcom/fmradio/FmRxRdsData;->getPrgmServices()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1638
    :cond_0
    return-void
.end method

.method public FmRxEvRdsRtInfo()V
    .locals 3

    .prologue
    .line 1641
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvRdsRtInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1643
    iget-object v0, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v0}, Lcom/miui/fmservice/FmService;->access$100(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1645
    iget-object v0, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$100(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmReceiver;

    move-result-object v1

    invoke-virtual {v1}, Lqcom/fmradio/FmReceiver;->getRTInfo()Lqcom/fmradio/FmRxRdsData;

    move-result-object v1

    # setter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v0, v1}, Lcom/miui/fmservice/FmService;->access$702(Lcom/miui/fmservice/FmService;Lqcom/fmradio/FmRxRdsData;)Lqcom/fmradio/FmRxRdsData;

    .line 1646
    iget-object v0, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v0}, Lcom/miui/fmservice/FmService;->access$700(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1648
    const-string v0, "Fm:FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PI: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v2}, Lcom/miui/fmservice/FmService;->access$700(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v2

    invoke-virtual {v2}, Lqcom/fmradio/FmRxRdsData;->getPrgmId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1649
    const-string v0, "Fm:FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PTY: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v2}, Lcom/miui/fmservice/FmService;->access$700(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v2

    invoke-virtual {v2}, Lqcom/fmradio/FmRxRdsData;->getPrgmType()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1650
    const-string v0, "Fm:FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RT: ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v2}, Lcom/miui/fmservice/FmService;->access$700(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmRxRdsData;

    move-result-object v2

    invoke-virtual {v2}, Lqcom/fmradio/FmRxRdsData;->getRadioText()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1654
    :cond_0
    return-void
.end method

.method public FmRxEvSearchCancelled()V
    .locals 3

    .prologue
    .line 1612
    const-string v1, "Fm:FmService"

    const-string v2, "FmRxEvSearchCancelled: Cancelled the on-going search operation."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1614
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$800(Lcom/miui/fmservice/FmService;)Lcom/miui/fmservice/IFmServiceCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1615
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$800(Lcom/miui/fmservice/FmService;)Lcom/miui/fmservice/IFmServiceCallback;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/miui/fmservice/IFmServiceCallback;->onSearchComplete(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1620
    :cond_0
    :goto_0
    return-void

    .line 1617
    :catch_0
    move-exception v0

    .line 1618
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public FmRxEvSearchComplete(I)V
    .locals 4
    .param p1, "frequency"    # I

    .prologue
    .line 1588
    const-string v1, "Fm:FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "FmRxEvSearchComplete: Tuned Frequency: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1592
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    const/4 v2, 0x0

    # setter for: Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;
    invoke-static {v1, v2}, Lcom/miui/fmservice/FmService;->access$702(Lcom/miui/fmservice/FmService;Lqcom/fmradio/FmRxRdsData;)Lqcom/fmradio/FmRxRdsData;

    .line 1593
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$800(Lcom/miui/fmservice/FmService;)Lcom/miui/fmservice/IFmServiceCallback;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1594
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$800(Lcom/miui/fmservice/FmService;)Lcom/miui/fmservice/IFmServiceCallback;

    move-result-object v1

    invoke-interface {v1, p1}, Lcom/miui/fmservice/IFmServiceCallback;->onSearchComplete(I)V

    .line 1596
    :cond_0
    iget-object v1, p0, Lcom/miui/fmservice/FmService$5;->this$0:Lcom/miui/fmservice/FmService;

    const/4 v2, 0x1

    # setter for: Lcom/miui/fmservice/FmService;->mFMOn:Z
    invoke-static {v1, v2}, Lcom/miui/fmservice/FmService;->access$902(Lcom/miui/fmservice/FmService;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1600
    :goto_0
    return-void

    .line 1597
    :catch_0
    move-exception v0

    .line 1598
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public FmRxEvSearchInProgress()V
    .locals 2

    .prologue
    .line 1576
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvSearchInProgress"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1577
    return-void
.end method

.method public FmRxEvSearchListComplete()V
    .locals 2

    .prologue
    .line 1608
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvSearchListComplete"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1609
    return-void
.end method

.method public FmRxEvServiceAvailable(Z)V
    .locals 2
    .param p1, "signal"    # Z

    .prologue
    .line 1562
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvServiceAvailable"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1563
    if-eqz p1, :cond_0

    .line 1564
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvServiceAvailable: Tuned frequency is above signal threshold level"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1569
    :goto_0
    return-void

    .line 1567
    :cond_0
    const-string v0, "Fm:FmService"

    const-string v1, "FmRxEvServiceAvailable: Tuned frequency is below signal threshold level"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public FmRxEvStereoStatus(Z)V
    .locals 3
    .param p1, "stereo"    # Z

    .prologue
    .line 1558
    const-string v0, "Fm:FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FmRxEvStereoStatus: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1559
    return-void
.end method
