.class public Lcom/milink/api/v1/McsDelegate;
.super Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;
.source "McsDelegate.java"


# instance fields
.field private mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 10
    invoke-direct {p0}, Lcom/milink/api/v1/aidl/IMcsDelegate$Stub;-><init>()V

    .line 12
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    .line 13
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    return-void
.end method

.method static synthetic access$000(Lcom/milink/api/v1/McsDelegate;)Lcom/milink/api/v1/MilinkClientManagerDelegate;
    .locals 1
    .param p0, "x0"    # Lcom/milink/api/v1/McsDelegate;

    .prologue
    .line 10
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    return-object v0
.end method


# virtual methods
.method public onConnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 21
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    .line 30
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDelegate$1;

    invoke-direct {v1, p0}, Lcom/milink/api/v1/McsDelegate$1;-><init>(Lcom/milink/api/v1/McsDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onConnectedFailed()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 34
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    .line 43
    :goto_0
    return-void

    .line 37
    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDelegate$2;

    invoke-direct {v1, p0}, Lcom/milink/api/v1/McsDelegate$2;-><init>(Lcom/milink/api/v1/McsDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onDisconnected()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 47
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    .line 56
    :goto_0
    return-void

    .line 50
    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDelegate$3;

    invoke-direct {v1, p0}, Lcom/milink/api/v1/McsDelegate$3;-><init>(Lcom/milink/api/v1/McsDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onLoading()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 60
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    .line 69
    :goto_0
    return-void

    .line 63
    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDelegate$4;

    invoke-direct {v1, p0}, Lcom/milink/api/v1/McsDelegate$4;-><init>(Lcom/milink/api/v1/McsDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onNextAudio(Z)V
    .locals 2
    .param p1, "isAuto"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 125
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    .line 134
    :goto_0
    return-void

    .line 128
    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDelegate$9;

    invoke-direct {v1, p0, p1}, Lcom/milink/api/v1/McsDelegate$9;-><init>(Lcom/milink/api/v1/McsDelegate;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onPaused()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 99
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 102
    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDelegate$7;

    invoke-direct {v1, p0}, Lcom/milink/api/v1/McsDelegate$7;-><init>(Lcom/milink/api/v1/McsDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onPlaying()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    .line 82
    :goto_0
    return-void

    .line 76
    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDelegate$5;

    invoke-direct {v1, p0}, Lcom/milink/api/v1/McsDelegate$5;-><init>(Lcom/milink/api/v1/McsDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onPrevAudio(Z)V
    .locals 2
    .param p1, "isAuto"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 138
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDelegate$10;

    invoke-direct {v1, p0, p1}, Lcom/milink/api/v1/McsDelegate$10;-><init>(Lcom/milink/api/v1/McsDelegate;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onStopped()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    .line 95
    :goto_0
    return-void

    .line 89
    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDelegate$6;

    invoke-direct {v1, p0}, Lcom/milink/api/v1/McsDelegate$6;-><init>(Lcom/milink/api/v1/McsDelegate;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onVolume(I)V
    .locals 2
    .param p1, "volume"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 112
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    if-nez v0, :cond_0

    .line 121
    :goto_0
    return-void

    .line 115
    :cond_0
    iget-object v0, p0, Lcom/milink/api/v1/McsDelegate;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/milink/api/v1/McsDelegate$8;

    invoke-direct {v1, p0, p1}, Lcom/milink/api/v1/McsDelegate$8;-><init>(Lcom/milink/api/v1/McsDelegate;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public setDelegate(Lcom/milink/api/v1/MilinkClientManagerDelegate;)V
    .locals 0
    .param p1, "delegate"    # Lcom/milink/api/v1/MilinkClientManagerDelegate;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/milink/api/v1/McsDelegate;->mDelegate:Lcom/milink/api/v1/MilinkClientManagerDelegate;

    .line 17
    return-void
.end method
