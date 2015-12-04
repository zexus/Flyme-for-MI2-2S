.class Lcom/miui/fmradio/AbsFmServiceManager$1;
.super Landroid/os/Handler;
.source "AbsFmServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/AbsFmServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/AbsFmServiceManager;


# direct methods
.method constructor <init>(Lcom/miui/fmradio/AbsFmServiceManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "x0"    # Landroid/os/Looper;

    .prologue
    .line 36
    iput-object p1, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 39
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    invoke-virtual {v0, p1}, Lcom/miui/fmradio/AbsFmServiceManager;->handleMessage(Landroid/os/Message;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 110
    :cond_0
    :goto_0
    return-void

    .line 43
    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 45
    :pswitch_0
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmStateCallback:Lcom/miui/fmradio/IFmStateCallback;

    if-eqz v0, :cond_0

    .line 46
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmStateCallback:Lcom/miui/fmradio/IFmStateCallback;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmStateCallback;->onFmServiceReady()V

    goto :goto_0

    .line 50
    :pswitch_1
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmStateCallback:Lcom/miui/fmradio/IFmStateCallback;

    if-eqz v0, :cond_2

    .line 51
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmStateCallback:Lcom/miui/fmradio/IFmStateCallback;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmStateCallback;->onFmServiceDestroyed()V

    .line 53
    :cond_2
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    # getter for: Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;
    invoke-static {v0}, Lcom/miui/fmradio/AbsFmServiceManager;->access$000(Lcom/miui/fmradio/AbsFmServiceManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 54
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    # getter for: Lcom/miui/fmradio/AbsFmServiceManager;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v0}, Lcom/miui/fmradio/AbsFmServiceManager;->access$100(Lcom/miui/fmradio/AbsFmServiceManager;)Landroid/os/HandlerThread;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 55
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    # setter for: Lcom/miui/fmradio/AbsFmServiceManager;->mHandlerThread:Landroid/os/HandlerThread;
    invoke-static {v0, v1}, Lcom/miui/fmradio/AbsFmServiceManager;->access$102(Lcom/miui/fmradio/AbsFmServiceManager;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;

    goto :goto_0

    .line 58
    :pswitch_2
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmStateCallback:Lcom/miui/fmradio/IFmStateCallback;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmStateCallback:Lcom/miui/fmradio/IFmStateCallback;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v0, v1, v2}, Lcom/miui/fmradio/IFmStateCallback;->onFmServiceError(II)V

    goto :goto_0

    .line 63
    :pswitch_3
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmStateCallback:Lcom/miui/fmradio/IFmStateCallback;

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmStateCallback:Lcom/miui/fmradio/IFmStateCallback;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmStateCallback;->onFmTurnedOn()V

    goto :goto_0

    .line 68
    :pswitch_4
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmStateCallback:Lcom/miui/fmradio/IFmStateCallback;

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmStateCallback:Lcom/miui/fmradio/IFmStateCallback;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmStateCallback;->onFmTurnedOff()V

    goto :goto_0

    .line 73
    :pswitch_5
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmStateCallback:Lcom/miui/fmradio/IFmStateCallback;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmStateCallback:Lcom/miui/fmradio/IFmStateCallback;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/miui/fmradio/IFmStateCallback;->onFmTuneCompleted(I)V

    goto :goto_0

    .line 78
    :pswitch_6
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmStateCallback:Lcom/miui/fmradio/IFmStateCallback;

    if-eqz v0, :cond_0

    .line 79
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmStateCallback:Lcom/miui/fmradio/IFmStateCallback;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/miui/fmradio/IFmStateCallback;->onFmSeekCompleted(I)V

    goto/16 :goto_0

    .line 83
    :pswitch_7
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmStateCallback:Lcom/miui/fmradio/IFmStateCallback;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmStateCallback:Lcom/miui/fmradio/IFmStateCallback;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/miui/fmradio/IFmStateCallback;->onFmAudioPathChanged(I)V

    goto/16 :goto_0

    .line 88
    :pswitch_8
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmStateCallback:Lcom/miui/fmradio/IFmStateCallback;

    if-eqz v0, :cond_0

    .line 89
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v1, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmStateCallback:Lcom/miui/fmradio/IFmStateCallback;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Lcom/miui/fmradio/IFmStateCallback;->onFmRdsChanged(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 93
    :pswitch_9
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmScanListener:Lcom/miui/fmradio/IFmScanListener;

    if-eqz v0, :cond_0

    .line 94
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmScanListener:Lcom/miui/fmradio/IFmScanListener;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmScanListener;->onScanStart()V

    goto/16 :goto_0

    .line 98
    :pswitch_a
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmScanListener:Lcom/miui/fmradio/IFmScanListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmScanListener:Lcom/miui/fmradio/IFmScanListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/miui/fmradio/IFmScanListener;->onStationScaned(I)V

    goto/16 :goto_0

    .line 103
    :pswitch_b
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmScanListener:Lcom/miui/fmradio/IFmScanListener;

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager$1;->this$0:Lcom/miui/fmradio/AbsFmServiceManager;

    iget-object v0, v0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmScanListener:Lcom/miui/fmradio/IFmScanListener;

    iget v1, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v0, v1}, Lcom/miui/fmradio/IFmScanListener;->onScanComplete(I)V

    goto/16 :goto_0

    .line 43
    nop

    :pswitch_data_0
    .packed-switch 0x2711
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
    .end packed-switch
.end method
