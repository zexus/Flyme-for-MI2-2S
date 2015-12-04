.class Lcom/miui/fmradio/FmLocalService$1;
.super Landroid/os/Handler;
.source "FmLocalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmLocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmLocalService;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x1

    .line 111
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 181
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 182
    return-void

    .line 113
    :pswitch_0
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    # invokes: Lcom/miui/fmradio/FmLocalService;->notifyServiceReady()V
    invoke-static {v2}, Lcom/miui/fmradio/FmLocalService;->access$000(Lcom/miui/fmradio/FmLocalService;)V

    goto :goto_0

    .line 116
    :pswitch_1
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    # invokes: Lcom/miui/fmradio/FmLocalService;->notifyFmTurnedOn()V
    invoke-static {v2}, Lcom/miui/fmradio/FmLocalService;->access$100(Lcom/miui/fmradio/FmLocalService;)V

    goto :goto_0

    .line 119
    :pswitch_2
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    # invokes: Lcom/miui/fmradio/FmLocalService;->notifyFmTurnedOff()V
    invoke-static {v2}, Lcom/miui/fmradio/FmLocalService;->access$200(Lcom/miui/fmradio/FmLocalService;)V

    goto :goto_0

    .line 122
    :pswitch_3
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/miui/fmradio/FmLocalService;->notifyFmServiceError(II)V
    invoke-static {v2, v3, v4}, Lcom/miui/fmradio/FmLocalService;->access$300(Lcom/miui/fmradio/FmLocalService;II)V

    goto :goto_0

    .line 125
    :pswitch_4
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/miui/fmradio/FmLocalService;->notifyFmTuneCompleted(I)V
    invoke-static {v2, v3}, Lcom/miui/fmradio/FmLocalService;->access$400(Lcom/miui/fmradio/FmLocalService;I)V

    goto :goto_0

    .line 128
    :pswitch_5
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/miui/fmradio/FmLocalService;->notifyFmSeekCompleted(I)V
    invoke-static {v2, v3}, Lcom/miui/fmradio/FmLocalService;->access$500(Lcom/miui/fmradio/FmLocalService;I)V

    goto :goto_0

    .line 131
    :pswitch_6
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/miui/fmradio/FmLocalService;->notifyFmAudioPathChanged(I)V
    invoke-static {v2, v3}, Lcom/miui/fmradio/FmLocalService;->access$600(Lcom/miui/fmradio/FmLocalService;I)V

    goto :goto_0

    .line 134
    :pswitch_7
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/miui/fmradio/FmLocalService;->notifyFmRdsChanged(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/miui/fmradio/FmLocalService;->access$700(Lcom/miui/fmradio/FmLocalService;Ljava/lang/String;)V

    goto :goto_0

    .line 137
    :pswitch_8
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    # invokes: Lcom/miui/fmradio/FmLocalService;->notifyFmScanStarted()V
    invoke-static {v2}, Lcom/miui/fmradio/FmLocalService;->access$800(Lcom/miui/fmradio/FmLocalService;)V

    goto :goto_0

    .line 140
    :pswitch_9
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/miui/fmradio/FmLocalService;->notifyFmStationScaned(I)V
    invoke-static {v2, v3}, Lcom/miui/fmradio/FmLocalService;->access$900(Lcom/miui/fmradio/FmLocalService;I)V

    goto :goto_0

    .line 143
    :pswitch_a
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    # invokes: Lcom/miui/fmradio/FmLocalService;->notifyFmScanCompleted(I)V
    invoke-static {v2, v3}, Lcom/miui/fmradio/FmLocalService;->access$1000(Lcom/miui/fmradio/FmLocalService;I)V

    goto :goto_0

    .line 146
    :pswitch_b
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    # invokes: Lcom/miui/fmradio/FmLocalService;->notifyFmRecordStarted(Ljava/lang/String;)V
    invoke-static {v3, v2}, Lcom/miui/fmradio/FmLocalService;->access$1100(Lcom/miui/fmradio/FmLocalService;Ljava/lang/String;)V

    goto :goto_0

    .line 149
    :pswitch_c
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    # invokes: Lcom/miui/fmradio/FmLocalService;->notifyFmRecordError(II)V
    invoke-static {v2, v3, v4}, Lcom/miui/fmradio/FmLocalService;->access$1200(Lcom/miui/fmradio/FmLocalService;II)V

    goto :goto_0

    .line 152
    :pswitch_d
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 153
    .local v1, "path":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    # invokes: Lcom/miui/fmradio/FmLocalService;->showRecordNotification(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/miui/fmradio/FmLocalService;->access$1300(Lcom/miui/fmradio/FmLocalService;Ljava/lang/String;)V

    .line 154
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    # invokes: Lcom/miui/fmradio/FmLocalService;->notifyFmRecordStoped(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/miui/fmradio/FmLocalService;->access$1400(Lcom/miui/fmradio/FmLocalService;Ljava/lang/String;)V

    goto :goto_0

    .line 157
    .end local v1    # "path":Ljava/lang/String;
    :pswitch_e
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    # invokes: Lcom/miui/fmradio/FmLocalService;->notifyFmSleepModeChange()V
    invoke-static {v2}, Lcom/miui/fmradio/FmLocalService;->access$1500(Lcom/miui/fmradio/FmLocalService;)V

    goto :goto_0

    .line 160
    :pswitch_f
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v2, :cond_1

    :goto_1
    # invokes: Lcom/miui/fmradio/FmLocalService;->notifyHeadsetStateChanged(Z)V
    invoke-static {v3, v2}, Lcom/miui/fmradio/FmLocalService;->access$1600(Lcom/miui/fmradio/FmLocalService;Z)V

    goto/16 :goto_0

    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 163
    :pswitch_10
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v2}, Lcom/miui/fmradio/FmLocalService;->isFmOn()Z

    move-result v2

    if-nez v2, :cond_0

    .line 164
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    # getter for: Lcom/miui/fmradio/FmLocalService;->mTurnOffAtPhoneTime:J
    invoke-static {v4}, Lcom/miui/fmradio/FmLocalService;->access$1700(Lcom/miui/fmradio/FmLocalService;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/32 v4, 0x493e0

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 165
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    # invokes: Lcom/miui/fmradio/FmLocalService;->notifyServiceClean()V
    invoke-static {v2}, Lcom/miui/fmradio/FmLocalService;->access$1800(Lcom/miui/fmradio/FmLocalService;)V

    goto/16 :goto_0

    .line 167
    :cond_2
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    # invokes: Lcom/miui/fmradio/FmLocalService;->checkProgressForeground()Z
    invoke-static {v2}, Lcom/miui/fmradio/FmLocalService;->access$1900(Lcom/miui/fmradio/FmLocalService;)Z

    move-result v0

    .line 168
    .local v0, "inForeground":Z
    if-eqz v0, :cond_3

    .line 169
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    # getter for: Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/miui/fmradio/FmLocalService;->access$2000(Lcom/miui/fmradio/FmLocalService;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x11

    const-wide/16 v4, 0x1f4

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 172
    :cond_3
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService$1;->this$0:Lcom/miui/fmradio/FmLocalService;

    # invokes: Lcom/miui/fmradio/FmLocalService;->notifyServiceClean()V
    invoke-static {v2}, Lcom/miui/fmradio/FmLocalService;->access$1800(Lcom/miui/fmradio/FmLocalService;)V

    goto/16 :goto_0

    .line 111
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
    .end packed-switch
.end method
