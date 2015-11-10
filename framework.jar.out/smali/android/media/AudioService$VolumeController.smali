.class public Landroid/media/AudioService$VolumeController;
.super Ljava/lang/Object;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VolumeController"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VolumeController"


# instance fields
.field private mController:Landroid/media/IVolumeController;

.field private mLongPressTimeout:I

.field private mNextLongPress:J

.field private mVisible:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5683
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;
    .locals 1
    .param p0, "controller"    # Landroid/media/IVolumeController;

    .prologue
    .line 5737
    if-nez p0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-interface {p0}, Landroid/media/IVolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 5733
    iget-object v0, p0, Landroid/media/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-static {v0}, Landroid/media/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public isSameBinder(Landroid/media/IVolumeController;)Z
    .locals 2
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .prologue
    .line 5729
    invoke-virtual {p0}, Landroid/media/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p1}, Landroid/media/AudioService$VolumeController;->binder(Landroid/media/IVolumeController;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public loadSettings(Landroid/content/ContentResolver;)V
    .locals 3
    .param p1, "cr"    # Landroid/content/ContentResolver;

    .prologue
    .line 5697
    const-string v0, "long_press_timeout"

    const/16 v1, 0x1f4

    const/4 v2, -0x2

    invoke-static {p1, v0, v1, v2}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    iput v0, p0, Landroid/media/AudioService$VolumeController;->mLongPressTimeout:I

    .line 5699
    return-void
.end method

.method public postDismiss()V
    .locals 3

    .prologue
    .line 5796
    iget-object v1, p0, Landroid/media/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v1, :cond_0

    .line 5803
    :goto_0
    return-void

    .line 5799
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v1}, Landroid/media/IVolumeController;->dismiss()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5800
    :catch_0
    move-exception v0

    .line 5801
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling dismiss"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public postDisplaySafeVolumeWarning(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 5746
    iget-object v1, p0, Landroid/media/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v1, :cond_0

    .line 5753
    :goto_0
    return-void

    .line 5749
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v1, p1}, Landroid/media/IVolumeController;->displaySafeVolumeWarning(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5750
    :catch_0
    move-exception v0

    .line 5751
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling displaySafeVolumeWarning"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public postMasterMuteChanged(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 5776
    iget-object v1, p0, Landroid/media/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v1, :cond_0

    .line 5783
    :goto_0
    return-void

    .line 5779
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v1, p1}, Landroid/media/IVolumeController;->masterMuteChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5780
    :catch_0
    move-exception v0

    .line 5781
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling masterMuteChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public postMasterVolumeChanged(I)V
    .locals 3
    .param p1, "flags"    # I

    .prologue
    .line 5766
    iget-object v1, p0, Landroid/media/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v1, :cond_0

    .line 5773
    :goto_0
    return-void

    .line 5769
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v1, p1}, Landroid/media/IVolumeController;->masterVolumeChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5770
    :catch_0
    move-exception v0

    .line 5771
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling masterVolumeChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public postVolumeChanged(II)V
    .locals 3
    .param p1, "streamType"    # I
    .param p2, "flags"    # I

    .prologue
    .line 5756
    iget-object v1, p0, Landroid/media/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v1, :cond_0

    .line 5763
    :goto_0
    return-void

    .line 5759
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v1, p1, p2}, Landroid/media/IVolumeController;->volumeChanged(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5760
    :catch_0
    move-exception v0

    .line 5761
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling volumeChanged"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setController(Landroid/media/IVolumeController;)V
    .locals 1
    .param p1, "controller"    # Landroid/media/IVolumeController;

    .prologue
    .line 5692
    iput-object p1, p0, Landroid/media/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    .line 5693
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/AudioService$VolumeController;->mVisible:Z

    .line 5694
    return-void
.end method

.method public setLayoutDirection(I)V
    .locals 3
    .param p1, "layoutDirection"    # I

    .prologue
    .line 5786
    iget-object v1, p0, Landroid/media/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-nez v1, :cond_0

    .line 5793
    :goto_0
    return-void

    .line 5789
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/media/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    invoke-interface {v1, p1}, Landroid/media/IVolumeController;->setLayoutDirection(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 5790
    :catch_0
    move-exception v0

    .line 5791
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "VolumeController"

    const-string v2, "Error calling setLayoutDirection"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setVisible(Z)V
    .locals 0
    .param p1, "visible"    # Z

    .prologue
    .line 5725
    iput-boolean p1, p0, Landroid/media/AudioService$VolumeController;->mVisible:Z

    .line 5726
    return-void
.end method

.method public suppressAdjustment(II)Z
    .locals 8
    .param p1, "resolvedStream"    # I
    .param p2, "flags"    # I

    .prologue
    const-wide/16 v6, 0x0

    .line 5702
    const/4 v2, 0x0

    .line 5703
    .local v2, "suppress":Z
    const/4 v3, 0x2

    if-ne p1, v3, :cond_1

    iget-object v3, p0, Landroid/media/AudioService$VolumeController;->mController:Landroid/media/IVolumeController;

    if-eqz v3, :cond_1

    .line 5704
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 5705
    .local v0, "now":J
    and-int/lit8 v3, p2, 0x1

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/media/AudioService$VolumeController;->mVisible:Z

    if-nez v3, :cond_2

    .line 5707
    iget-wide v4, p0, Landroid/media/AudioService$VolumeController;->mNextLongPress:J

    cmp-long v3, v4, v0

    if-gez v3, :cond_0

    .line 5708
    iget v3, p0, Landroid/media/AudioService$VolumeController;->mLongPressTimeout:I

    int-to-long v4, v3

    add-long/2addr v4, v0

    iput-wide v4, p0, Landroid/media/AudioService$VolumeController;->mNextLongPress:J

    .line 5710
    :cond_0
    const/4 v2, 0x1

    .line 5721
    .end local v0    # "now":J
    :cond_1
    :goto_0
    return v2

    .line 5711
    .restart local v0    # "now":J
    :cond_2
    iget-wide v4, p0, Landroid/media/AudioService$VolumeController;->mNextLongPress:J

    cmp-long v3, v4, v6

    if-lez v3, :cond_1

    .line 5712
    iget-wide v4, p0, Landroid/media/AudioService$VolumeController;->mNextLongPress:J

    cmp-long v3, v0, v4

    if-lez v3, :cond_3

    .line 5714
    iput-wide v6, p0, Landroid/media/AudioService$VolumeController;->mNextLongPress:J

    goto :goto_0

    .line 5717
    :cond_3
    const/4 v2, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 5742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VolumeController("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Landroid/media/AudioService$VolumeController;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ",mVisible="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Landroid/media/AudioService$VolumeController;->mVisible:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
