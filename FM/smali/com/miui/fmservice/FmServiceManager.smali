.class public Lcom/miui/fmservice/FmServiceManager;
.super Lcom/miui/fmradio/AbsFmServiceManager;
.source "FmServiceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmservice/FmServiceManager$1;,
        Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;,
        Lcom/miui/fmservice/FmServiceManager$FmServiceConnection;
    }
.end annotation


# static fields
.field private static sInstance:Lcom/miui/fmservice/FmServiceManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFrequency:I

.field private mIsScanning:Z

.field private mIsStarting:Z

.field private mScanedCount:I

.field private mService:Lcom/miui/fmservice/IFmService;

.field private mServiceCallback:Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;

.field private mServiceConnection:Lcom/miui/fmservice/FmServiceManager$FmServiceConnection;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 31
    invoke-direct {p0}, Lcom/miui/fmradio/AbsFmServiceManager;-><init>()V

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/fmservice/FmServiceManager;->mIsScanning:Z

    .line 29
    iput-object v1, p0, Lcom/miui/fmservice/FmServiceManager;->mServiceConnection:Lcom/miui/fmservice/FmServiceManager$FmServiceConnection;

    .line 231
    new-instance v0, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;

    invoke-direct {v0, p0, v1}, Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;-><init>(Lcom/miui/fmservice/FmServiceManager;Lcom/miui/fmservice/FmServiceManager$1;)V

    iput-object v0, p0, Lcom/miui/fmservice/FmServiceManager;->mServiceCallback:Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;

    .line 32
    iput-object p1, p0, Lcom/miui/fmservice/FmServiceManager;->mContext:Landroid/content/Context;

    .line 33
    return-void
.end method

.method static synthetic access$100(Lcom/miui/fmservice/FmServiceManager;)Lcom/miui/fmservice/IFmService;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmservice/FmServiceManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/miui/fmservice/FmServiceManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmservice/FmServiceManager;
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/miui/fmservice/FmServiceManager;->notifyFmStationScaned(I)V

    return-void
.end method

.method static synthetic access$102(Lcom/miui/fmservice/FmServiceManager;Lcom/miui/fmservice/IFmService;)Lcom/miui/fmservice/IFmService;
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmservice/FmServiceManager;
    .param p1, "x1"    # Lcom/miui/fmservice/IFmService;

    .prologue
    .line 16
    iput-object p1, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    return-object p1
.end method

.method static synthetic access$1100(Lcom/miui/fmservice/FmServiceManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmservice/FmServiceManager;
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/miui/fmservice/FmServiceManager;->notifyFmTuneCompleted(I)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/fmservice/FmServiceManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmservice/FmServiceManager;
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/miui/fmservice/FmServiceManager;->notifyFmScanCompleted(I)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/fmservice/FmServiceManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmservice/FmServiceManager;
    .param p1, "x1"    # I

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/miui/fmservice/FmServiceManager;->notifyFmSeekCompleted(I)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/fmservice/FmServiceManager;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmservice/FmServiceManager;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 16
    invoke-virtual {p0, p1}, Lcom/miui/fmservice/FmServiceManager;->notifyFmRdsChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/miui/fmservice/FmServiceManager;)Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmservice/FmServiceManager;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager;->mServiceCallback:Lcom/miui/fmservice/FmServiceManager$FmServiceCallback;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/fmservice/FmServiceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmservice/FmServiceManager;

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/miui/fmservice/FmServiceManager;->notifyServiceReady()V

    return-void
.end method

.method static synthetic access$502(Lcom/miui/fmservice/FmServiceManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmservice/FmServiceManager;
    .param p1, "x1"    # I

    .prologue
    .line 16
    iput p1, p0, Lcom/miui/fmservice/FmServiceManager;->mFrequency:I

    return p1
.end method

.method static synthetic access$600(Lcom/miui/fmservice/FmServiceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmservice/FmServiceManager;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/miui/fmservice/FmServiceManager;->mIsStarting:Z

    return v0
.end method

.method static synthetic access$602(Lcom/miui/fmservice/FmServiceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmservice/FmServiceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/miui/fmservice/FmServiceManager;->mIsStarting:Z

    return p1
.end method

.method static synthetic access$700(Lcom/miui/fmservice/FmServiceManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmservice/FmServiceManager;

    .prologue
    .line 16
    invoke-virtual {p0}, Lcom/miui/fmservice/FmServiceManager;->notifyFmTurnedOn()V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/fmservice/FmServiceManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmservice/FmServiceManager;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/miui/fmservice/FmServiceManager;->mIsScanning:Z

    return v0
.end method

.method static synthetic access$802(Lcom/miui/fmservice/FmServiceManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmservice/FmServiceManager;
    .param p1, "x1"    # Z

    .prologue
    .line 16
    iput-boolean p1, p0, Lcom/miui/fmservice/FmServiceManager;->mIsScanning:Z

    return p1
.end method

.method static synthetic access$900(Lcom/miui/fmservice/FmServiceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmservice/FmServiceManager;

    .prologue
    .line 16
    iget v0, p0, Lcom/miui/fmservice/FmServiceManager;->mScanedCount:I

    return v0
.end method

.method static synthetic access$904(Lcom/miui/fmservice/FmServiceManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmservice/FmServiceManager;

    .prologue
    .line 16
    iget v0, p0, Lcom/miui/fmservice/FmServiceManager;->mScanedCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/miui/fmservice/FmServiceManager;->mScanedCount:I

    return v0
.end method

.method private bindService()V
    .locals 4

    .prologue
    .line 48
    new-instance v1, Lcom/miui/fmservice/FmServiceManager$FmServiceConnection;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/miui/fmservice/FmServiceManager$FmServiceConnection;-><init>(Lcom/miui/fmservice/FmServiceManager;Lcom/miui/fmservice/FmServiceManager$1;)V

    iput-object v1, p0, Lcom/miui/fmservice/FmServiceManager;->mServiceConnection:Lcom/miui/fmservice/FmServiceManager$FmServiceConnection;

    .line 49
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager;->mContext:Landroid/content/Context;

    const-class v2, Lcom/miui/fmservice/FmService;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 50
    .local v0, "service":Landroid/content/Intent;
    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 51
    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/miui/fmservice/FmServiceManager;->mServiceConnection:Lcom/miui/fmservice/FmServiceManager$FmServiceConnection;

    const/4 v3, 0x1

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 52
    const-string v1, "Fm:FmServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not bind service: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    :cond_0
    return-void
.end method

.method public static getFmServiceManager(Landroid/content/Context;)Lcom/miui/fmradio/IFmServiceManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    sget-object v0, Lcom/miui/fmservice/FmServiceManager;->sInstance:Lcom/miui/fmservice/FmServiceManager;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/miui/fmservice/FmServiceManager;

    invoke-direct {v0, p0}, Lcom/miui/fmservice/FmServiceManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/fmservice/FmServiceManager;->sInstance:Lcom/miui/fmservice/FmServiceManager;

    .line 39
    :cond_0
    sget-object v0, Lcom/miui/fmservice/FmServiceManager;->sInstance:Lcom/miui/fmservice/FmServiceManager;

    return-object v0
.end method

.method private unbindService()V
    .locals 2

    .prologue
    .line 57
    const-string v0, "Fm:FmServiceManager"

    const-string v1, "unbindService()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 58
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager;->mServiceConnection:Lcom/miui/fmservice/FmServiceManager$FmServiceConnection;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager;->mServiceConnection:Lcom/miui/fmservice/FmServiceManager$FmServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/fmservice/FmServiceManager;->mServiceConnection:Lcom/miui/fmservice/FmServiceManager$FmServiceConnection;

    .line 62
    :cond_0
    return-void
.end method


# virtual methods
.method public abortScanStation()V
    .locals 3

    .prologue
    .line 214
    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/fmservice/FmServiceManager;->mIsScanning:Z

    if-eqz v1, :cond_0

    .line 216
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    invoke-interface {v1}, Lcom/miui/fmservice/IFmService;->cancelSearch()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    :cond_0
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmServiceManager"

    const-string v2, "Cancel search failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public destroy()V
    .locals 2

    .prologue
    .line 225
    const-string v0, "Fm:FmServiceManager"

    const-string v1, "destroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-direct {p0}, Lcom/miui/fmservice/FmServiceManager;->unbindService()V

    .line 227
    const/4 v0, 0x0

    sput-object v0, Lcom/miui/fmservice/FmServiceManager;->sInstance:Lcom/miui/fmservice/FmServiceManager;

    .line 228
    invoke-virtual {p0}, Lcom/miui/fmservice/FmServiceManager;->notifyServiceDestroyed()V

    .line 229
    return-void
.end method

.method public getAudioPath()I
    .locals 4

    .prologue
    .line 174
    const/4 v0, 0x1

    .line 175
    .local v0, "audiopath":I
    iget-object v2, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    if-eqz v2, :cond_0

    .line 177
    :try_start_0
    iget-object v2, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    invoke-interface {v2}, Lcom/miui/fmservice/IFmService;->isSpeakerEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    .line 178
    const/4 v0, 0x2

    .line 184
    :cond_0
    :goto_0
    return v0

    .line 180
    :catch_0
    move-exception v1

    .line 181
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "Fm:FmServiceManager"

    const-string v3, "Could not get audio path"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public getCurrentFrequency()I
    .locals 1

    .prologue
    .line 189
    iget v0, p0, Lcom/miui/fmservice/FmServiceManager;->mFrequency:I

    return v0
.end method

.method protected handleMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 342
    const/4 v2, 0x0

    .line 343
    .local v2, "handle":Z
    iget-object v4, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    if-nez v4, :cond_0

    .line 344
    const-string v4, "Fm:FmServiceManager"

    const-string v5, "Service not bound"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v3, v2

    .line 359
    .end local v2    # "handle":Z
    .local v3, "handle":I
    :goto_0
    return v3

    .line 348
    .end local v3    # "handle":I
    .restart local v2    # "handle":Z
    :cond_0
    iget v4, p1, Landroid/os/Message;->what:I

    packed-switch v4, :pswitch_data_0

    :goto_1
    move v3, v2

    .line 359
    .restart local v3    # "handle":I
    goto :goto_0

    .line 350
    .end local v3    # "handle":I
    :pswitch_0
    const/4 v2, 0x1

    .line 351
    iget v1, p1, Landroid/os/Message;->arg1:I

    .line 353
    .local v1, "frequency":I
    :try_start_0
    iget-object v4, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    invoke-static {v1}, Lcom/miui/fmradio/Utils;->toServiceUsedFrequency(I)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/miui/fmservice/IFmService;->tune(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 354
    :catch_0
    move-exception v0

    .line 355
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "Fm:FmServiceManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not tune fm frequency: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/Exception;

    invoke-direct {v6}, Ljava/lang/Exception;-><init>()V

    invoke-static {v4, v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 348
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method protected init()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/miui/fmservice/FmServiceManager;->bindService()V

    .line 45
    return-void
.end method

.method public isFmOn()Z
    .locals 3

    .prologue
    .line 124
    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    if-eqz v1, :cond_0

    .line 126
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    invoke-interface {v1}, Lcom/miui/fmservice/IFmService;->isFmOn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 131
    :goto_0
    return v1

    .line 127
    :catch_0
    move-exception v0

    .line 128
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmServiceManager"

    const-string v2, "Get fm on off state failed."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 131
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isFmServiceReady()Z
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isScanning()Z
    .locals 1

    .prologue
    .line 194
    iget-object v0, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/fmservice/FmServiceManager;->mIsScanning:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public scanStations()V
    .locals 3

    .prologue
    .line 199
    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/miui/fmservice/FmServiceManager;->mIsScanning:Z

    if-nez v1, :cond_0

    .line 201
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/miui/fmservice/IFmService;->scan(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 202
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/fmservice/FmServiceManager;->mIsScanning:Z

    .line 203
    const/4 v1, 0x0

    iput v1, p0, Lcom/miui/fmservice/FmServiceManager;->mScanedCount:I

    .line 204
    invoke-virtual {p0}, Lcom/miui/fmservice/FmServiceManager;->notifyFmScanStarted()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    :cond_0
    :goto_0
    return-void

    .line 206
    :catch_0
    move-exception v0

    .line 207
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmServiceManager"

    const-string v2, "scanStation failed!"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public seekFm(Z)Z
    .locals 4
    .param p1, "forward"    # Z

    .prologue
    .line 142
    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    if-eqz v1, :cond_0

    .line 144
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    invoke-interface {v1, p1}, Lcom/miui/fmservice/IFmService;->seek(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 149
    :goto_0
    return v1

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not seek forward: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/Exception;

    invoke-direct {v3}, Ljava/lang/Exception;-><init>()V

    invoke-static {v1, v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 149
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setAudioPath(I)V
    .locals 4
    .param p1, "audiopath"    # I

    .prologue
    .line 154
    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    if-eqz v1, :cond_0

    .line 156
    packed-switch p1, :pswitch_data_0

    .line 168
    :goto_0
    invoke-virtual {p0}, Lcom/miui/fmservice/FmServiceManager;->getAudioPath()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/miui/fmservice/FmServiceManager;->notifyAudioPathChanged(I)V

    .line 170
    :cond_0
    return-void

    .line 158
    :pswitch_0
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lcom/miui/fmservice/IFmService;->enableSpeaker(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 165
    :catch_0
    move-exception v0

    .line 166
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmServiceManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Set audio path failed audiopath: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 161
    .end local v0    # "e":Landroid/os/RemoteException;
    :pswitch_1
    :try_start_1
    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    const/4 v2, 0x1

    invoke-interface {v1, v2}, Lcom/miui/fmservice/IFmService;->enableSpeaker(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 156
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public tuneFm(I)Z
    .locals 3
    .param p1, "frequency"    # I

    .prologue
    const/4 v2, 0x1

    .line 136
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v2, p1, v0, v1}, Lcom/miui/fmservice/FmServiceManager;->sendMesage(IIILjava/lang/Object;)V

    .line 137
    return v2
.end method

.method public turnFmOff()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x0

    .line 107
    const-string v1, "Fm:FmServiceManager"

    const-string v2, "turnFmOff()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    if-eqz v1, :cond_0

    .line 110
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    invoke-interface {v1}, Lcom/miui/fmservice/IFmService;->fmOff()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    invoke-virtual {p0}, Lcom/miui/fmservice/FmServiceManager;->notifyFmTurnedOff()V

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/miui/fmservice/FmServiceManager;->notifyServiceError(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmServiceManager"

    const-string v2, "Could not turn fm off."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 117
    invoke-virtual {p0, v4, v3}, Lcom/miui/fmservice/FmServiceManager;->notifyServiceError(II)V

    goto :goto_0
.end method

.method public turnFmOn(I)V
    .locals 6
    .param p1, "frequency"    # I

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 89
    const-string v4, "Fm:FmServiceManager"

    const-string v5, "turnFmOn()"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    iget-object v4, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    if-eqz v4, :cond_1

    .line 92
    const/4 v4, 0x1

    :try_start_0
    iput-boolean v4, p0, Lcom/miui/fmservice/FmServiceManager;->mIsStarting:Z

    .line 93
    iget-object v4, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    invoke-interface {v4}, Lcom/miui/fmservice/IFmService;->fmOn()Z

    move-result v4

    if-eqz v4, :cond_2

    iget-object v4, p0, Lcom/miui/fmservice/FmServiceManager;->mService:Lcom/miui/fmservice/IFmService;

    invoke-static {p1}, Lcom/miui/fmradio/Utils;->toServiceUsedFrequency(I)I

    move-result v5

    invoke-interface {v4, v5}, Lcom/miui/fmservice/IFmService;->tune(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 94
    .local v1, "success":Z
    :goto_0
    if-nez v1, :cond_0

    .line 95
    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v4, v5}, Lcom/miui/fmservice/FmServiceManager;->notifyServiceError(II)V

    .line 97
    :cond_0
    iput p1, p0, Lcom/miui/fmservice/FmServiceManager;->mFrequency:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 103
    .end local v1    # "success":Z
    :cond_1
    :goto_1
    return-void

    :cond_2
    move v1, v3

    .line 93
    goto :goto_0

    .line 98
    :catch_0
    move-exception v0

    .line 99
    .local v0, "e":Landroid/os/RemoteException;
    const-string v4, "Fm:FmServiceManager"

    const-string v5, "Could not turn fm on."

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 100
    invoke-virtual {p0, v2, v3}, Lcom/miui/fmservice/FmServiceManager;->notifyServiceError(II)V

    goto :goto_1
.end method
