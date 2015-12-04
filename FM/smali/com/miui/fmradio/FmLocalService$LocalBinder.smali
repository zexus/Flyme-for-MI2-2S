.class public Lcom/miui/fmradio/FmLocalService$LocalBinder;
.super Lcom/miui/fmradio/IFmLocalService$Stub;
.source "FmLocalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmLocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LocalBinder"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmradio/FmLocalService;


# direct methods
.method public constructor <init>(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-direct {p0}, Lcom/miui/fmradio/IFmLocalService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public abortScanStations()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 288
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->abortScanStations()V

    .line 289
    return-void
.end method

.method public cancelDelayedStop()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 263
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->cancelDelayedStop()V

    .line 264
    return-void
.end method

.method public getAudioPath()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 253
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->getAudioPath()I

    move-result v0

    return v0
.end method

.method public getCurrentFrequency()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 273
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->getCurrentFrequency()I

    move-result v0

    return v0
.end method

.method public getRecordingTimeInMillis()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 303
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->getRecordingTimeInMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method public initFmService()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 203
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->initFmService()V

    .line 204
    return-void
.end method

.method public isFmOn()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 223
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->isFmOn()Z

    move-result v0

    return v0
.end method

.method public isFmServiceReady()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 218
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->isFmServiceReady()Z

    move-result v0

    return v0
.end method

.method public isInSleepMode()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 268
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->isInSleepMode()Z

    move-result v0

    return v0
.end method

.method public isRecording()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 308
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->isRecording()Z

    move-result v0

    return v0
.end method

.method public isScanning()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 278
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->isScanning()Z

    move-result v0

    return v0
.end method

.method public registerFmStateListener(Lcom/miui/fmradio/IFmLocalServiceCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/miui/fmradio/IFmLocalServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0, p1}, Lcom/miui/fmradio/FmLocalService;->registerFmStateListener(Lcom/miui/fmradio/IFmLocalServiceCallback;)V

    .line 209
    return-void
.end method

.method public scanStations()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 283
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->scanStations()V

    .line 284
    return-void
.end method

.method public seekFm(Z)V
    .locals 1
    .param p1, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 238
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0, p1}, Lcom/miui/fmradio/FmLocalService;->seekFm(Z)V

    .line 239
    return-void
.end method

.method public setAudioPath(I)V
    .locals 1
    .param p1, "audioPath"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 248
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0, p1}, Lcom/miui/fmradio/FmLocalService;->setAudioPath(I)V

    .line 249
    return-void
.end method

.method public setDelayedStop(J)V
    .locals 1
    .param p1, "delayedMillis"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0, p1, p2}, Lcom/miui/fmradio/FmLocalService;->setDelayedStop(J)V

    .line 259
    return-void
.end method

.method public startRecord()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 293
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->startRecord()V

    .line 294
    return-void
.end method

.method public stopRecord()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 298
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->stopRecord()V

    .line 299
    return-void
.end method

.method public tuneFm(I)V
    .locals 1
    .param p1, "freq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 243
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0, p1}, Lcom/miui/fmradio/FmLocalService;->tuneFm(I)V

    .line 244
    return-void
.end method

.method public turnFmOff()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 233
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmLocalService;->turnFmOff()V

    .line 234
    return-void
.end method

.method public turnFmOn(I)V
    .locals 1
    .param p1, "freq"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0, p1}, Lcom/miui/fmradio/FmLocalService;->turnFmOn(I)V

    .line 229
    return-void
.end method

.method public unregisterFmStateListener(Lcom/miui/fmradio/IFmLocalServiceCallback;)V
    .locals 1
    .param p1, "cb"    # Lcom/miui/fmradio/IFmLocalServiceCallback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 213
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService$LocalBinder;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v0, p1}, Lcom/miui/fmradio/FmLocalService;->unregisterFmStateListener(Lcom/miui/fmradio/IFmLocalServiceCallback;)V

    .line 214
    return-void
.end method
