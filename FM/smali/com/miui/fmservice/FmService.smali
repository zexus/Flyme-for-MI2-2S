.class public Lcom/miui/fmservice/FmService;
.super Landroid/app/Service;
.source "FmService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmservice/FmService$ServiceStub;
    }
.end annotation


# static fields
.field public static final RECORD_DIRECTORY_PATH:Ljava/lang/String;

.field private static mAudioDevice:Ljava/lang/String;

.field private static mMuted:Z

.field private static mPrefs:Lcom/miui/fmservice/FmSharedPreferences;


# instance fields
.field fmCallbacks:Lqcom/fmradio/FmRxEvCallbacksAdaptor;

.field private mA2DPSampleFile:Ljava/io/File;

.field mA2dp:Landroid/media/MediaRecorder;

.field private mA2dpDeviceSupportInHal:Z

.field private mA2dpDisconnected:Z

.field private mAppShutdown:Z

.field private final mBinder:Landroid/os/IBinder;

.field private mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;

.field private mDelayedStopHandler:Landroid/os/Handler;

.field private mFMOn:Z

.field private mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

.field final mHandler:Landroid/os/Handler;

.field private mHeadsetPlugged:Z

.field private mInternalAntennaAvailable:Z

.field private mNotchFilterSet:Z

.field private mOverA2DP:Z

.field private mPlaybackInProgress:Z

.field private mReceiver:Lqcom/fmradio/FmReceiver;

.field mSampleStart:J

.field final mScreenOffHandler:Ljava/lang/Runnable;

.field final mScreenOnHandler:Ljava/lang/Runnable;

.field private mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

.field private mServiceStartId:I

.field private mSingleRecordingInstanceSupported:Z

.field private mSpeakerPhoneOn:Z

.field private misAnalogModeSupported:Z

.field private misAnalogPathEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    const-string v0, "qcomfm_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 57
    const/4 v0, 0x0

    sput-boolean v0, Lcom/miui/fmservice/FmService;->mMuted:Z

    .line 58
    const-string v0, "headset"

    sput-object v0, Lcom/miui/fmservice/FmService;->mAudioDevice:Ljava/lang/String;

    .line 95
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    const-string v3, "MIUI"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/sound_recorder/fm_rec"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/miui/fmservice/FmService;->RECORD_DIRECTORY_PATH:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 100
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 51
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mOverA2DP:Z

    .line 54
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mHeadsetPlugged:Z

    .line 55
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mInternalAntennaAvailable:Z

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lcom/miui/fmservice/FmService;->mServiceStartId:I

    .line 59
    iput-object v3, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;

    .line 60
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mFMOn:Z

    .line 61
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mSpeakerPhoneOn:Z

    .line 62
    iput-object v3, p0, Lcom/miui/fmservice/FmService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/miui/fmservice/FmService;->mHandler:Landroid/os/Handler;

    .line 64
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->misAnalogModeSupported:Z

    .line 65
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->misAnalogPathEnabled:Z

    .line 66
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mA2dpDisconnected:Z

    .line 69
    iput-object v3, p0, Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    .line 72
    iput-object v3, p0, Lcom/miui/fmservice/FmService;->mA2DPSampleFile:Ljava/io/File;

    .line 74
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mPlaybackInProgress:Z

    .line 75
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/miui/fmservice/FmService;->mSampleStart:J

    .line 80
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mNotchFilterSet:Z

    .line 84
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mA2dpDeviceSupportInHal:Z

    .line 86
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mAppShutdown:Z

    .line 87
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mSingleRecordingInstanceSupported:Z

    .line 348
    new-instance v0, Lcom/miui/fmservice/FmService$1;

    invoke-direct {v0, p0}, Lcom/miui/fmservice/FmService$1;-><init>(Lcom/miui/fmservice/FmService;)V

    iput-object v0, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    .line 404
    new-instance v0, Lcom/miui/fmservice/FmService$3;

    invoke-direct {v0, p0}, Lcom/miui/fmservice/FmService$3;-><init>(Lcom/miui/fmservice/FmService;)V

    iput-object v0, p0, Lcom/miui/fmservice/FmService;->mScreenOnHandler:Ljava/lang/Runnable;

    .line 413
    new-instance v0, Lcom/miui/fmservice/FmService$4;

    invoke-direct {v0, p0}, Lcom/miui/fmservice/FmService$4;-><init>(Lcom/miui/fmservice/FmService;)V

    iput-object v0, p0, Lcom/miui/fmservice/FmService;->mScreenOffHandler:Ljava/lang/Runnable;

    .line 450
    new-instance v0, Lcom/miui/fmservice/FmService$ServiceStub;

    invoke-direct {v0, p0, p0, v3}, Lcom/miui/fmservice/FmService$ServiceStub;-><init>(Lcom/miui/fmservice/FmService;Lcom/miui/fmservice/FmService;Lcom/miui/fmservice/FmService$1;)V

    iput-object v0, p0, Lcom/miui/fmservice/FmService;->mBinder:Landroid/os/IBinder;

    .line 1479
    new-instance v0, Lcom/miui/fmservice/FmService$5;

    invoke-direct {v0, p0}, Lcom/miui/fmservice/FmService$5;-><init>(Lcom/miui/fmservice/FmService;)V

    iput-object v0, p0, Lcom/miui/fmservice/FmService;->fmCallbacks:Lqcom/fmradio/FmRxEvCallbacksAdaptor;

    .line 101
    return-void
.end method

.method static synthetic access$000(Lcom/miui/fmservice/FmService;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmservice/FmService;

    .prologue
    .line 34
    iget v0, p0, Lcom/miui/fmservice/FmService;->mServiceStartId:I

    return v0
.end method

.method static synthetic access$100(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmReceiver;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmservice/FmService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    return-object v0
.end method

.method static synthetic access$202(Lcom/miui/fmservice/FmService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmservice/FmService;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/miui/fmservice/FmService;->mNotchFilterSet:Z

    return p1
.end method

.method static synthetic access$400(Lcom/miui/fmservice/FmService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmservice/FmService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->fmOn()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/miui/fmservice/FmService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmservice/FmService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->fmOff()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lcom/miui/fmservice/FmService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmservice/FmService;

    .prologue
    .line 34
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->fmRadioReset()Z

    move-result v0

    return v0
.end method

.method static synthetic access$700(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmRxRdsData;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmservice/FmService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    return-object v0
.end method

.method static synthetic access$702(Lcom/miui/fmservice/FmService;Lqcom/fmradio/FmRxRdsData;)Lqcom/fmradio/FmRxRdsData;
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmservice/FmService;
    .param p1, "x1"    # Lqcom/fmradio/FmRxRdsData;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    return-object p1
.end method

.method static synthetic access$800(Lcom/miui/fmservice/FmService;)Lcom/miui/fmservice/IFmServiceCallback;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmservice/FmService;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;

    return-object v0
.end method

.method static synthetic access$902(Lcom/miui/fmservice/FmService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmservice/FmService;
    .param p1, "x1"    # Z

    .prologue
    .line 34
    iput-boolean p1, p0, Lcom/miui/fmservice/FmService;->mFMOn:Z

    return p1
.end method

.method private fmOff()Z
    .locals 1

    .prologue
    .line 835
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/miui/fmservice/FmService;->fmOff(Z)Z

    move-result v0

    return v0
.end method

.method private fmOff(Z)Z
    .locals 2
    .param p1, "fromMediaButton"    # Z

    .prologue
    .line 839
    const/4 v0, 0x0

    .line 841
    .local v0, "bStatus":Z
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->fmOperationsOff()V

    .line 843
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 845
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1}, Lqcom/fmradio/FmReceiver;->disable()Z

    move-result v0

    .line 846
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    .line 849
    :cond_0
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->stop()V

    .line 850
    return v0
.end method

.method private fmOn()Z
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 702
    const/4 v1, 0x0

    .line 704
    .local v1, "bStatus":Z
    iget-object v4, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-nez v4, :cond_0

    .line 706
    :try_start_0
    new-instance v4, Lqcom/fmradio/FmReceiver;

    const-string v5, "/dev/radio0"

    iget-object v6, p0, Lcom/miui/fmservice/FmService;->fmCallbacks:Lqcom/fmradio/FmRxEvCallbacksAdaptor;

    invoke-direct {v4, v5, v6}, Lqcom/fmradio/FmReceiver;-><init>(Ljava/lang/String;Lqcom/fmradio/FmRxEvCallbacksAdaptor;)V

    iput-object v4, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;
    :try_end_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_0

    .line 712
    :cond_0
    iget-object v4, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v4, :cond_3

    .line 713
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isFmOn()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 715
    const/4 v1, 0x1

    .line 716
    const-string v4, "Fm:FmService"

    const-string v5, "mReceiver.already enabled"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 735
    :goto_0
    if-ne v1, v7, :cond_6

    .line 737
    invoke-virtual {p0, v8}, Lcom/miui/fmservice/FmService;->setLowPowerMode(Z)Z

    move-result v1

    .line 738
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setLowPowerMode done, Status :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 740
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/miui/fmservice/FmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 741
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    iget-boolean v4, p0, Lcom/miui/fmservice/FmService;->mPlaybackInProgress:Z

    if-nez v4, :cond_1

    .line 742
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->startFM()V

    .line 743
    const-string v4, "Fm:FmService"

    const-string v5, "mAudioManager.setFmRadioOn = true \n"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 745
    const-string v4, "Fm:FmService"

    const-string v5, "mAudioManager.setFmRadioOn done \n"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    :cond_1
    iget-object v4, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v4, :cond_2

    .line 749
    iget-object v4, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    const/16 v5, 0x17

    invoke-virtual {v4, v5}, Lqcom/fmradio/FmReceiver;->registerRdsGroupProcessing(I)Z

    move-result v1

    .line 752
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "registerRdsGroupProcessing done, Status :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    :cond_2
    invoke-static {}, Lcom/miui/fmservice/FmSharedPreferences;->getAutoAFSwitch()Z

    move-result v4

    invoke-virtual {p0, v4}, Lcom/miui/fmservice/FmService;->enableAutoAF(Z)Z

    move-result v1

    .line 755
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "enableAutoAF done, Status :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 758
    iget-object v4, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v4, v8}, Lqcom/fmradio/FmReceiver;->setInternalAntenna(Z)Z

    move-result v1

    .line 759
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "setInternalAntenna done, Status :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 762
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->readInternalAntennaAvailable()V

    .line 764
    const/4 v1, 0x1

    .line 765
    iput-boolean v7, p0, Lcom/miui/fmservice/FmService;->mFMOn:Z

    .line 766
    invoke-virtual {p0, v7}, Lcom/miui/fmservice/FmService;->enableStereo(Z)Z

    .line 775
    .end local v0    # "audioManager":Landroid/media/AudioManager;
    :cond_3
    :goto_1
    return v1

    .line 707
    :catch_0
    move-exception v3

    .line 708
    .local v3, "e":Ljava/lang/InstantiationException;
    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "FmReceiver service not available!"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 719
    .end local v3    # "e":Ljava/lang/InstantiationException;
    :cond_4
    invoke-static {}, Lcom/miui/fmservice/FmSharedPreferences;->getFMConfiguration()Lqcom/fmradio/FmConfig;

    move-result-object v2

    .line 720
    .local v2, "config":Lqcom/fmradio/FmConfig;
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fmOn: RadioBand   :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getRadioBand()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 721
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fmOn: Emphasis    :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getEmphasis()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 722
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fmOn: ChSpacing   :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getChSpacing()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fmOn: RdsStd      :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getRdsStd()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 724
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fmOn: LowerLimit  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getLowerLimit()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 725
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "fmOn: UpperLimit  :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Lqcom/fmradio/FmConfig;->getUpperLimit()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    iget-object v4, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-static {}, Lcom/miui/fmservice/FmSharedPreferences;->getFMConfiguration()Lqcom/fmradio/FmConfig;

    move-result-object v5

    invoke-virtual {v4, v5}, Lqcom/fmradio/FmReceiver;->enable(Lqcom/fmradio/FmConfig;)Z

    move-result v1

    .line 727
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isSpeakerEnabled()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 728
    invoke-direct {p0, v8}, Lcom/miui/fmservice/FmService;->setAudioPath(Z)Z

    .line 732
    :goto_2
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "mReceiver.enable done, Status :"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 730
    :cond_5
    invoke-direct {p0, v7}, Lcom/miui/fmservice/FmService;->setAudioPath(Z)Z

    goto :goto_2

    .line 768
    .end local v2    # "config":Lqcom/fmradio/FmConfig;
    :cond_6
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    .line 772
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->stop()V

    goto/16 :goto_1
.end method

.method private fmOperationsOff()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 782
    iget-boolean v1, p0, Lcom/miui/fmservice/FmService;->mSpeakerPhoneOn:Z

    if-eqz v1, :cond_0

    .line 784
    iput-boolean v3, p0, Lcom/miui/fmservice/FmService;->mSpeakerPhoneOn:Z

    .line 785
    const/4 v1, 0x1

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 787
    :cond_0
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/miui/fmservice/FmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 788
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 790
    const-string v1, "Fm:FmService"

    const-string v2, "audioManager.setFmRadioOn = false \n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 791
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->unMute()Z

    .line 792
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->stopFM()V

    .line 794
    const-string v1, "Fm:FmService"

    const-string v2, "audioManager.setFmRadioOn false done \n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 797
    :cond_1
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isAnalogModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 798
    const-string v1, "hw.fm.isAnalog"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 799
    iput-boolean v3, p0, Lcom/miui/fmservice/FmService;->misAnalogPathEnabled:Z

    .line 801
    :cond_2
    return-void
.end method

.method private fmOperationsReset()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 807
    iget-boolean v1, p0, Lcom/miui/fmservice/FmService;->mSpeakerPhoneOn:Z

    if-eqz v1, :cond_0

    .line 809
    iput-boolean v3, p0, Lcom/miui/fmservice/FmService;->mSpeakerPhoneOn:Z

    .line 810
    const/4 v1, 0x1

    invoke-static {v1, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 813
    :cond_0
    const-string v1, "audio"

    invoke-virtual {p0, v1}, Lcom/miui/fmservice/FmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 814
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_1

    .line 816
    const-string v1, "Fm:FmService"

    const-string v2, "audioManager.setFmRadioOn = false \n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 817
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->unMute()Z

    .line 818
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->resetFM()V

    .line 820
    const-string v1, "Fm:FmService"

    const-string v2, "audioManager.setFmRadioOn false done \n"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 823
    :cond_1
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isAnalogModeEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 824
    const-string v1, "hw.fm.isAnalog"

    const-string v2, "false"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 825
    iput-boolean v3, p0, Lcom/miui/fmservice/FmService;->misAnalogPathEnabled:Z

    .line 827
    :cond_2
    return-void
.end method

.method private fmRadioReset()Z
    .locals 3

    .prologue
    .line 859
    const/4 v0, 0x0

    .line 861
    .local v0, "bStatus":Z
    const-string v1, "Fm:FmService"

    const-string v2, "fmRadioReset"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->fmOperationsReset()V

    .line 866
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 868
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1}, Lqcom/fmradio/FmReceiver;->reset()Z

    move-result v0

    .line 869
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    .line 871
    :cond_0
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->stop()V

    .line 872
    return v0
.end method

.method private gotoIdleState()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 426
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 427
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 428
    .local v0, "msg":Landroid/os/Message;
    iput v4, v0, Landroid/os/Message;->what:I

    .line 429
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 434
    invoke-virtual {p0, v4}, Lcom/miui/fmservice/FmService;->stopForeground(Z)V

    .line 435
    return-void
.end method

.method private resetA2dpPlayback()V
    .locals 6

    .prologue
    .line 318
    iget-object v3, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;

    if-nez v3, :cond_0

    .line 345
    :goto_0
    return-void

    .line 320
    :cond_0
    iget-object v3, p0, Lcom/miui/fmservice/FmService;->mA2DPSampleFile:Ljava/io/File;

    if-eqz v3, :cond_1

    .line 323
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmservice/FmService;->mA2DPSampleFile:Ljava/io/File;

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 332
    :cond_1
    :goto_1
    :try_start_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "com.android.server.CpuGovernorService.action.IOBUSY_UNVOTE"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 334
    .local v2, "ioBusyUnVoteIntent":Landroid/content/Intent;
    const-string v3, "com.android.server.CpuGovernorService.voteType"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 335
    invoke-virtual {p0, v2}, Lcom/miui/fmservice/FmService;->sendBroadcast(Landroid/content/Intent;)V

    .line 337
    iget-object v3, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->stop()V

    .line 339
    iget-object v3, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->reset()V

    .line 340
    iget-object v3, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v3}, Landroid/media/MediaRecorder;->release()V

    .line 341
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 342
    .end local v2    # "ioBusyUnVoteIntent":Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 343
    .local v1, "exception":Ljava/lang/Exception;
    const-string v3, "Fm:FmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Stop failed with exception"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 324
    .end local v1    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Fm:FmService"

    const-string v4, "Not able to delete file"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private resetFM()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 241
    const-string v0, "Fm:FmService"

    const-string v1, "resetFM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    iget-boolean v0, p0, Lcom/miui/fmservice/FmService;->mOverA2DP:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 243
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mOverA2DP:Z

    .line 244
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->resetA2dpPlayback()V

    .line 250
    :goto_0
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mPlaybackInProgress:Z

    .line 251
    return-void

    .line 246
    :cond_0
    const-string v0, "Fm:FmService"

    const-string v1, "FMRadio: sending the intent"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    const/high16 v0, 0x100000

    const-string v1, ""

    invoke-static {v0, v2, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto :goto_0
.end method

.method private setAudioPath(Z)Z
    .locals 5
    .param p1, "analogMode"    # Z

    .prologue
    const/4 v1, 0x0

    .line 673
    iget-object v2, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-nez v2, :cond_1

    .line 694
    :cond_0
    :goto_0
    return v1

    .line 676
    :cond_1
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isAnalogModeEnabled()Z

    move-result v2

    if-ne v2, p1, :cond_2

    .line 677
    const-string v2, "Fm:FmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Analog Path already is set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 680
    :cond_2
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isAnalogModeSupported()Z

    move-result v2

    if-nez v2, :cond_3

    .line 681
    const-string v2, "Fm:FmService"

    const-string v3, "Analog Path is not supported "

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 684
    :cond_3
    const-string v2, "hw.fm.digitalpath"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    .line 688
    iget-object v2, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v2, p1}, Lqcom/fmradio/FmReceiver;->setAnalogMode(Z)Z

    move-result v0

    .line 689
    .local v0, "state":Z
    if-nez v0, :cond_4

    .line 690
    const-string v2, "Fm:FmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in toggling analog/digital path "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 693
    :cond_4
    iput-boolean p1, p0, Lcom/miui/fmservice/FmService;->misAnalogPathEnabled:Z

    .line 694
    const/4 v1, 0x1

    goto :goto_0
.end method

.method private startFM()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 204
    const-string v0, "Fm:FmService"

    const-string v1, "In startFM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 205
    iget-boolean v0, p0, Lcom/miui/fmservice/FmService;->mAppShutdown:Z

    if-ne v2, v0, :cond_1

    .line 226
    :cond_0
    :goto_0
    return-void

    .line 208
    :cond_1
    iget-boolean v0, p0, Lcom/miui/fmservice/FmService;->mPlaybackInProgress:Z

    if-eq v2, v0, :cond_0

    .line 210
    const-string v0, "Fm:FmService"

    const-string v1, "FM registering for registerMediaButtonEventReceiver"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isSpeakerEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 216
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mSpeakerPhoneOn:Z

    .line 217
    invoke-static {v2, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 222
    :goto_1
    const-string v0, "Fm:FmService"

    const-string v1, "FMRadio: Requesting to start FM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/high16 v0, 0x100000

    const-string v1, ""

    invoke-static {v0, v2, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    .line 225
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mPlaybackInProgress:Z

    goto :goto_0

    .line 219
    :cond_2
    const/4 v0, 0x0

    invoke-static {v2, v0}, Landroid/media/AudioSystem;->setForceUse(II)I

    goto :goto_1
.end method

.method private stop()V
    .locals 2

    .prologue
    .line 420
    const-string v0, "Fm:FmService"

    const-string v1, "in stop"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 421
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->gotoIdleState()V

    .line 422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/fmservice/FmService;->mFMOn:Z

    .line 423
    return-void
.end method

.method private stopFM()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 229
    const-string v0, "Fm:FmService"

    const-string v1, "In stopFM"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    iget-boolean v0, p0, Lcom/miui/fmservice/FmService;->mOverA2DP:Z

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 231
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mOverA2DP:Z

    .line 232
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->stopA2dpPlayback()V

    .line 237
    :goto_0
    iput-boolean v2, p0, Lcom/miui/fmservice/FmService;->mPlaybackInProgress:Z

    .line 238
    return-void

    .line 234
    :cond_0
    const/high16 v0, 0x100000

    const-string v1, ""

    invoke-static {v0, v2, v1}, Landroid/media/AudioSystem;->setDeviceConnectionState(IILjava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public cancelSearch()Z
    .locals 3

    .prologue
    .line 1247
    const/4 v0, 0x0

    .line 1248
    .local v0, "bCommandSent":Z
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 1250
    const-string v1, "Fm:FmService"

    const-string v2, "cancelSearch"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1251
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1}, Lqcom/fmradio/FmReceiver;->cancelSearch()Z

    move-result v0

    .line 1253
    :cond_0
    return v0
.end method

.method public clearStationInfo()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1470
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    if-eqz v0, :cond_0

    .line 1471
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmRxRdsData;->setRadioText(Ljava/lang/String;)V

    .line 1472
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    invoke-virtual {v0, v2}, Lqcom/fmradio/FmRxRdsData;->setPrgmId(I)V

    .line 1473
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    invoke-virtual {v0, v2}, Lqcom/fmradio/FmRxRdsData;->setPrgmType(I)V

    .line 1474
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmRxRdsData;->setPrgmServices(Ljava/lang/String;)V

    .line 1476
    :cond_0
    return-void
.end method

.method public enableAutoAF(Z)Z
    .locals 4
    .param p1, "bEnable"    # Z

    .prologue
    .line 1411
    const/4 v0, 0x0

    .line 1412
    .local v0, "bCommandSent":Z
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 1414
    const-string v1, "Fm:FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableAutoAF: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1415
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1, p1}, Lqcom/fmradio/FmReceiver;->enableAFjump(Z)Z

    move-result v0

    .line 1417
    :cond_0
    return v0
.end method

.method public enableSpeaker(Z)V
    .locals 4
    .param p1, "speakerOn"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 908
    iput-boolean p1, p0, Lcom/miui/fmservice/FmService;->mSpeakerPhoneOn:Z

    .line 909
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isAnalogModeSupported()Z

    move-result v0

    .line 910
    .local v0, "analogmode":Z
    if-nez p1, :cond_1

    .line 911
    if-eqz v0, :cond_0

    .line 912
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->stopFM()V

    .line 913
    invoke-direct {p0, v2}, Lcom/miui/fmservice/FmService;->setAudioPath(Z)Z

    .line 915
    :cond_0
    invoke-static {v2, v3}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 916
    if-eqz v0, :cond_1

    .line 917
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->startFM()V

    .line 922
    :cond_1
    iget-boolean v1, p0, Lcom/miui/fmservice/FmService;->mA2dpDeviceSupportInHal:Z

    if-nez v1, :cond_4

    if-nez v0, :cond_4

    .line 923
    iget-boolean v1, p0, Lcom/miui/fmservice/FmService;->mOverA2DP:Z

    if-ne v2, v1, :cond_2

    if-eq v2, p1, :cond_3

    :cond_2
    iget-boolean v1, p0, Lcom/miui/fmservice/FmService;->mOverA2DP:Z

    if-nez v1, :cond_4

    if-nez p1, :cond_4

    .line 926
    :cond_3
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->stopFM()V

    .line 927
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->startFM()V

    .line 930
    :cond_4
    if-eqz p1, :cond_6

    .line 931
    if-eqz v0, :cond_5

    .line 932
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->stopFM()V

    .line 933
    sget-boolean v1, Lcom/miui/fmservice/FmService;->mMuted:Z

    if-eqz v1, :cond_7

    .line 934
    invoke-direct {p0, v3}, Lcom/miui/fmservice/FmService;->setAudioPath(Z)Z

    .line 941
    :cond_5
    :goto_0
    invoke-static {v2, v2}, Landroid/media/AudioSystem;->setForceUse(II)I

    .line 942
    if-eqz v0, :cond_6

    .line 943
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->startFM()V

    .line 946
    :cond_6
    return-void

    .line 936
    :cond_7
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->mute()Z

    .line 937
    invoke-direct {p0, v3}, Lcom/miui/fmservice/FmService;->setAudioPath(Z)Z

    .line 938
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->unMute()Z

    goto :goto_0
.end method

.method public enableStereo(Z)Z
    .locals 4
    .param p1, "bEnable"    # Z

    .prologue
    .line 1431
    const/4 v0, 0x0

    .line 1432
    .local v0, "bCommandSent":Z
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 1434
    const-string v1, "Fm:FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enableStereo: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1435
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1, p1}, Lqcom/fmradio/FmReceiver;->setStereoMode(Z)Z

    move-result v0

    .line 1437
    :cond_0
    return v0
.end method

.method public getRadioText()Ljava/lang/String;
    .locals 4

    .prologue
    .line 1289
    const-string v0, ""

    .line 1290
    .local v0, "str":Ljava/lang/String;
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    if-eqz v1, :cond_0

    .line 1292
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mFMRxRDSData:Lqcom/fmradio/FmRxRdsData;

    invoke-virtual {v1}, Lqcom/fmradio/FmRxRdsData;->getRadioText()Ljava/lang/String;

    move-result-object v0

    .line 1293
    if-nez v0, :cond_0

    .line 1295
    const-string v0, ""

    .line 1298
    :cond_0
    const-string v1, "Fm:FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Radio Text: ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1299
    return-object v0
.end method

.method public isAnalogModeEnabled()Z
    .locals 1

    .prologue
    .line 887
    iget-boolean v0, p0, Lcom/miui/fmservice/FmService;->misAnalogPathEnabled:Z

    return v0
.end method

.method public isAnalogModeSupported()Z
    .locals 1

    .prologue
    .line 891
    iget-boolean v0, p0, Lcom/miui/fmservice/FmService;->misAnalogModeSupported:Z

    return v0
.end method

.method public isFmOn()Z
    .locals 1

    .prologue
    .line 882
    iget-boolean v0, p0, Lcom/miui/fmservice/FmService;->mFMOn:Z

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .prologue
    .line 1068
    sget-boolean v0, Lcom/miui/fmservice/FmService;->mMuted:Z

    return v0
.end method

.method public isSpeakerEnabled()Z
    .locals 1

    .prologue
    .line 895
    iget-boolean v0, p0, Lcom/miui/fmservice/FmService;->mSpeakerPhoneOn:Z

    return v0
.end method

.method public isWiredHeadsetAvailable()Z
    .locals 1

    .prologue
    .line 1466
    iget-boolean v0, p0, Lcom/miui/fmservice/FmService;->mHeadsetPlugged:Z

    return v0
.end method

.method public mute()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 1030
    const/4 v1, 0x1

    .line 1031
    .local v1, "bCommandSent":Z
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isMuted()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1040
    :cond_0
    :goto_0
    return v4

    .line 1033
    :cond_1
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/miui/fmservice/FmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1034
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v2, "Fm:FmService"

    const-string v3, "mute:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1035
    if-eqz v0, :cond_0

    .line 1037
    sput-boolean v4, Lcom/miui/fmservice/FmService;->mMuted:Z

    .line 1038
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    goto :goto_0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 161
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mBinder:Landroid/os/IBinder;

    return-object v0
.end method

.method public onCreate()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 105
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 107
    new-instance v4, Lcom/miui/fmservice/FmSharedPreferences;

    invoke-direct {v4, p0}, Lcom/miui/fmservice/FmSharedPreferences;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/miui/fmservice/FmService;->mPrefs:Lcom/miui/fmservice/FmSharedPreferences;

    .line 108
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;

    .line 109
    const-string v4, "power"

    invoke-virtual {p0, v4}, Lcom/miui/fmservice/FmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManager;

    .line 110
    .local v2, "pm":Landroid/os/PowerManager;
    const-string v4, "ro.fm.analogpath.supported"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/fmservice/FmService;->misAnalogModeSupported:Z

    .line 112
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->registerScreenOnOffListener()V

    .line 113
    const-string v4, "ro.fm.mulinst.recording.support"

    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_0

    .line 114
    iput-boolean v6, p0, Lcom/miui/fmservice/FmService;->mSingleRecordingInstanceSupported:Z

    .line 119
    :cond_0
    iget-object v4, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v4}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    .line 120
    .local v1, "msg":Landroid/os/Message;
    iput v6, v1, Landroid/os/Message;->what:I

    .line 121
    iget-object v4, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v6, 0xea60

    invoke-virtual {v4, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 123
    const-string v4, "audio"

    invoke-virtual {p0, v4}, Lcom/miui/fmservice/FmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 124
    .local v0, "audioManager":Landroid/media/AudioManager;
    const-string v4, "isA2dpDeviceSupported"

    invoke-virtual {v0, v4}, Landroid/media/AudioManager;->getParameters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 125
    .local v3, "valueStr":Ljava/lang/String;
    const-string v4, "=true"

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    iput-boolean v4, p0, Lcom/miui/fmservice/FmService;->mA2dpDeviceSupportInHal:Z

    .line 126
    const-string v4, "Fm:FmService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " is A2DP device Supported In HAL"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-boolean v6, p0, Lcom/miui/fmservice/FmService;->mA2dpDeviceSupportInHal:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    return-void
.end method

.method public onDestroy()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 136
    const-string v0, "Fm:FmService"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 139
    const-string v0, "Fm:FmService"

    const-string v1, "Service being destroyed while still playing."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_0
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 146
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_1

    .line 147
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/miui/fmservice/FmService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 148
    iput-object v2, p0, Lcom/miui/fmservice/FmService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 152
    :cond_1
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->fmOff()Z

    .line 154
    const-string v0, "Fm:FmService"

    const-string v1, "onDestroy: unbindFromService completed"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 156
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 157
    return-void
.end method

.method public onRebind(Landroid/content/Intent;)V
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 166
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 168
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/fmservice/FmService;->setLowPowerMode(Z)Z

    .line 169
    iget-boolean v0, p0, Lcom/miui/fmservice/FmService;->mPlaybackInProgress:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isWiredHeadsetAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 170
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->startFM()V

    .line 171
    :cond_0
    const-string v0, "Fm:FmService"

    const-string v1, "onRebind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    return-void
.end method

.method public onStart(Landroid/content/Intent;I)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "startId"    # I

    .prologue
    .line 176
    const-string v1, "Fm:FmService"

    const-string v2, "onStart"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    iput p2, p0, Lcom/miui/fmservice/FmService;->mServiceStartId:I

    .line 180
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 181
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 182
    .local v0, "msg":Landroid/os/Message;
    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    .line 183
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mDelayedStopHandler:Landroid/os/Handler;

    const-wide/32 v2, 0xea60

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 184
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "flags"    # I
    .param p3, "startId"    # I

    .prologue
    .line 131
    const/4 v0, 0x2

    return v0
.end method

.method public onUnbind(Landroid/content/Intent;)Z
    .locals 3
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 188
    const-string v0, "Fm:FmService"

    const-string v1, "onUnbind"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->unregisterCallbacks()V

    .line 192
    invoke-virtual {p0, v2}, Lcom/miui/fmservice/FmService;->setLowPowerMode(Z)Z

    .line 193
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isFmOn()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    :goto_0
    return v2

    .line 199
    :cond_0
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->gotoIdleState()V

    goto :goto_0
.end method

.method public readInternalAntennaAvailable()V
    .locals 3

    .prologue
    .line 442
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/fmservice/FmService;->mInternalAntennaAvailable:Z

    .line 443
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_0

    .line 445
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0}, Lqcom/fmradio/FmReceiver;->getInternalAntenna()Z

    move-result v0

    iput-boolean v0, p0, Lcom/miui/fmservice/FmService;->mInternalAntennaAvailable:Z

    .line 446
    const-string v0, "Fm:FmService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getInternalAntenna: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/miui/fmservice/FmService;->mInternalAntennaAvailable:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    :cond_0
    return-void
.end method

.method public registerCallbacks(Lcom/miui/fmservice/IFmServiceCallback;)V
    .locals 0
    .param p1, "cb"    # Lcom/miui/fmservice/IFmServiceCallback;

    .prologue
    .line 979
    iput-object p1, p0, Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;

    .line 980
    return-void
.end method

.method public registerScreenOnOffListener()V
    .locals 2

    .prologue
    .line 377
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    if-nez v1, :cond_0

    .line 378
    new-instance v1, Lcom/miui/fmservice/FmService$2;

    invoke-direct {v1, p0}, Lcom/miui/fmservice/FmService$2;-><init>(Lcom/miui/fmservice/FmService;)V

    iput-object v1, p0, Lcom/miui/fmservice/FmService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    .line 394
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 395
    .local v0, "iFilter":Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 396
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 397
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mScreenOnOffReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/miui/fmservice/FmService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 399
    .end local v0    # "iFilter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method public scan(I)Z
    .locals 9
    .param p1, "pty"    # I

    .prologue
    const/16 v8, 0x1f

    const/4 v1, 0x5

    const/4 v5, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    .line 1141
    const/4 v6, 0x0

    .line 1142
    .local v6, "bCommandSent":Z
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v0, :cond_2

    .line 1144
    const-string v0, "Fm:FmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "scan:  PTY: "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    invoke-static {}, Lcom/miui/fmservice/FmSharedPreferences;->isRBDSStd()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1148
    if-lez p1, :cond_0

    const/16 v0, 0x17

    if-le p1, v0, :cond_1

    :cond_0
    const/16 v0, 0x1d

    if-lt p1, v0, :cond_3

    if-gt p1, v8, :cond_3

    .line 1150
    :cond_1
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lqcom/fmradio/FmReceiver;->searchStations(IIIII)Z

    move-result v6

    .line 1182
    :cond_2
    :goto_0
    return v6

    .line 1158
    :cond_3
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, v3, v2, v3}, Lqcom/fmradio/FmReceiver;->searchStations(III)Z

    move-result v6

    goto :goto_0

    .line 1166
    :cond_4
    if-lez p1, :cond_5

    if-gt p1, v8, :cond_5

    .line 1168
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    move v4, p1

    invoke-virtual/range {v0 .. v5}, Lqcom/fmradio/FmReceiver;->searchStations(IIIII)Z

    move-result v6

    goto :goto_0

    .line 1176
    :cond_5
    iget-object v0, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v0, v3, v2, v3}, Lqcom/fmradio/FmReceiver;->searchStations(III)Z

    move-result v6

    goto :goto_0
.end method

.method public seek(Z)Z
    .locals 5
    .param p1, "up"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 1102
    const/4 v0, 0x0

    .line 1103
    .local v0, "bCommandSent":Z
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 1105
    if-ne p1, v3, :cond_1

    .line 1107
    const-string v1, "Fm:FmService"

    const-string v2, "seek:  Up"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1, v4, v3, v3}, Lqcom/fmradio/FmReceiver;->searchStations(III)Z

    .line 1119
    :goto_0
    const/4 v0, 0x1

    .line 1121
    :cond_0
    return v0

    .line 1114
    :cond_1
    const-string v1, "Fm:FmService"

    const-string v2, "seek:  Down"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1115
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1, v4, v3, v4}, Lqcom/fmradio/FmReceiver;->searchStations(III)Z

    goto :goto_0
.end method

.method public setLowPowerMode(Z)Z
    .locals 4
    .param p1, "bLowPower"    # Z

    .prologue
    .line 1367
    const/4 v0, 0x0

    .line 1368
    .local v0, "bCommandSent":Z
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 1370
    const-string v1, "Fm:FmService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setLowPowerMode: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1371
    if-eqz p1, :cond_1

    .line 1373
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lqcom/fmradio/FmReceiver;->setPowerMode(I)Z

    move-result v0

    .line 1380
    :cond_0
    :goto_0
    return v0

    .line 1377
    :cond_1
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lqcom/fmradio/FmReceiver;->setPowerMode(I)Z

    move-result v0

    goto :goto_0
.end method

.method public stopA2dpPlayback()V
    .locals 5

    .prologue
    .line 296
    iget-object v2, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;

    if-nez v2, :cond_0

    .line 314
    :goto_0
    return-void

    .line 298
    :cond_0
    iget-object v2, p0, Lcom/miui/fmservice/FmService;->mA2DPSampleFile:Ljava/io/File;

    if-eqz v2, :cond_1

    .line 301
    :try_start_0
    iget-object v2, p0, Lcom/miui/fmservice/FmService;->mA2DPSampleFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 307
    :cond_1
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->stop()V

    .line 308
    iget-object v2, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->reset()V

    .line 309
    iget-object v2, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;

    invoke-virtual {v2}, Landroid/media/MediaRecorder;->release()V

    .line 310
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/miui/fmservice/FmService;->mA2dp:Landroid/media/MediaRecorder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 311
    :catch_0
    move-exception v1

    .line 312
    .local v1, "exception":Ljava/lang/Exception;
    const-string v2, "Fm:FmService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stop failed with exception"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 302
    .end local v1    # "exception":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 303
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "Fm:FmService"

    const-string v3, "Not able to delete file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public tune(I)Z
    .locals 8
    .param p1, "frequency"    # I

    .prologue
    .line 1078
    const/4 v0, 0x0

    .line 1079
    .local v0, "bCommandSent":Z
    int-to-double v4, p1

    const-wide v6, 0x408f400000000000L    # 1000.0

    div-double v2, v4, v6

    .line 1081
    .local v2, "doubleFrequency":D
    const-string v1, "Fm:FmService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "tuneRadio:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    if-eqz v1, :cond_0

    .line 1084
    iget-object v1, p0, Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;

    invoke-virtual {v1, p1}, Lqcom/fmradio/FmReceiver;->setStation(I)Z

    .line 1085
    const/4 v0, 0x1

    .line 1087
    :cond_0
    return v0
.end method

.method public unMute()Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 1048
    const/4 v1, 0x1

    .line 1049
    .local v1, "bCommandSent":Z
    invoke-virtual {p0}, Lcom/miui/fmservice/FmService;->isMuted()Z

    move-result v2

    if-nez v2, :cond_1

    .line 1059
    :cond_0
    :goto_0
    return v1

    .line 1051
    :cond_1
    const-string v2, "Fm:FmService"

    const-string v3, "unMute:"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1052
    const-string v2, "audio"

    invoke-virtual {p0, v2}, Lcom/miui/fmservice/FmService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 1053
    .local v0, "audioManager":Landroid/media/AudioManager;
    if-eqz v0, :cond_0

    .line 1055
    sput-boolean v4, Lcom/miui/fmservice/FmService;->mMuted:Z

    .line 1056
    const/4 v2, 0x3

    invoke-virtual {v0, v2, v4}, Landroid/media/AudioManager;->setStreamMute(IZ)V

    .line 1057
    invoke-direct {p0}, Lcom/miui/fmservice/FmService;->startFM()V

    goto :goto_0
.end method

.method public unregisterCallbacks()V
    .locals 1

    .prologue
    .line 986
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/fmservice/FmService;->mCallbacks:Lcom/miui/fmservice/IFmServiceCallback;

    .line 987
    return-void
.end method
