.class public Lcom/miui/fmradio/FmLocalService;
.super Landroid/app/Service;
.source "FmLocalService.java"

# interfaces
.implements Lcom/miui/fmradio/IFmScanListener;
.implements Lcom/miui/fmradio/IFmStateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/FmLocalService$AudioFocusListener;,
        Lcom/miui/fmradio/FmLocalService$HeadsetListener;,
        Lcom/miui/fmradio/FmLocalService$MediaButtonListener;,
        Lcom/miui/fmradio/FmLocalService$LocalBinder;
    }
.end annotation


# static fields
.field public static final RECORD_DIRECTORY_PATH:Ljava/lang/String;

.field private static sIsInstantiated:Z


# instance fields
.field private mActivityManager:Landroid/app/ActivityManager;

.field private mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

.field private mAudioManager:Landroid/media/AudioManager;

.field private mAudioPath:I

.field private mDelayStopRunnable:Ljava/lang/Runnable;

.field private mFmManager:Lcom/miui/fmradio/IFmServiceManager;

.field private mFmRecorder:Lcom/miui/fmradio/FmRecorder;

.field private mFmRecorderListener:Lcom/miui/fmradio/FmRecorder$FmRecorderListener;

.field private mFmState:I

.field private mFmStateListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lcom/miui/fmradio/IFmLocalServiceCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHeadsetListener:Lcom/miui/fmradio/FmLocalService$HeadsetListener;

.field private mIsSeeking:Z

.field private mIsTuning:Z

.field private mLocalBinder:Lcom/miui/fmradio/FmLocalService$LocalBinder;

.field private mMediaButtonListener:Lcom/miui/fmradio/FmLocalService$MediaButtonListener;

.field private mNotificationManager:Landroid/app/NotificationManager;

.field private mPhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mRemoteControlClient:Landroid/media/RemoteControlClient;

.field private mSleepAtPhoneTime:J

.field private mStablePhoneStateListener:Landroid/telephony/PhoneStateListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;

.field private mTurnOffAtPhoneTime:J

.field private mTurnOffByMediaButton:Z

.field private mTurnOffByUser:Z

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 51
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageMiuiDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sound_recorder/fm_rec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/fmradio/FmLocalService;->RECORD_DIRECTORY_PATH:Ljava/lang/String;

    .line 102
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/fmradio/FmLocalService;->sIsInstantiated:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 45
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 57
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    .line 63
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    .line 108
    new-instance v0, Lcom/miui/fmradio/FmLocalService$1;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmLocalService$1;-><init>(Lcom/miui/fmradio/FmLocalService;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    .line 195
    new-instance v0, Lcom/miui/fmradio/FmLocalService$LocalBinder;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmLocalService$LocalBinder;-><init>(Lcom/miui/fmradio/FmLocalService;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mLocalBinder:Lcom/miui/fmradio/FmLocalService$LocalBinder;

    .line 984
    new-instance v0, Lcom/miui/fmradio/FmLocalService$2;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmLocalService$2;-><init>(Lcom/miui/fmradio/FmLocalService;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mDelayStopRunnable:Ljava/lang/Runnable;

    .line 1147
    new-instance v0, Lcom/miui/fmradio/FmLocalService$3;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmLocalService$3;-><init>(Lcom/miui/fmradio/FmLocalService;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorderListener:Lcom/miui/fmradio/FmRecorder$FmRecorderListener;

    .line 1398
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1399
    new-instance v0, Lcom/miui/fmradio/FmLocalService$4;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmLocalService$4;-><init>(Lcom/miui/fmradio/FmLocalService;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mStablePhoneStateListener:Landroid/telephony/PhoneStateListener;

    return-void
.end method

.method private abandonAudioFoucus()V
    .locals 2

    .prologue
    .line 1344
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    if-eqz v0, :cond_0

    .line 1345
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 1346
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    .line 1348
    :cond_0
    return-void
.end method

.method static synthetic access$000(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->notifyServiceReady()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->notifyFmTurnedOn()V

    return-void
.end method

.method static synthetic access$1000(Lcom/miui/fmradio/FmLocalService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyFmScanCompleted(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/fmradio/FmLocalService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyFmRecordStarted(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/miui/fmradio/FmLocalService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/miui/fmradio/FmLocalService;->notifyFmRecordError(II)V

    return-void
.end method

.method static synthetic access$1300(Lcom/miui/fmradio/FmLocalService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->showRecordNotification(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/miui/fmradio/FmLocalService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyFmRecordStoped(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1500(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->notifyFmSleepModeChange()V

    return-void
.end method

.method static synthetic access$1600(Lcom/miui/fmradio/FmLocalService;Z)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyHeadsetStateChanged(Z)V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/fmradio/FmLocalService;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 45
    iget-wide v0, p0, Lcom/miui/fmradio/FmLocalService;->mTurnOffAtPhoneTime:J

    return-wide v0
.end method

.method static synthetic access$1800(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->notifyServiceClean()V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/fmradio/FmLocalService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->checkProgressForeground()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->notifyFmTurnedOff()V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/fmradio/FmLocalService;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$2202(Lcom/miui/fmradio/FmLocalService;J)J
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # J

    .prologue
    .line 45
    iput-wide p1, p0, Lcom/miui/fmradio/FmLocalService;->mSleepAtPhoneTime:J

    return-wide p1
.end method

.method static synthetic access$2400(Lcom/miui/fmradio/FmLocalService;)Lcom/miui/fmradio/IFmServiceManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    return-object v0
.end method

.method static synthetic access$2602(Lcom/miui/fmradio/FmLocalService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/miui/fmradio/FmLocalService;->mTurnOffByUser:Z

    return p1
.end method

.method static synthetic access$2702(Lcom/miui/fmradio/FmLocalService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # Z

    .prologue
    .line 45
    iput-boolean p1, p0, Lcom/miui/fmradio/FmLocalService;->mTurnOffByMediaButton:Z

    return p1
.end method

.method static synthetic access$2800(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->unregisterFmPhoneStateListener()V

    return-void
.end method

.method static synthetic access$2900(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->unregisterFmMediaButtonListener()V

    return-void
.end method

.method static synthetic access$300(Lcom/miui/fmradio/FmLocalService;II)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1, p2}, Lcom/miui/fmradio/FmLocalService;->notifyFmServiceError(II)V

    return-void
.end method

.method static synthetic access$3000(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->abandonAudioFoucus()V

    return-void
.end method

.method static synthetic access$3100(Lcom/miui/fmradio/FmLocalService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->isClientActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$3300(Lcom/miui/fmradio/FmLocalService;)Lcom/miui/fmradio/FmLocalService$AudioFocusListener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/fmradio/FmLocalService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyFmTuneCompleted(I)V

    return-void
.end method

.method static synthetic access$500(Lcom/miui/fmradio/FmLocalService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyFmSeekCompleted(I)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/fmradio/FmLocalService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyFmAudioPathChanged(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/miui/fmradio/FmLocalService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyFmRdsChanged(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$800(Lcom/miui/fmradio/FmLocalService;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->notifyFmScanStarted()V

    return-void
.end method

.method static synthetic access$900(Lcom/miui/fmradio/FmLocalService;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p1, "x1"    # I

    .prologue
    .line 45
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyFmStationScaned(I)V

    return-void
.end method

.method private cancelFmNotification()V
    .locals 1

    .prologue
    .line 1144
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmLocalService;->stopForeground(Z)V

    .line 1145
    return-void
.end method

.method private checkProgressForeground()Z
    .locals 6

    .prologue
    .line 378
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mActivityManager:Landroid/app/ActivityManager;

    invoke-virtual {v4}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    .line 379
    .local v3, "pInfos":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    const/4 v1, 0x1

    .line 380
    .local v1, "inForeground":Z
    if-nez v3, :cond_1

    .line 381
    const/4 v1, 0x0

    .line 390
    :cond_0
    :goto_0
    return v1

    .line 383
    :cond_1
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 384
    .local v2, "info":Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget-object v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 385
    iget v4, v2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    const/16 v5, 0x64

    if-ne v4, v5, :cond_3

    const/4 v1, 0x1

    .line 386
    :goto_1
    goto :goto_0

    .line 385
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private checkSysState()Z
    .locals 1

    .prologue
    .line 829
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->isInCall()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private declared-synchronized destroyFmService()V
    .locals 3

    .prologue
    const/4 v2, 0x6

    .line 358
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-nez v0, :cond_0

    .line 359
    const-string v0, "Fm:FmLocalService"

    const-string v1, "Service has already been destroyed, skip!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :goto_0
    monitor-exit p0

    return-void

    .line 363
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 364
    const-string v0, "Fm:FmLocalService"

    const-string v1, "Service initing!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 358
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 368
    :cond_1
    :try_start_2
    iget v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    if-ne v0, v2, :cond_2

    .line 369
    const-string v0, "Fm:FmLocalService"

    const-string v1, "Destroying, skip!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 373
    :cond_2
    const/4 v0, 0x6

    iput v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    .line 374
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method private getAudioPathInner()I
    .locals 1

    .prologue
    .line 974
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v0, :cond_0

    .line 975
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->getAudioPath()I

    move-result v0

    .line 977
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private isClientActive()Z
    .locals 1

    .prologue
    .line 1077
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->getRegisteredCallbackCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isInCall()Z
    .locals 1

    .prologue
    .line 1395
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyFmAudioPathChanged(I)V
    .locals 6
    .param p1, "audiopath"    # I

    .prologue
    .line 502
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 503
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 504
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 506
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmAudioPathChanged(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 504
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 507
    :catch_0
    move-exception v1

    .line 508
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmAudioPathChanged Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 512
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 511
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 512
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 513
    return-void
.end method

.method private notifyFmRdsChanged(Ljava/lang/String;)V
    .locals 6
    .param p1, "rds"    # Ljava/lang/String;

    .prologue
    .line 516
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 517
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 518
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 520
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmRdsChanged(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 521
    :catch_0
    move-exception v1

    .line 522
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmRdsChanged Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 526
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 525
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 526
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 527
    return-void
.end method

.method private notifyFmRecordError(II)V
    .locals 6
    .param p1, "errCode"    # I
    .param p2, "what"    # I

    .prologue
    .line 601
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 602
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 603
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 605
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1, p2}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmRecordError(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 603
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 606
    :catch_0
    move-exception v1

    .line 607
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmRecordError Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 611
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 610
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 611
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 612
    return-void
.end method

.method private notifyFmRecordStarted(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 587
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 588
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 589
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 591
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmRecordStarted(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 589
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 592
    :catch_0
    move-exception v1

    .line 593
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmRecordStarted Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 597
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 596
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 597
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 598
    return-void
.end method

.method private notifyFmRecordStoped(Ljava/lang/String;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 615
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 616
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 617
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 619
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmRecordStop(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 617
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 620
    :catch_0
    move-exception v1

    .line 621
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmRecordStop Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 625
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 624
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 625
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 626
    return-void
.end method

.method private notifyFmScanCompleted(I)V
    .locals 6
    .param p1, "count"    # I

    .prologue
    .line 573
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 574
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 575
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 577
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onScanComplete(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 575
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 578
    :catch_0
    move-exception v1

    .line 579
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onScanComplete failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 583
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 582
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 583
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 584
    return-void
.end method

.method private notifyFmScanStarted()V
    .locals 6

    .prologue
    .line 544
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 545
    :try_start_0
    const-string v3, "Fm:FmLocalService"

    const-string v5, "nofityFmScanStated"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 547
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 549
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onScanStart()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 550
    :catch_0
    move-exception v1

    .line 551
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onScanStart failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 555
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 554
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 555
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 556
    return-void
.end method

.method private notifyFmSeekCompleted(I)V
    .locals 6
    .param p1, "frequency"    # I

    .prologue
    .line 488
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 489
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 490
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 492
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmSeekCompleted(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 490
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 493
    :catch_0
    move-exception v1

    .line 494
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmSeekCompleted Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 498
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 497
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 498
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 499
    return-void
.end method

.method private notifyFmServiceError(II)V
    .locals 6
    .param p1, "errCode"    # I
    .param p2, "what"    # I

    .prologue
    .line 530
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 531
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 532
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 534
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1, p2}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmServiceError(II)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 535
    :catch_0
    move-exception v1

    .line 536
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmServiceError Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 540
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 539
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 540
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 541
    return-void
.end method

.method private notifyFmSleepModeChange()V
    .locals 10

    .prologue
    .line 629
    iget-object v5, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v5

    .line 630
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 631
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 633
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    iget-wide v6, p0, Lcom/miui/fmradio/FmLocalService;->mSleepAtPhoneTime:J

    const-wide/16 v8, 0x0

    cmp-long v4, v6, v8

    if-lez v4, :cond_0

    const/4 v4, 0x1

    :goto_1
    invoke-interface {v3, v4}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmSleepModeChange(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 631
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 633
    :cond_0
    const/4 v4, 0x0

    goto :goto_1

    .line 634
    :catch_0
    move-exception v1

    .line 635
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v4, "Callback onFmSleepModeChnge Failed"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2

    .line 639
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 638
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_1
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 639
    monitor-exit v5
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 640
    return-void
.end method

.method private notifyFmStationScaned(I)V
    .locals 6
    .param p1, "freq"    # I

    .prologue
    .line 559
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 560
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 561
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 563
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onStationScaned(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 561
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 564
    :catch_0
    move-exception v1

    .line 565
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onStationScaned"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 569
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 568
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 569
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 570
    return-void
.end method

.method private notifyFmTuneCompleted(I)V
    .locals 6
    .param p1, "frequency"    # I

    .prologue
    .line 474
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 475
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 476
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 478
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmTuneCompleted(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 476
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 479
    :catch_0
    move-exception v1

    .line 480
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmTuneCompleted Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 484
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 483
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 484
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 485
    return-void
.end method

.method private notifyFmTurnedOff()V
    .locals 6

    .prologue
    .line 460
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 461
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 462
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 464
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmTurnedOff()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 465
    :catch_0
    move-exception v1

    .line 466
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmTurnedOff Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 470
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 469
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 470
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 471
    return-void
.end method

.method private notifyFmTurnedOn()V
    .locals 6

    .prologue
    .line 446
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 447
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 448
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 450
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmTurnedOn()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 448
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 451
    :catch_0
    move-exception v1

    .line 452
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmTurnedOn Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 456
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 455
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 456
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 457
    return-void
.end method

.method private notifyHeadsetStateChanged(Z)V
    .locals 6
    .param p1, "headset"    # Z

    .prologue
    .line 643
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 644
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 645
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 647
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3, p1}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onHeadsetStateChanged(Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 645
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 648
    :catch_0
    move-exception v1

    .line 649
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmHeadsetStateChanged Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 653
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 652
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 653
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 654
    return-void
.end method

.method private notifyServiceClean()V
    .locals 6

    .prologue
    .line 658
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 659
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 660
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 662
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onServiceClean()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 660
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 663
    :catch_0
    move-exception v1

    .line 664
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onServiceClean Failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 668
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 667
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 668
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 669
    return-void
.end method

.method private notifyServiceReady()V
    .locals 6

    .prologue
    .line 432
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v4

    .line 433
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->beginBroadcast()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 434
    .local v0, "cnt":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 436
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lcom/miui/fmradio/IFmLocalServiceCallback;

    invoke-interface {v3}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmServiceReady()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 434
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 437
    :catch_0
    move-exception v1

    .line 438
    .local v1, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string v3, "Fm:FmLocalService"

    const-string v5, "Callback onFmServiceReady failed"

    invoke-static {v3, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 442
    .end local v0    # "cnt":I
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v2    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 441
    .restart local v0    # "cnt":I
    .restart local v2    # "i":I
    :cond_0
    :try_start_3
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v3}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 442
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 443
    return-void
.end method

.method private registerFmMediaButtonListener()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 1173
    iget-object v6, p0, Lcom/miui/fmradio/FmLocalService;->mMediaButtonListener:Lcom/miui/fmradio/FmLocalService$MediaButtonListener;

    if-nez v6, :cond_0

    .line 1174
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1175
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v6, "com.miui.fmradio.action.MEDIA_BUTTON"

    invoke-virtual {v0, v6}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1176
    new-instance v6, Lcom/miui/fmradio/FmLocalService$MediaButtonListener;

    const/4 v7, 0x0

    invoke-direct {v6, p0, v7}, Lcom/miui/fmradio/FmLocalService$MediaButtonListener;-><init>(Lcom/miui/fmradio/FmLocalService;Lcom/miui/fmradio/FmLocalService$1;)V

    iput-object v6, p0, Lcom/miui/fmradio/FmLocalService;->mMediaButtonListener:Lcom/miui/fmradio/FmLocalService$MediaButtonListener;

    .line 1177
    iget-object v6, p0, Lcom/miui/fmradio/FmLocalService;->mMediaButtonListener:Lcom/miui/fmradio/FmLocalService$MediaButtonListener;

    invoke-virtual {p0, v6, v0}, Lcom/miui/fmradio/FmLocalService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1179
    new-instance v2, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/miui/fmradio/FmMediaButtonIntentReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v2, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1181
    .local v2, "fmRadio":Landroid/content/ComponentName;
    iget-object v6, p0, Lcom/miui/fmradio/FmLocalService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v6, v2}, Landroid/media/AudioManager;->registerMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1183
    new-instance v5, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->getPackageName()Ljava/lang/String;

    move-result-object v6

    const-class v7, Lcom/miui/fmradio/FmMediaButtonIntentReceiver;

    invoke-virtual {v7}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1184
    .local v5, "rec":Landroid/content/ComponentName;
    new-instance v3, Landroid/content/Intent;

    const-string v6, "android.intent.action.MEDIA_BUTTON"

    invoke-direct {v3, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1185
    .local v3, "i":Landroid/content/Intent;
    invoke-virtual {v3, v5}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1186
    invoke-static {p0, v8, v3, v8}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1187
    .local v4, "pi":Landroid/app/PendingIntent;
    new-instance v6, Landroid/media/RemoteControlClient;

    invoke-direct {v6, v4}, Landroid/media/RemoteControlClient;-><init>(Landroid/app/PendingIntent;)V

    iput-object v6, p0, Lcom/miui/fmradio/FmLocalService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 1188
    iget-object v6, p0, Lcom/miui/fmradio/FmLocalService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v7, p0, Lcom/miui/fmradio/FmLocalService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v6, v7}, Landroid/media/AudioManager;->registerRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 1189
    const/16 v1, 0x9d

    .line 1194
    .local v1, "flags":I
    iget-object v6, p0, Lcom/miui/fmradio/FmLocalService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v6, v1}, Landroid/media/RemoteControlClient;->setTransportControlFlags(I)V

    .line 1196
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "flags":I
    .end local v2    # "fmRadio":Landroid/content/ComponentName;
    .end local v3    # "i":Landroid/content/Intent;
    .end local v4    # "pi":Landroid/app/PendingIntent;
    .end local v5    # "rec":Landroid/content/ComponentName;
    :cond_0
    return-void
.end method

.method private registerFmPhoneStateListener()V
    .locals 3

    .prologue
    .line 1381
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-nez v0, :cond_0

    .line 1382
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mStablePhoneStateListener:Landroid/telephony/PhoneStateListener;

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1383
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/16 v2, 0x20

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1385
    :cond_0
    return-void
.end method

.method private registerHeadsetListener()V
    .locals 4

    .prologue
    .line 1275
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService;->mHeadsetListener:Lcom/miui/fmradio/FmLocalService$HeadsetListener;

    if-nez v2, :cond_0

    .line 1276
    new-instance v2, Lcom/miui/fmradio/FmLocalService$HeadsetListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/fmradio/FmLocalService$HeadsetListener;-><init>(Lcom/miui/fmradio/FmLocalService;Lcom/miui/fmradio/FmLocalService$1;)V

    iput-object v2, p0, Lcom/miui/fmradio/FmLocalService;->mHeadsetListener:Lcom/miui/fmradio/FmLocalService$HeadsetListener;

    .line 1278
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1279
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1280
    const-string v2, "android.media.AUDIO_BECOMING_NOISY"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1281
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService;->mHeadsetListener:Lcom/miui/fmradio/FmLocalService$HeadsetListener;

    invoke-virtual {p0, v2, v0}, Lcom/miui/fmradio/FmLocalService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v1

    .line 1283
    .local v1, "intent":Landroid/content/Intent;
    if-nez v1, :cond_1

    const/4 v2, 0x2

    :goto_0
    iput v2, p0, Lcom/miui/fmradio/FmLocalService;->mAudioPath:I

    .line 1285
    .end local v0    # "filter":Landroid/content/IntentFilter;
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_0
    return-void

    .line 1283
    .restart local v0    # "filter":Landroid/content/IntentFilter;
    .restart local v1    # "intent":Landroid/content/Intent;
    :cond_1
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private requestAudioFocus()V
    .locals 4

    .prologue
    .line 1336
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    if-nez v0, :cond_0

    .line 1337
    new-instance v0, Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/fmradio/FmLocalService$AudioFocusListener;-><init>(Lcom/miui/fmradio/FmLocalService;Lcom/miui/fmradio/FmLocalService$1;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    .line 1338
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    const/4 v2, 0x3

    const/4 v3, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 1341
    :cond_0
    return-void
.end method

.method private setAudioPathInner(I)V
    .locals 1
    .param p1, "audiopath"    # I

    .prologue
    .line 953
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v0, :cond_0

    .line 954
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0, p1}, Lcom/miui/fmradio/IFmServiceManager;->setAudioPath(I)V

    .line 956
    :cond_0
    return-void
.end method

.method private showFmNotification(IZ)V
    .locals 11
    .param p1, "freq"    # I
    .param p2, "tick"    # Z

    .prologue
    const/high16 v10, 0x7f0a0000

    const v9, 0x7f02002b

    const/4 v8, 0x0

    .line 1081
    iget v5, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 1103
    :goto_0
    return-void

    .line 1084
    :cond_0
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/miui/fmradio/FmActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 1085
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v5, 0x4000000

    invoke-virtual {v2, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1086
    invoke-static {p0, v8, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1088
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    const v5, 0x7f0a0025

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {p1}, Lcom/miui/fmradio/Utils;->formatFrequency(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/miui/fmradio/FmLocalService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1090
    .local v1, "contentText":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1091
    .local v4, "tickerText":Ljava/lang/String;
    if-eqz p2, :cond_1

    .line 1092
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v10}, Lcom/miui/fmradio/FmLocalService;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1095
    :cond_1
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1096
    .local v0, "builder":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v9}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1097
    const-wide/16 v6, 0x0

    invoke-virtual {v0, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1098
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1099
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1100
    invoke-virtual {p0, v10}, Lcom/miui/fmradio/FmLocalService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1101
    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1102
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v5

    invoke-virtual {p0, v9, v5}, Lcom/miui/fmradio/FmLocalService;->startForeground(ILandroid/app/Notification;)V

    goto :goto_0
.end method

.method private showRecordNotification(Ljava/lang/String;)V
    .locals 10
    .param p1, "filePath"    # Ljava/lang/String;

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 1106
    const-string v5, "type_fm"

    invoke-static {p0, v5}, Lmiui/provider/Recordings;->getNotificationUnreadCount(Landroid/content/Context;Ljava/lang/String;)I

    move-result v5

    add-int/lit8 v1, v5, 0x1

    .line 1107
    .local v1, "cntUnread":I
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1108
    .local v3, "intent":Landroid/content/Intent;
    const-string v5, "com.android.soundrecorder"

    const-string v6, "com.android.soundrecorder.RecordPreviewActivity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1109
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v5, v3, v9}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v5

    if-nez v5, :cond_2

    .line 1110
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    .line 1111
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v5, "com.android.fileexplorer"

    const-string v6, "com.android.fileexplorer.FileExplorerTabActivity"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1112
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1113
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "file://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Lcom/miui/fmradio/FmLocalService;->RECORD_DIRECTORY_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1117
    :cond_0
    :goto_0
    const/high16 v5, 0x10000000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1118
    const-string v5, "android.intent.category.DEFAULT"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 1119
    const-string v5, "android.intent.action.PICK"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1120
    const-string v5, "extra_dirpath"

    new-instance v6, Ljava/io/File;

    invoke-direct {v6, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getParent()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1121
    const-string v5, "extra_rectype"

    const-string v6, "type_fm"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1122
    const/high16 v5, 0x8000000

    invoke-static {p0, v9, v3, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    .line 1124
    .local v4, "pi":Landroid/app/PendingIntent;
    new-instance v0, Landroid/app/Notification$Builder;

    invoke-direct {v0, p0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 1125
    .local v0, "b":Landroid/app/Notification$Builder;
    invoke-virtual {v0, v7}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    .line 1126
    const v5, 0x7f02002b

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    .line 1127
    const v5, 0x7f0a001a

    invoke-virtual {p0, v5}, Lcom/miui/fmradio/FmLocalService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1128
    const v5, 0x7f0a001b

    invoke-virtual {p0, v5}, Lcom/miui/fmradio/FmLocalService;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1129
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f090001

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v7, v9

    invoke-virtual {v5, v6, v1, v7}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 1130
    invoke-virtual {v0, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1131
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-virtual {v0, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    .line 1132
    new-instance v3, Landroid/content/Intent;

    .end local v3    # "intent":Landroid/content/Intent;
    const-string v5, "com.android.soundrecorder.action.CANCEL_NOTIFICATION"

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1133
    .restart local v3    # "intent":Landroid/content/Intent;
    const-string v5, "extra_rectype"

    const-string v6, "type_fm"

    invoke-virtual {v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1134
    invoke-static {p0, v9, v3, v9}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 1135
    .local v2, "deleteIntent":Landroid/app/PendingIntent;
    invoke-virtual {v0, v2}, Landroid/app/Notification$Builder;->setDeleteIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    .line 1137
    iget-object v5, p0, Lcom/miui/fmradio/FmLocalService;->mNotificationManager:Landroid/app/NotificationManager;

    const v6, 0x7f02002c

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 1138
    sget-boolean v5, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v5, :cond_1

    .line 1139
    const-string v5, "type_fm"

    const/4 v6, 0x0

    invoke-static {p0, v5, v1, v6}, Lmiui/provider/Recordings;->setNotificationUnreadCount(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;)V

    .line 1141
    :cond_1
    return-void

    .line 1114
    .end local v0    # "b":Landroid/app/Notification$Builder;
    .end local v2    # "deleteIntent":Landroid/app/PendingIntent;
    .end local v4    # "pi":Landroid/app/PendingIntent;
    :cond_2
    if-ne v1, v7, :cond_0

    .line 1115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fmrec://"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    goto/16 :goto_0
.end method

.method private unregisterFmMediaButtonListener()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1199
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mMediaButtonListener:Lcom/miui/fmradio/FmLocalService$MediaButtonListener;

    if-eqz v1, :cond_0

    .line 1200
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mMediaButtonListener:Lcom/miui/fmradio/FmLocalService$MediaButtonListener;

    invoke-virtual {p0, v1}, Lcom/miui/fmradio/FmLocalService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1201
    iput-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mMediaButtonListener:Lcom/miui/fmradio/FmLocalService$MediaButtonListener;

    .line 1203
    new-instance v0, Landroid/content/ComponentName;

    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-class v2, Lcom/miui/fmradio/FmMediaButtonIntentReceiver;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1205
    .local v0, "fmRadio":Landroid/content/ComponentName;
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1, v0}, Landroid/media/AudioManager;->unregisterMediaButtonEventReceiver(Landroid/content/ComponentName;)V

    .line 1208
    .end local v0    # "fmRadio":Landroid/content/ComponentName;
    :cond_0
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v1, :cond_1

    .line 1209
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mAudioManager:Landroid/media/AudioManager;

    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v1, v2}, Landroid/media/AudioManager;->unregisterRemoteControlClient(Landroid/media/RemoteControlClient;)V

    .line 1210
    iput-object v3, p0, Lcom/miui/fmradio/FmLocalService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    .line 1212
    :cond_1
    return-void
.end method

.method private unregisterFmPhoneStateListener()V
    .locals 3

    .prologue
    .line 1388
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    if-eqz v0, :cond_0

    .line 1389
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/telephony/TelephonyManager;->listen(Landroid/telephony/PhoneStateListener;I)V

    .line 1391
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mPhoneStateListener:Landroid/telephony/PhoneStateListener;

    .line 1392
    return-void
.end method

.method private unregisterHeadsetListener()V
    .locals 1

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHeadsetListener:Lcom/miui/fmradio/FmLocalService$HeadsetListener;

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHeadsetListener:Lcom/miui/fmradio/FmLocalService$HeadsetListener;

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmLocalService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 1290
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHeadsetListener:Lcom/miui/fmradio/FmLocalService$HeadsetListener;

    .line 1292
    :cond_0
    return-void
.end method

.method private updateRemoteControlInfo()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 1215
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v4, :cond_1

    .line 1216
    iget-object v4, p0, Lcom/miui/fmradio/FmLocalService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v4, v9}, Landroid/media/RemoteControlClient;->editMetadata(Z)Landroid/media/RemoteControlClient$MetadataEditor;

    move-result-object v1

    .line 1217
    .local v1, "e":Landroid/media/RemoteControlClient$MetadataEditor;
    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->getCurrentFrequency(Landroid/content/Context;)I

    move-result v2

    .line 1218
    .local v2, "freq":I
    invoke-static {p0, v2}, Lcom/miui/fmradio/StationItemHelper;->getStationItemByFreq(Landroid/content/Context;I)Lcom/miui/fmradio/StationItem;

    move-result-object v3

    .line 1219
    .local v3, "item":Lcom/miui/fmradio/StationItem;
    const/4 v4, 0x7

    const v5, 0x7f0a0013

    new-array v6, v9, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v2}, Lcom/miui/fmradio/Utils;->formatFrequency(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {p0, v5, v6}, Lcom/miui/fmradio/FmLocalService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 1220
    if-eqz v3, :cond_0

    .line 1221
    iget-object v4, v3, Lcom/miui/fmradio/StationItem;->label:Ljava/lang/String;

    invoke-virtual {v1, v9, v4}, Landroid/media/RemoteControlClient$MetadataEditor;->putString(ILjava/lang/String;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 1223
    :cond_0
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02001d

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1224
    .local v0, "b":Landroid/graphics/Bitmap;
    const/16 v4, 0x64

    invoke-virtual {v1, v4, v0}, Landroid/media/RemoteControlClient$MetadataEditor;->putBitmap(ILandroid/graphics/Bitmap;)Landroid/media/RemoteControlClient$MetadataEditor;

    .line 1225
    invoke-virtual {v1}, Landroid/media/RemoteControlClient$MetadataEditor;->apply()V

    .line 1227
    .end local v0    # "b":Landroid/graphics/Bitmap;
    .end local v1    # "e":Landroid/media/RemoteControlClient$MetadataEditor;
    .end local v2    # "freq":I
    .end local v3    # "item":Lcom/miui/fmradio/StationItem;
    :cond_1
    return-void
.end method


# virtual methods
.method public abortScanStations()V
    .locals 1

    .prologue
    .line 1071
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v0, :cond_0

    .line 1072
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->abortScanStation()V

    .line 1074
    :cond_0
    return-void
.end method

.method public cancelDelayedStop()V
    .locals 2

    .prologue
    .line 1005
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mDelayStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 1006
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/fmradio/FmLocalService;->mSleepAtPhoneTime:J

    .line 1007
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1008
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1011
    :cond_0
    return-void
.end method

.method public getAudioPath()I
    .locals 1

    .prologue
    .line 981
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v0}, Landroid/media/AudioManager;->isWiredHeadsetOn()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioPath:I

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x2

    goto :goto_0
.end method

.method public getCurrentFrequency()I
    .locals 1

    .prologue
    .line 1018
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->getCurrentFrequency()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRecordingTimeInMillis()J
    .locals 2

    .prologue
    .line 1053
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorder:Lcom/miui/fmradio/FmRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorder:Lcom/miui/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmRecorder;->getRecordingTimeInMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public declared-synchronized initFmService()V
    .locals 3

    .prologue
    .line 342
    monitor-enter p0

    :try_start_0
    iget v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 343
    const-string v0, "Fm:FmLocalService"

    const-string v1, "Destroying, pending init!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 355
    :goto_0
    monitor-exit p0

    return-void

    .line 347
    :cond_0
    :try_start_1
    iget v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    if-eqz v0, :cond_1

    .line 348
    const-string v0, "Fm:FmLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Do not init service mFmState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 342
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 352
    :cond_1
    const/4 v0, 0x1

    :try_start_2
    iput v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    .line 353
    invoke-static {p0}, Lcom/miui/fmservice/FmServiceManager;->getFmServiceManager(Landroid/content/Context;)Lcom/miui/fmradio/IFmServiceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    .line 354
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0, p0, p0}, Lcom/miui/fmradio/IFmServiceManager;->initFmServiceManager(Lcom/miui/fmradio/IFmStateCallback;Lcom/miui/fmradio/IFmScanListener;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public isFmOn()Z
    .locals 1

    .prologue
    .line 837
    monitor-enter p0

    .line 838
    :try_start_0
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 839
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isFmServiceReady()Z
    .locals 1

    .prologue
    .line 833
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->isFmServiceReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInSleepMode()Z
    .locals 4

    .prologue
    .line 1014
    iget-wide v0, p0, Lcom/miui/fmradio/FmLocalService;->mSleepAtPhoneTime:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorder:Lcom/miui/fmradio/FmRecorder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorder:Lcom/miui/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmRecorder;->isRecording()Z

    move-result v0

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
    .line 1061
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->isScanning()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mLocalBinder:Lcom/miui/fmradio/FmLocalService$LocalBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 328
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 329
    new-instance v0, Lcom/miui/fmradio/FmRecorder;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmRecorder;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorder:Lcom/miui/fmradio/FmRecorder;

    .line 331
    const-string v0, "audio"

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmLocalService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioManager:Landroid/media/AudioManager;

    .line 332
    const-string v0, "phone"

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmLocalService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 333
    const-string v0, "notification"

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmLocalService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/NotificationManager;

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mNotificationManager:Landroid/app/NotificationManager;

    .line 334
    const-string v0, "power"

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmLocalService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mPowerManager:Landroid/os/PowerManager;

    .line 335
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 336
    const-string v0, "activity"

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmLocalService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mActivityManager:Landroid/app/ActivityManager;

    .line 337
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->registerHeadsetListener()V

    .line 338
    sput-boolean v2, Lcom/miui/fmradio/FmLocalService;->sIsInstantiated:Z

    .line 339
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 401
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 402
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->unregisterHeadsetListener()V

    .line 403
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->unregisterFmPhoneStateListener()V

    .line 404
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->unregisterFmMediaButtonListener()V

    .line 405
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->abandonAudioFoucus()V

    .line 406
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/fmradio/FmLocalService;->sIsInstantiated:Z

    .line 407
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->kill()V

    .line 408
    return-void
.end method

.method public onFmAudioPathChanged(I)V
    .locals 3
    .param p1, "audiopath"    # I

    .prologue
    .line 796
    iput p1, p0, Lcom/miui/fmradio/FmLocalService;->mAudioPath:I

    .line 797
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 798
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 799
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 800
    return-void
.end method

.method public onFmRdsChanged(Ljava/lang/String;)V
    .locals 3
    .param p1, "rds"    # Ljava/lang/String;

    .prologue
    .line 804
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 805
    .local v0, "msg":Landroid/os/Message;
    if-nez p1, :cond_0

    const-string p1, ""

    .end local p1    # "rds":Ljava/lang/String;
    :cond_0
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 806
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 807
    return-void
.end method

.method public onFmSeekCompleted(I)V
    .locals 3
    .param p1, "frequency"    # I

    .prologue
    .line 783
    invoke-static {p1}, Lcom/miui/fmradio/Utils;->isValidFrequency(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 784
    invoke-static {p0, p1}, Lcom/miui/fmradio/StationItemHelper;->setCurrentFrequency(Landroid/content/Context;I)V

    .line 785
    const/4 v1, 0x1

    invoke-direct {p0, p1, v1}, Lcom/miui/fmradio/FmLocalService;->showFmNotification(IZ)V

    .line 786
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/fmradio/FmLocalService;->mIsSeeking:Z

    .line 787
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 788
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 789
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 791
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->updateRemoteControlInfo()V

    .line 792
    return-void
.end method

.method public declared-synchronized onFmServiceDestroyed()V
    .locals 1

    .prologue
    .line 691
    monitor-enter p0

    const/4 v0, 0x0

    :try_start_0
    iput-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    .line 692
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    .line 693
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->isClientActive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 694
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->initFmService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 698
    :goto_0
    monitor-exit p0

    return-void

    .line 696
    :cond_0
    :try_start_1
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->stopSelf()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 691
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onFmServiceError(II)V
    .locals 4
    .param p1, "errCode"    # I
    .param p2, "what"    # I

    .prologue
    .line 757
    const-string v1, "Fm:FmLocalService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onFmServiceError errCode = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " what = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->isClientActive()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 759
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 760
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 761
    iput p2, v0, Landroid/os/Message;->arg2:I

    .line 762
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 766
    .end local v0    # "msg":Landroid/os/Message;
    :goto_0
    return-void

    .line 764
    :cond_0
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->destroyFmService()V

    goto :goto_0
.end method

.method public declared-synchronized onFmServiceReady()V
    .locals 2

    .prologue
    .line 677
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x3

    :goto_0
    iput v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    .line 678
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->isClientActive()Z

    move-result v0

    if-nez v0, :cond_1

    .line 679
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->destroyFmService()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 683
    :goto_1
    monitor-exit p0

    return-void

    .line 677
    :cond_0
    const/4 v0, 0x5

    goto :goto_0

    .line 681
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 677
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public onFmTuneCompleted(I)V
    .locals 3
    .param p1, "frequency"    # I

    .prologue
    const/4 v2, 0x0

    .line 770
    invoke-static {p1}, Lcom/miui/fmradio/Utils;->isValidFrequency(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 771
    invoke-static {p0, p1}, Lcom/miui/fmradio/StationItemHelper;->setCurrentFrequency(Landroid/content/Context;I)V

    .line 772
    invoke-direct {p0, p1, v2}, Lcom/miui/fmradio/FmLocalService;->showFmNotification(IZ)V

    .line 773
    iput-boolean v2, p0, Lcom/miui/fmradio/FmLocalService;->mIsTuning:Z

    .line 774
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 775
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 776
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 778
    .end local v0    # "msg":Landroid/os/Message;
    :cond_0
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->updateRemoteControlInfo()V

    .line 779
    return-void
.end method

.method public onFmTurnedOff()V
    .locals 4

    .prologue
    .line 730
    const/4 v0, 0x5

    iput v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    .line 731
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/fmradio/FmLocalService;->mTurnOffAtPhoneTime:J

    .line 732
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->cancelFmNotification()V

    .line 733
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->stopRecord()V

    .line 734
    iget-boolean v0, p0, Lcom/miui/fmradio/FmLocalService;->mTurnOffByUser:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/miui/fmradio/FmLocalService;->mTurnOffByMediaButton:Z

    if-nez v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x11

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 738
    :cond_0
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->isClientActive()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 739
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 746
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 747
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 750
    :cond_2
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_3

    .line 751
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 753
    :cond_3
    return-void

    .line 740
    :cond_4
    iget-boolean v0, p0, Lcom/miui/fmradio/FmLocalService;->mTurnOffByUser:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/miui/fmradio/FmLocalService;->mTurnOffByMediaButton:Z

    if-nez v0, :cond_1

    .line 743
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->destroyFmService()V

    goto :goto_0
.end method

.method public onFmTurnedOn()V
    .locals 5

    .prologue
    const/4 v4, 0x3

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 702
    const-string v0, "Fm:FmLocalService"

    const-string v1, "onFmTurnedOn"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 704
    iput v4, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    .line 705
    iput-boolean v2, p0, Lcom/miui/fmradio/FmLocalService;->mIsSeeking:Z

    .line 706
    iput-boolean v2, p0, Lcom/miui/fmradio/FmLocalService;->mIsTuning:Z

    .line 707
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->checkSysState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioFocusListener:Lcom/miui/fmradio/FmLocalService$AudioFocusListener;

    # getter for: Lcom/miui/fmradio/FmLocalService$AudioFocusListener;->mAudioState:I
    invoke-static {v0}, Lcom/miui/fmradio/FmLocalService$AudioFocusListener;->access$2100(Lcom/miui/fmradio/FmLocalService$AudioFocusListener;)I

    move-result v0

    if-eq v0, v3, :cond_2

    .line 709
    :cond_0
    invoke-virtual {p0, v2, v2}, Lcom/miui/fmradio/FmLocalService;->turnFmOff(ZZ)V

    .line 726
    :cond_1
    :goto_0
    return-void

    .line 712
    :cond_2
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->registerFmMediaButtonListener()V

    .line 713
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->registerFmPhoneStateListener()V

    .line 714
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->getCurrentFrequency()I

    move-result v0

    invoke-direct {p0, v0, v3}, Lcom/miui/fmradio/FmLocalService;->showFmNotification(IZ)V

    .line 715
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->requestAudioFocus()V

    .line 716
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 718
    iget v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioPath:I

    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->getAudioPathInner()I

    move-result v1

    if-eq v0, v1, :cond_3

    .line 719
    iget v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioPath:I

    invoke-direct {p0, v0}, Lcom/miui/fmradio/FmLocalService;->setAudioPathInner(I)V

    .line 722
    :cond_3
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    if-eqz v0, :cond_1

    .line 723
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mRemoteControlClient:Landroid/media/RemoteControlClient;

    invoke-virtual {v0, v4}, Landroid/media/RemoteControlClient;->setPlaybackState(I)V

    .line 724
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->updateRemoteControlInfo()V

    goto :goto_0
.end method

.method public onScanComplete(I)V
    .locals 3
    .param p1, "count"    # I

    .prologue
    .line 823
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 824
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 825
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 826
    return-void
.end method

.method public onScanStart()V
    .locals 2

    .prologue
    .line 811
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 812
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 396
    const/4 v0, 0x2

    return v0
.end method

.method public onStationScaned(I)V
    .locals 3
    .param p1, "freq"    # I

    .prologue
    .line 816
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/16 v2, 0xa

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 817
    .local v0, "msg":Landroid/os/Message;
    iput p1, v0, Landroid/os/Message;->arg1:I

    .line 818
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 819
    return-void
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 319
    const-string v0, "Fm:FmLocalService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->isClientActive()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->isFmOn()Z

    move-result v0

    if-nez v0, :cond_0

    iget v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 321
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->destroyFmService()V

    .line 323
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public registerFmStateListener(Lcom/miui/fmradio/IFmLocalServiceCallback;)V
    .locals 3
    .param p1, "l"    # Lcom/miui/fmradio/IFmLocalServiceCallback;

    .prologue
    .line 411
    iget-object v2, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v2

    .line 412
    :try_start_0
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 413
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 415
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v1}, Lcom/miui/fmradio/IFmServiceManager;->isFmServiceReady()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 416
    const-string v1, "Fm:FmLocalService"

    const-string v2, "registerFmStateListener onFmServiceReady()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    :try_start_1
    invoke-interface {p1}, Lcom/miui/fmradio/IFmLocalServiceCallback;->onFmServiceReady()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 423
    :cond_0
    :goto_0
    return-void

    .line 413
    :catchall_0
    move-exception v1

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v1

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "Fm:FmLocalService"

    const-string v2, "Callback onFmServiceReady failed"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public scanStations()V
    .locals 1

    .prologue
    .line 1065
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v0, :cond_0

    .line 1066
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->scanStations()V

    .line 1068
    :cond_0
    return-void
.end method

.method public seekFm(Z)V
    .locals 5
    .param p1, "forward"    # Z

    .prologue
    const/4 v4, 0x4

    .line 915
    iget v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 930
    :cond_0
    :goto_0
    return-void

    .line 919
    :cond_1
    iget-boolean v1, p0, Lcom/miui/fmradio/FmLocalService;->mIsSeeking:Z

    if-eqz v1, :cond_2

    .line 920
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 921
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 922
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 926
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v1, :cond_0

    .line 927
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/fmradio/FmLocalService;->mIsSeeking:Z

    .line 928
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v1, p1}, Lcom/miui/fmradio/IFmServiceManager;->seekFm(Z)Z

    goto :goto_0
.end method

.method public setAudioPath(I)V
    .locals 2
    .param p1, "audiopath"    # I

    .prologue
    const/4 v1, 0x2

    .line 960
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHeadsetListener:Lcom/miui/fmradio/FmLocalService$HeadsetListener;

    iget-boolean v0, v0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->mIsHeadsetPluged:Z

    if-nez v0, :cond_1

    .line 961
    iget v0, p0, Lcom/miui/fmradio/FmLocalService;->mAudioPath:I

    if-eq v0, v1, :cond_0

    .line 962
    iput v1, p0, Lcom/miui/fmradio/FmLocalService;->mAudioPath:I

    .line 963
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyFmAudioPathChanged(I)V

    .line 971
    :cond_0
    :goto_0
    return-void

    .line 965
    :cond_1
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 966
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->setAudioPathInner(I)V

    goto :goto_0

    .line 968
    :cond_2
    iput p1, p0, Lcom/miui/fmradio/FmLocalService;->mAudioPath:I

    .line 969
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService;->notifyFmAudioPathChanged(I)V

    goto :goto_0
.end method

.method public setDelayedStop(J)V
    .locals 3
    .param p1, "delayedMillis"    # J

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 994
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/miui/fmradio/FmLocalService;->mSleepAtPhoneTime:J

    .line 995
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mDelayStopRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 997
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_0

    .line 998
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1001
    :cond_0
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xf

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 1002
    return-void
.end method

.method public startRecord()V
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 1022
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->isFmOn()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->isRecording()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1044
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    iget-object v5, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorder:Lcom/miui/fmradio/FmRecorder;

    if-nez v5, :cond_2

    .line 1027
    new-instance v5, Lcom/miui/fmradio/FmRecorder;

    invoke-direct {v5, p0}, Lcom/miui/fmradio/FmRecorder;-><init>(Landroid/content/Context;)V

    iput-object v5, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorder:Lcom/miui/fmradio/FmRecorder;

    .line 1030
    :cond_2
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x1106000b

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v4

    .line 1031
    .local v4, "quality":I
    new-instance v0, Ljava/io/File;

    sget-object v5, Lcom/miui/fmradio/FmLocalService;->RECORD_DIRECTORY_PATH:Ljava/lang/String;

    invoke-direct {v0, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1032
    .local v0, "dir":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1033
    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v5

    if-nez v5, :cond_3

    .line 1034
    invoke-direct {p0, v8, v7}, Lcom/miui/fmradio/FmLocalService;->notifyFmRecordError(II)V

    goto :goto_0

    .line 1038
    :cond_3
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->getCurrentFrequency()I

    move-result v2

    .line 1039
    .local v2, "freq":I
    const v5, 0x7f0a0013

    new-array v6, v7, [Ljava/lang/Object;

    invoke-static {v2}, Lcom/miui/fmradio/Utils;->formatFrequency(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {p0, v5, v6}, Lcom/miui/fmradio/FmLocalService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 1040
    .local v3, "name":Ljava/lang/String;
    new-instance v1, Ljava/io/File;

    const-string v5, ".mp3"

    invoke-static {p0, v3, v5}, Lmiui/util/RecordingNameUtils;->generatFMRecordName(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v1, v0, v5}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1042
    .local v1, "file":Ljava/io/File;
    iget-object v5, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorder:Lcom/miui/fmradio/FmRecorder;

    iget-object v6, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorderListener:Lcom/miui/fmradio/FmRecorder$FmRecorderListener;

    invoke-virtual {v5, v6}, Lcom/miui/fmradio/FmRecorder;->setRecorderListener(Lcom/miui/fmradio/FmRecorder$FmRecorderListener;)V

    .line 1043
    iget-object v5, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorder:Lcom/miui/fmradio/FmRecorder;

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/miui/fmradio/FmRecorder;->startRecord(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 1

    .prologue
    .line 1047
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1048
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmRecorder:Lcom/miui/fmradio/FmRecorder;

    invoke-virtual {v0}, Lcom/miui/fmradio/FmRecorder;->stopRecord()V

    .line 1050
    :cond_0
    return-void
.end method

.method public tuneFm(I)V
    .locals 5
    .param p1, "frequency"    # I

    .prologue
    const/4 v4, 0x4

    .line 933
    iget v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    .line 950
    :cond_0
    :goto_0
    return-void

    .line 937
    :cond_1
    iget-boolean v1, p0, Lcom/miui/fmradio/FmLocalService;->mIsSeeking:Z

    if-eqz v1, :cond_2

    .line 938
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 939
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 940
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 944
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v1, :cond_0

    .line 945
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->getCurrentFrequency()I

    move-result v1

    if-eq v1, p1, :cond_0

    .line 946
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/fmradio/FmLocalService;->mIsTuning:Z

    .line 947
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v1, p1}, Lcom/miui/fmradio/IFmServiceManager;->tuneFm(I)Z

    goto :goto_0
.end method

.method public turnFmOff()V
    .locals 2

    .prologue
    .line 878
    monitor-enter p0

    .line 879
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p0, v0, v1}, Lcom/miui/fmradio/FmLocalService;->turnFmOff(ZZ)V

    .line 880
    monitor-exit p0

    .line 881
    return-void

    .line 880
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public turnFmOff(ZZ)V
    .locals 3
    .param p1, "fromUser"    # Z
    .param p2, "fromMediaButton"    # Z

    .prologue
    .line 884
    monitor-enter p0

    .line 885
    :try_start_0
    iget v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 886
    const-string v0, "Fm:FmLocalService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "FM is not on, skip. mFmState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    monitor-exit p0

    .line 912
    :goto_0
    return-void

    .line 889
    :cond_0
    iput-boolean p1, p0, Lcom/miui/fmradio/FmLocalService;->mTurnOffByUser:Z

    .line 890
    iput-boolean p2, p0, Lcom/miui/fmradio/FmLocalService;->mTurnOffByMediaButton:Z

    .line 892
    if-eqz p1, :cond_1

    .line 894
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->unregisterFmPhoneStateListener()V

    .line 897
    :cond_1
    if-nez p2, :cond_2

    .line 898
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->unregisterFmMediaButtonListener()V

    .line 901
    :cond_2
    if-eqz p1, :cond_3

    .line 902
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->abandonAudioFoucus()V

    .line 905
    :cond_3
    invoke-virtual {p0}, Lcom/miui/fmradio/FmLocalService;->stopRecord()V

    .line 907
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v0, :cond_4

    .line 908
    const/4 v0, 0x4

    iput v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    .line 909
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v0}, Lcom/miui/fmradio/IFmServiceManager;->turnFmOff()V

    .line 911
    :cond_4
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public turnFmOn()V
    .locals 1

    .prologue
    .line 843
    monitor-enter p0

    .line 844
    :try_start_0
    invoke-static {p0}, Lcom/miui/fmradio/StationItemHelper;->getCurrentFrequency(Landroid/content/Context;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/miui/fmradio/FmLocalService;->turnFmOn(I)V

    .line 845
    monitor-exit p0

    .line 846
    return-void

    .line 845
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public turnFmOn(I)V
    .locals 5
    .param p1, "frequency"    # I

    .prologue
    const/4 v2, 0x5

    .line 849
    monitor-enter p0

    .line 850
    :try_start_0
    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->checkSysState()Z

    move-result v1

    if-nez v1, :cond_0

    .line 851
    const-string v1, "Fm:FmLocalService"

    const-string v2, "turnFmOn but state error, skip!"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 852
    monitor-exit p0

    .line 875
    :goto_0
    return-void

    .line 855
    :cond_0
    iget v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    if-eq v1, v2, :cond_1

    .line 856
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 857
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 858
    .local v0, "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 859
    monitor-exit p0

    goto :goto_0

    .line 874
    .end local v0    # "msg":Landroid/os/Message;
    :catchall_0
    move-exception v1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 862
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    if-eqz v1, :cond_3

    .line 863
    const/4 v1, 0x2

    iput v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmState:I

    .line 864
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHeadsetListener:Lcom/miui/fmradio/FmLocalService$HeadsetListener;

    iget-boolean v1, v1, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->mIsHeadsetPluged:Z

    if-nez v1, :cond_2

    .line 865
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 866
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    const/4 v3, 0x5

    const/4 v4, 0x2

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    .line 867
    .restart local v0    # "msg":Landroid/os/Message;
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 869
    .end local v0    # "msg":Landroid/os/Message;
    :cond_2
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmManager:Lcom/miui/fmradio/IFmServiceManager;

    invoke-interface {v1, p1}, Lcom/miui/fmradio/IFmServiceManager;->turnFmOn(I)V

    .line 870
    iget v1, p0, Lcom/miui/fmradio/FmLocalService;->mAudioPath:I

    invoke-direct {p0}, Lcom/miui/fmradio/FmLocalService;->getAudioPathInner()I

    move-result v2

    if-eq v1, v2, :cond_3

    .line 871
    iget v1, p0, Lcom/miui/fmradio/FmLocalService;->mAudioPath:I

    invoke-direct {p0, v1}, Lcom/miui/fmradio/FmLocalService;->setAudioPathInner(I)V

    .line 874
    :cond_3
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public unregisterFmStateListener(Lcom/miui/fmradio/IFmLocalServiceCallback;)V
    .locals 2
    .param p1, "l"    # Lcom/miui/fmradio/IFmLocalServiceCallback;

    .prologue
    .line 426
    iget-object v1, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    monitor-enter v1

    .line 427
    :try_start_0
    iget-object v0, p0, Lcom/miui/fmradio/FmLocalService;->mFmStateListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 428
    monitor-exit v1

    .line 429
    return-void

    .line 428
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
