.class public abstract Lcom/miui/fmradio/AbsFmServiceManager;
.super Ljava/lang/Object;
.source "AbsFmServiceManager.java"

# interfaces
.implements Lcom/miui/fmradio/IFmServiceManager;


# instance fields
.field protected mFmScanListener:Lcom/miui/fmradio/IFmScanListener;

.field protected mFmStateCallback:Lcom/miui/fmradio/IFmStateCallback;

.field protected mFrequency:I

.field private mHandlerThread:Landroid/os/HandlerThread;

.field protected mIsScanning:Z

.field private mWorkHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lcom/miui/fmradio/Utils;->getDefaultFrequency()I

    move-result v0

    iput v0, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mFrequency:I

    .line 18
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mIsScanning:Z

    .line 36
    new-instance v0, Lcom/miui/fmradio/AbsFmServiceManager$1;

    invoke-virtual {p0}, Lcom/miui/fmradio/AbsFmServiceManager;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/fmradio/AbsFmServiceManager$1;-><init>(Lcom/miui/fmradio/AbsFmServiceManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/fmradio/AbsFmServiceManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/AbsFmServiceManager;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/fmradio/AbsFmServiceManager;)Landroid/os/HandlerThread;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/AbsFmServiceManager;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    return-object v0
.end method

.method static synthetic access$102(Lcom/miui/fmradio/AbsFmServiceManager;Landroid/os/HandlerThread;)Landroid/os/HandlerThread;
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/AbsFmServiceManager;
    .param p1, "x1"    # Landroid/os/HandlerThread;

    .prologue
    .line 10
    iput-object p1, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    return-object p1
.end method


# virtual methods
.method public getCurrentFrequency()I
    .locals 1

    .prologue
    .line 145
    iget v0, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mFrequency:I

    return v0
.end method

.method protected getLooper()Landroid/os/Looper;
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 137
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "Fm:AbsFmServiceManager"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    .line 139
    :cond_1
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 140
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method protected handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 114
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract init()V
.end method

.method public initFmServiceManager(Lcom/miui/fmradio/IFmStateCallback;Lcom/miui/fmradio/IFmScanListener;)V
    .locals 0
    .param p1, "cb"    # Lcom/miui/fmradio/IFmStateCallback;
    .param p2, "l"    # Lcom/miui/fmradio/IFmScanListener;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmStateCallback:Lcom/miui/fmradio/IFmStateCallback;

    .line 156
    iput-object p2, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mFmScanListener:Lcom/miui/fmradio/IFmScanListener;

    .line 157
    invoke-virtual {p0}, Lcom/miui/fmradio/AbsFmServiceManager;->init()V

    .line 158
    return-void
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    .line 150
    iget-boolean v0, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mIsScanning:Z

    return v0
.end method

.method protected notifyAudioPathChanged(I)V
    .locals 4
    .param p1, "audiopath"    # I

    .prologue
    .line 194
    iget-object v1, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v2, 0x2718

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 195
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 196
    return-void
.end method

.method protected notifyFmRdsChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "rds"    # Ljava/lang/String;

    .prologue
    .line 199
    iget-object v1, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v2, 0x2719

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 200
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 201
    return-void
.end method

.method protected notifyFmScanCompleted(I)V
    .locals 4
    .param p1, "count"    # I

    .prologue
    .line 213
    iget-object v1, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v2, 0x271c

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 214
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 215
    return-void
.end method

.method protected notifyFmScanStarted()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x271a

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 205
    return-void
.end method

.method protected notifyFmSeekCompleted(I)V
    .locals 4
    .param p1, "frequency"    # I

    .prologue
    .line 189
    iget-object v1, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v2, 0x2717

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 190
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 191
    return-void
.end method

.method protected notifyFmStationScaned(I)V
    .locals 4
    .param p1, "freq"    # I

    .prologue
    .line 208
    iget-object v1, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v2, 0x271b

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 209
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 210
    return-void
.end method

.method protected notifyFmTuneCompleted(I)V
    .locals 4
    .param p1, "frequency"    # I

    .prologue
    .line 184
    iget-object v1, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v2, 0x2716

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 185
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 186
    return-void
.end method

.method protected notifyFmTurnedOff()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x2715

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 181
    return-void
.end method

.method protected notifyFmTurnedOn()V
    .locals 2

    .prologue
    .line 176
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x2714

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 177
    return-void
.end method

.method protected notifyServiceDestroyed()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x2712

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 168
    return-void
.end method

.method protected notifyServiceError(II)V
    .locals 3
    .param p1, "errCode"    # I
    .param p2, "what"    # I

    .prologue
    .line 171
    iget-object v1, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v2, 0x2713

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 172
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 173
    return-void
.end method

.method protected notifyServiceReady()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    const/16 v1, 0x2711

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 164
    return-void
.end method

.method protected sendMesage(IIILjava/lang/Object;)V
    .locals 4
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 126
    iget-object v1, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v1

    if-nez v1, :cond_1

    .line 127
    :cond_0
    const-string v1, "Fm:AbsFmServiceManager"

    const-string v2, "work thread not created"

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    :goto_0
    return-void

    .line 130
    :cond_1
    iget-object v1, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1}, Landroid/os/Handler;->removeMessages(I)V

    .line 131
    iget-object v1, p0, Lcom/miui/fmradio/AbsFmServiceManager;->mWorkHandler:Landroid/os/Handler;

    invoke-virtual {v1, p1, p2, p3, p4}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 132
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0
.end method
