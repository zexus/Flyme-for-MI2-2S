.class Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;
.super Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;
.source "FmActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmLocalServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmActivity;


# direct methods
.method private constructor <init>(Lcom/miui/fmradio/FmActivity;)V
    .locals 0

    .prologue
    .line 859
    iput-object p1, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    invoke-direct {p0}, Lcom/miui/fmradio/IFmLocalServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/fmradio/FmActivity;Lcom/miui/fmradio/FmActivity$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/fmradio/FmActivity;
    .param p2, "x1"    # Lcom/miui/fmradio/FmActivity$1;

    .prologue
    .line 859
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;-><init>(Lcom/miui/fmradio/FmActivity;)V

    return-void
.end method


# virtual methods
.method public onFmAudioPathChanged(I)V
    .locals 2
    .param p1, "audiopath"    # I

    .prologue
    .line 952
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    const/4 v1, 0x0

    # invokes: Lcom/miui/fmradio/FmActivity;->requestUpdateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmActivity;->access$600(Lcom/miui/fmradio/FmActivity;I)V

    .line 953
    return-void
.end method

.method public onFmRdsChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "rds"    # Ljava/lang/String;

    .prologue
    .line 957
    invoke-static {p1}, Landroid/text/TextUtils;->isPrintableAsciiOnly(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 958
    :cond_0
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    const/4 v1, 0x0

    # invokes: Lcom/miui/fmradio/FmActivity;->requestUpdateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmActivity;->access$600(Lcom/miui/fmradio/FmActivity;I)V

    .line 960
    :cond_1
    return-void
.end method

.method public onFmRecordError(II)V
    .locals 2
    .param p1, "errCode"    # I
    .param p2, "what"    # I

    .prologue
    .line 976
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    const/4 v1, 0x0

    # invokes: Lcom/miui/fmradio/FmActivity;->requestUpdateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmActivity;->access$600(Lcom/miui/fmradio/FmActivity;I)V

    .line 977
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    new-instance v1, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$3;

    invoke-direct {v1, p0, p1, p2}, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$3;-><init>(Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;II)V

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/FmActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1008
    return-void
.end method

.method public onFmRecordStarted(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 971
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    const/4 v1, 0x0

    # invokes: Lcom/miui/fmradio/FmActivity;->requestUpdateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmActivity;->access$600(Lcom/miui/fmradio/FmActivity;I)V

    .line 972
    return-void
.end method

.method public onFmRecordStop(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    const/4 v1, 0x0

    # invokes: Lcom/miui/fmradio/FmActivity;->requestUpdateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmActivity;->access$600(Lcom/miui/fmradio/FmActivity;I)V

    .line 1013
    return-void
.end method

.method public onFmSeekCompleted(I)V
    .locals 2
    .param p1, "frequency"    # I

    .prologue
    .line 945
    invoke-static {p1}, Lcom/miui/fmradio/Utils;->isValidFrequency(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 946
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    const/4 v1, 0x0

    # invokes: Lcom/miui/fmradio/FmActivity;->requestUpdateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmActivity;->access$600(Lcom/miui/fmradio/FmActivity;I)V

    .line 948
    :cond_0
    return-void
.end method

.method public onFmServiceDestroyed()V
    .locals 0

    .prologue
    .line 881
    return-void
.end method

.method public onFmServiceError(II)V
    .locals 4
    .param p1, "errCode"    # I
    .param p2, "what"    # I

    .prologue
    .line 900
    packed-switch p1, :pswitch_data_0

    .line 934
    :cond_0
    :goto_0
    return-void

    .line 902
    :pswitch_0
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    new-instance v3, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$1;

    invoke-direct {v3, p0}, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$1;-><init>(Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;)V

    invoke-virtual {v2, v3}, Lcom/miui/fmradio/FmActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 910
    :pswitch_1
    const/4 v1, 0x0

    .line 911
    .local v1, "toastId":I
    if-nez p2, :cond_2

    .line 912
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mFrequencyPicker:Lcom/miui/fmradio/FrequencyPicker;
    invoke-static {v2}, Lcom/miui/fmradio/FmActivity;->access$1300(Lcom/miui/fmradio/FmActivity;)Lcom/miui/fmradio/FrequencyPicker;

    move-result-object v2

    invoke-virtual {v2}, Lcom/miui/fmradio/FrequencyPicker;->getVisibility()I

    move-result v2

    if-eqz v2, :cond_1

    .line 913
    const v1, 0x7f0a0030

    .line 920
    :cond_1
    :goto_1
    if-eqz v1, :cond_0

    .line 921
    move v0, v1

    .line 922
    .local v0, "tId":I
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    new-instance v3, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$2;

    invoke-direct {v3, p0, v0}, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$2;-><init>(Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;I)V

    invoke-virtual {v2, v3}, Lcom/miui/fmradio/FmActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 915
    .end local v0    # "tId":I
    :cond_2
    const/4 v2, 0x1

    if-ne p2, v2, :cond_3

    .line 916
    const v1, 0x7f0a002f

    goto :goto_1

    .line 917
    :cond_3
    const/4 v2, 0x2

    if-ne p2, v2, :cond_1

    .line 918
    const v1, 0x7f0a0015

    goto :goto_1

    .line 900
    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onFmServiceReady()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 863
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    invoke-static {v2}, Lcom/miui/fmradio/StationItemHelper;->getCurrentFrequency(Landroid/content/Context;)I

    move-result v1

    .line 865
    .local v1, "freq":I
    :try_start_0
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mIsLaunchFromCreate:Z
    invoke-static {v2}, Lcom/miui/fmradio/FmActivity;->access$1100(Lcom/miui/fmradio/FmActivity;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 866
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v2}, Lcom/miui/fmradio/FmActivity;->access$700(Lcom/miui/fmradio/FmActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/fmradio/IFmLocalService;->isFmOn()Z

    move-result v2

    if-nez v2, :cond_1

    .line 867
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v2}, Lcom/miui/fmradio/FmActivity;->access$700(Lcom/miui/fmradio/FmActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/miui/fmradio/IFmLocalService;->turnFmOn(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 876
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    # setter for: Lcom/miui/fmradio/FmActivity;->mIsLaunchFromCreate:Z
    invoke-static {v2, v4}, Lcom/miui/fmradio/FmActivity;->access$1102(Lcom/miui/fmradio/FmActivity;Z)Z

    .line 877
    return-void

    .line 869
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v2}, Lcom/miui/fmradio/FmActivity;->access$700(Lcom/miui/fmradio/FmActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v2

    invoke-interface {v2, v1}, Lcom/miui/fmradio/IFmLocalService;->tuneFm(I)V

    .line 870
    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    const/4 v3, 0x0

    # invokes: Lcom/miui/fmradio/FmActivity;->requestUpdateUi(I)V
    invoke-static {v2, v3}, Lcom/miui/fmradio/FmActivity;->access$600(Lcom/miui/fmradio/FmActivity;I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 873
    :catch_0
    move-exception v0

    .line 874
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Fm:FmActivity"

    const-string v3, "Turn fm on or tune fm failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onFmSleepModeChange(Z)V
    .locals 2
    .param p1, "inSleepMode"    # Z

    .prologue
    .line 966
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    const/4 v1, 0x0

    # invokes: Lcom/miui/fmradio/FmActivity;->requestUpdateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmActivity;->access$600(Lcom/miui/fmradio/FmActivity;I)V

    .line 967
    return-void
.end method

.method public onFmTuneCompleted(I)V
    .locals 2
    .param p1, "frequency"    # I

    .prologue
    .line 938
    invoke-static {p1}, Lcom/miui/fmradio/Utils;->isValidFrequency(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 939
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    const/4 v1, 0x0

    # invokes: Lcom/miui/fmradio/FmActivity;->requestUpdateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmActivity;->access$600(Lcom/miui/fmradio/FmActivity;I)V

    .line 941
    :cond_0
    return-void
.end method

.method public onFmTurnedOff()V
    .locals 2

    .prologue
    .line 895
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    const/4 v1, 0x2

    # invokes: Lcom/miui/fmradio/FmActivity;->requestUpdateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmActivity;->access$600(Lcom/miui/fmradio/FmActivity;I)V

    .line 896
    return-void
.end method

.method public onFmTurnedOn()V
    .locals 3

    .prologue
    .line 886
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    iget-object v2, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v2}, Lcom/miui/fmradio/FmActivity;->access$700(Lcom/miui/fmradio/FmActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/fmradio/IFmLocalService;->getCurrentFrequency()I

    move-result v2

    invoke-static {v1, v2}, Lcom/miui/fmradio/StationItemHelper;->setCurrentFrequency(Landroid/content/Context;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 890
    :goto_0
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    const/4 v2, 0x1

    # invokes: Lcom/miui/fmradio/FmActivity;->requestUpdateUi(I)V
    invoke-static {v1, v2}, Lcom/miui/fmradio/FmActivity;->access$600(Lcom/miui/fmradio/FmActivity;I)V

    .line 891
    return-void

    .line 887
    :catch_0
    move-exception v0

    .line 888
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmActivity"

    const-string v2, "invoking failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onHeadsetStateChanged(Z)V
    .locals 2
    .param p1, "headset"    # Z

    .prologue
    .line 1017
    if-nez p1, :cond_0

    .line 1018
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    new-instance v1, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$4;

    invoke-direct {v1, p0}, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback$4;-><init>(Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;)V

    invoke-virtual {v0, v1}, Lcom/miui/fmradio/FmActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 1025
    :cond_0
    iget-object v0, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    const/4 v1, 0x0

    # invokes: Lcom/miui/fmradio/FmActivity;->requestUpdateUi(I)V
    invoke-static {v0, v1}, Lcom/miui/fmradio/FmActivity;->access$600(Lcom/miui/fmradio/FmActivity;I)V

    .line 1026
    return-void
.end method

.method public onScanComplete(I)V
    .locals 0
    .param p1, "count"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1055
    return-void
.end method

.method public onScanStart()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1045
    return-void
.end method

.method public onServiceClean()V
    .locals 3

    .prologue
    .line 1030
    const-string v1, "Fm:FmActivity"

    const-string v2, "onServiceClean"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1031
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmActivity;->access$700(Lcom/miui/fmradio/FmActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1033
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    # getter for: Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1}, Lcom/miui/fmradio/FmActivity;->access$700(Lcom/miui/fmradio/FmActivity;)Lcom/miui/fmradio/IFmLocalService;

    move-result-object v1

    invoke-interface {v1, p0}, Lcom/miui/fmradio/IFmLocalService;->unregisterFmStateListener(Lcom/miui/fmradio/IFmLocalServiceCallback;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    # invokes: Lcom/miui/fmradio/FmActivity;->unbindService()V
    invoke-static {v1}, Lcom/miui/fmradio/FmActivity;->access$1500(Lcom/miui/fmradio/FmActivity;)V

    .line 1039
    iget-object v1, p0, Lcom/miui/fmradio/FmActivity$FmLocalServiceCallback;->this$0:Lcom/miui/fmradio/FmActivity;

    const/4 v2, 0x0

    # setter for: Lcom/miui/fmradio/FmActivity;->mService:Lcom/miui/fmradio/IFmLocalService;
    invoke-static {v1, v2}, Lcom/miui/fmradio/FmActivity;->access$702(Lcom/miui/fmradio/FmActivity;Lcom/miui/fmradio/IFmLocalService;)Lcom/miui/fmradio/IFmLocalService;

    .line 1040
    return-void

    .line 1034
    :catch_0
    move-exception v0

    .line 1035
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmActivity"

    const-string v2, "onServiceClean failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onStationScaned(I)V
    .locals 0
    .param p1, "freq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1050
    return-void
.end method
