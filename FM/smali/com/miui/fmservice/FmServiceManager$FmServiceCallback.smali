.class Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;
.super Lcom/miui/fmservice/IFmServiceCallback$Stub;
.source "FmServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmservice/FmServiceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FmServiceCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmservice/FmServiceManager;


# direct methods
.method private constructor <init>(Lcom/miui/fmservice/FmServiceManager;)V
    .locals 0

    .prologue
    .line 232
    iput-object p1, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    invoke-direct {p0}, Lcom/miui/fmservice/IFmServiceCallback$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/fmservice/FmServiceManager;Lcom/miui/fmservice/FmServiceManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/fmservice/FmServiceManager;
    .param p2, "x1"    # Lcom/miui/fmservice/FmServiceManager$1;

    .prologue
    .line 232
    invoke-direct {p0, p1}, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;-><init>(Lcom/miui/fmservice/FmServiceManager;)V

    return-void
.end method


# virtual methods
.method public onAlternateFrequencyChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 267
    return-void
.end method

.method public onAudioUpdate(Z)V
    .locals 0
    .param p1, "bStereo"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 317
    return-void
.end method

.method public onDisabled()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 242
    return-void
.end method

.method public onEnabled()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 237
    return-void
.end method

.method public onMute(Z)V
    .locals 0
    .param p1, "bMuted"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 312
    return-void
.end method

.method public onProgramServiceChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 257
    return-void
.end method

.method public onRadioReset()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 247
    return-void
.end method

.method public onRadioTextChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 262
    return-void
.end method

.method public onRecordingStopped()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 335
    return-void
.end method

.method public onSearchComplete(I)V
    .locals 3
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 293
    invoke-static {p1}, Lcom/miui/fmradio/Utils;->toUnifiedFrequency(I)I

    move-result p1

    .line 294
    const-string v0, "Fm:FmServiceManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSearchComplete("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # setter for: Lcom/miui/fmservice/FmServiceManager;->mFrequency:I
    invoke-static {v0, p1}, Lcom/miui/fmservice/FmServiceManager;->access$502(Lcom/miui/fmservice/FmServiceManager;I)I

    .line 296
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # getter for: Lcom/miui/fmservice/FmServiceManager;->mIsScanning:Z
    invoke-static {v0}, Lcom/miui/fmservice/FmServiceManager;->access$800(Lcom/miui/fmservice/FmServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    const/4 v1, 0x0

    # setter for: Lcom/miui/fmservice/FmServiceManager;->mIsScanning:Z
    invoke-static {v0, v1}, Lcom/miui/fmservice/FmServiceManager;->access$802(Lcom/miui/fmservice/FmServiceManager;Z)Z

    .line 298
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # getter for: Lcom/miui/fmservice/FmServiceManager;->mScanedCount:I
    invoke-static {v1}, Lcom/miui/fmservice/FmServiceManager;->access$900(Lcom/miui/fmservice/FmServiceManager;)I

    move-result v1

    # invokes: Lcom/miui/fmservice/FmServiceManager;->notifyFmScanCompleted(I)V
    invoke-static {v0, v1}, Lcom/miui/fmservice/FmServiceManager;->access$1200(Lcom/miui/fmservice/FmServiceManager;I)V

    .line 302
    :goto_0
    return-void

    .line 300
    :cond_0
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # invokes: Lcom/miui/fmservice/FmServiceManager;->notifyFmSeekCompleted(I)V
    invoke-static {v0, p1}, Lcom/miui/fmservice/FmServiceManager;->access$1300(Lcom/miui/fmservice/FmServiceManager;I)V

    goto :goto_0
.end method

.method public onSearchListComplete()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 307
    return-void
.end method

.method public onSignalStrengthChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 272
    return-void
.end method

.method public onStationRDSSupported(Z)V
    .locals 4
    .param p1, "bRDSSupported"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 321
    const-string v1, ""

    .line 322
    .local v1, "rds":Ljava/lang/String;
    iget-object v2, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # getter for: Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;
    invoke-static {v2}, Lcom/miui/fmservice/FmServiceManager;->access$100(Lcom/miui/fmservice/FmServiceManager;)Lcom/miui/fmservice/IFmService;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 324
    :try_start_0
    iget-object v2, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # getter for: Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;
    invoke-static {v2}, Lcom/miui/fmservice/FmServiceManager;->access$100(Lcom/miui/fmservice/FmServiceManager;)Lcom/miui/fmservice/IFmService;

    move-result-object v2

    invoke-interface {v2}, Lcom/miui/fmservice/IFmService;->getRadioText()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 329
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # invokes: Lcom/miui/fmservice/FmServiceManager;->notifyFmRdsChanged(Ljava/lang/String;)V
    invoke-static {v2, v1}, Lcom/miui/fmservice/FmServiceManager;->access$1400(Lcom/miui/fmservice/FmServiceManager;Ljava/lang/String;)V

    .line 330
    return-void

    .line 325
    :catch_0
    move-exception v0

    .line 326
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "Fm:FmServiceManager"

    const-string v3, "Get radio text failed"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onTuneComplete(I)V
    .locals 2
    .param p1, "frequency"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 276
    invoke-static {p1}, Lcom/miui/fmradio/Utils;->toUnifiedFrequency(I)I

    move-result p1

    .line 277
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # setter for: Lcom/miui/fmservice/FmServiceManager;->mFrequency:I
    invoke-static {v0, p1}, Lcom/miui/fmservice/FmServiceManager;->access$502(Lcom/miui/fmservice/FmServiceManager;I)I

    .line 278
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # getter for: Lcom/miui/fmservice/FmServiceManager;->mIsStarting:Z
    invoke-static {v0}, Lcom/miui/fmservice/FmServiceManager;->access$600(Lcom/miui/fmservice/FmServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # invokes: Lcom/miui/fmservice/FmServiceManager;->notifyFmTurnedOn()V
    invoke-static {v0}, Lcom/miui/fmservice/FmServiceManager;->access$700(Lcom/miui/fmservice/FmServiceManager;)V

    .line 280
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    const/4 v1, 0x0

    # setter for: Lcom/miui/fmservice/FmServiceManager;->mIsStarting:Z
    invoke-static {v0, v1}, Lcom/miui/fmservice/FmServiceManager;->access$602(Lcom/miui/fmservice/FmServiceManager;Z)Z

    .line 289
    :goto_0
    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # getter for: Lcom/miui/fmservice/FmServiceManager;->mIsScanning:Z
    invoke-static {v0}, Lcom/miui/fmservice/FmServiceManager;->access$800(Lcom/miui/fmservice/FmServiceManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # ++operator for: Lcom/miui/fmservice/FmServiceManager;->mScanedCount:I
    invoke-static {v0}, Lcom/miui/fmservice/FmServiceManager;->access$904(Lcom/miui/fmservice/FmServiceManager;)I

    .line 284
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # invokes: Lcom/miui/fmservice/FmServiceManager;->notifyFmStationScaned(I)V
    invoke-static {v0, p1}, Lcom/miui/fmservice/FmServiceManager;->access$1000(Lcom/miui/fmservice/FmServiceManager;I)V

    goto :goto_0

    .line 286
    :cond_1
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;->this$0:Lcom/miui/fmservice/FmServiceManager;

    # invokes: Lcom/miui/fmservice/FmServiceManager;->notifyFmTuneCompleted(I)V
    invoke-static {v0, p1}, Lcom/miui/fmservice/FmServiceManager;->access$1100(Lcom/miui/fmservice/FmServiceManager;I)V

    goto :goto_0
.end method

.method public onTuneStatusChanged()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 252
    return-void
.end method
