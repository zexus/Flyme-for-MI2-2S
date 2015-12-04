.class public Lcom/miui/fmradio/FmRecorder;
.super Ljava/lang/Object;
.source "FmRecorder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/FmRecorder$FmRecorderListener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mFmRecorderListener:Lcom/miui/fmradio/FmRecorder$FmRecorderListener;

.field private mLockSettings:Landroid/security/ChooseLockSettingsHelper;

.field private mOutFilePath:Ljava/lang/String;

.field private mRecorder:Lmiui/media/Mp3Recorder;

.field private mStorageMonitor:Lcom/miui/fmradio/FmStorageMonitor;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/miui/fmradio/FmRecorder;->mContext:Landroid/content/Context;

    .line 35
    new-instance v0, Landroid/security/ChooseLockSettingsHelper;

    invoke-direct {v0, p1}, Landroid/security/ChooseLockSettingsHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmRecorder;->mLockSettings:Landroid/security/ChooseLockSettingsHelper;

    .line 36
    return-void
.end method

.method static synthetic access$000(Lcom/miui/fmradio/FmRecorder;II)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmRecorder;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 12
    invoke-direct {p0, p1, p2}, Lcom/miui/fmradio/FmRecorder;->notifyRecordError(II)V

    return-void
.end method

.method private notifyRecordError(II)V
    .locals 1
    .param p1, "errCode"    # I
    .param p2, "what"    # I

    .prologue
    .line 145
    iget-object v0, p0, Lcom/miui/fmradio/FmRecorder;->mFmRecorderListener:Lcom/miui/fmradio/FmRecorder$FmRecorderListener;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/miui/fmradio/FmRecorder;->mFmRecorderListener:Lcom/miui/fmradio/FmRecorder$FmRecorderListener;

    invoke-interface {v0, p1, p2}, Lcom/miui/fmradio/FmRecorder$FmRecorderListener;->onRecordError(II)V

    .line 148
    :cond_0
    return-void
.end method

.method private notifyRecordStarted()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/miui/fmradio/FmRecorder;->mFmRecorderListener:Lcom/miui/fmradio/FmRecorder$FmRecorderListener;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lcom/miui/fmradio/FmRecorder;->mFmRecorderListener:Lcom/miui/fmradio/FmRecorder$FmRecorderListener;

    iget-object v1, p0, Lcom/miui/fmradio/FmRecorder;->mOutFilePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/miui/fmradio/FmRecorder$FmRecorderListener;->onRecordStarted(Ljava/lang/String;)V

    .line 142
    :cond_0
    return-void
.end method

.method private notifyRecordStoped()V
    .locals 2

    .prologue
    .line 151
    iget-object v0, p0, Lcom/miui/fmradio/FmRecorder;->mFmRecorderListener:Lcom/miui/fmradio/FmRecorder$FmRecorderListener;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/miui/fmradio/FmRecorder;->mFmRecorderListener:Lcom/miui/fmradio/FmRecorder$FmRecorderListener;

    iget-object v1, p0, Lcom/miui/fmradio/FmRecorder;->mOutFilePath:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/miui/fmradio/FmRecorder$FmRecorderListener;->onRecordStoped(Ljava/lang/String;)V

    .line 154
    :cond_0
    return-void
.end method


# virtual methods
.method public getRecordingTimeInMillis()J
    .locals 2

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/miui/fmradio/FmRecorder;->isRecording()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/fmradio/FmRecorder;->mRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v0}, Lmiui/media/Mp3Recorder;->getRecordingTimeInMillis()J

    move-result-wide v0

    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public isRecording()Z
    .locals 1

    .prologue
    .line 131
    iget-object v0, p0, Lcom/miui/fmradio/FmRecorder;->mRecorder:Lmiui/media/Mp3Recorder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setRecorderListener(Lcom/miui/fmradio/FmRecorder$FmRecorderListener;)V
    .locals 0
    .param p1, "l"    # Lcom/miui/fmradio/FmRecorder$FmRecorderListener;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/miui/fmradio/FmRecorder;->mFmRecorderListener:Lcom/miui/fmradio/FmRecorder$FmRecorderListener;

    .line 136
    return-void
.end method

.method public startRecord(ILjava/lang/String;)V
    .locals 7
    .param p1, "quality"    # I
    .param p2, "path"    # Ljava/lang/String;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 39
    iget-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mLockSettings:Landroid/security/ChooseLockSettingsHelper;

    invoke-virtual {v3}, Landroid/security/ChooseLockSettingsHelper;->isPrivacyModeEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 40
    const/4 v3, 0x3

    invoke-direct {p0, v3, v5}, Lcom/miui/fmradio/FmRecorder;->notifyRecordError(II)V

    .line 103
    :goto_0
    return-void

    .line 44
    :cond_0
    iget-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mRecorder:Lmiui/media/Mp3Recorder;

    if-eqz v3, :cond_1

    .line 45
    invoke-direct {p0, v5, v6}, Lcom/miui/fmradio/FmRecorder;->notifyRecordError(II)V

    .line 46
    invoke-virtual {p0}, Lcom/miui/fmradio/FmRecorder;->stopRecord()V

    goto :goto_0

    .line 50
    :cond_1
    iget-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mStorageMonitor:Lcom/miui/fmradio/FmStorageMonitor;

    if-nez v3, :cond_2

    .line 51
    new-instance v3, Lcom/miui/fmradio/FmStorageMonitor;

    iget-object v4, p0, Lcom/miui/fmradio/FmRecorder;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Lcom/miui/fmradio/FmStorageMonitor;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mStorageMonitor:Lcom/miui/fmradio/FmStorageMonitor;

    .line 53
    :cond_2
    iget-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mStorageMonitor:Lcom/miui/fmradio/FmStorageMonitor;

    new-instance v4, Lcom/miui/fmradio/FmRecorder$1;

    invoke-direct {v4, p0}, Lcom/miui/fmradio/FmRecorder$1;-><init>(Lcom/miui/fmradio/FmRecorder;)V

    invoke-virtual {v3, v4}, Lcom/miui/fmradio/FmStorageMonitor;->startMonitor(Lcom/miui/fmradio/FmStorageMonitor$Listener;)I

    move-result v1

    .line 61
    .local v1, "error":I
    if-eqz v1, :cond_3

    .line 62
    iget-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mStorageMonitor:Lcom/miui/fmradio/FmStorageMonitor;

    invoke-virtual {v3}, Lcom/miui/fmradio/FmStorageMonitor;->stopMonitor()V

    .line 63
    const/4 v3, 0x2

    invoke-direct {p0, v3, v1}, Lcom/miui/fmradio/FmRecorder;->notifyRecordError(II)V

    goto :goto_0

    .line 67
    :cond_3
    iput-object p2, p0, Lcom/miui/fmradio/FmRecorder;->mOutFilePath:Ljava/lang/String;

    .line 68
    new-instance v3, Lmiui/media/Mp3Recorder;

    invoke-direct {v3}, Lmiui/media/Mp3Recorder;-><init>()V

    iput-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mRecorder:Lmiui/media/Mp3Recorder;

    .line 69
    iget-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mRecorder:Lmiui/media/Mp3Recorder;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Lmiui/media/Mp3Recorder;->setAudioSource(I)V

    .line 70
    iget-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v3, p1}, Lmiui/media/Mp3Recorder;->setQuality(I)V

    .line 71
    iget-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mRecorder:Lmiui/media/Mp3Recorder;

    const/16 v4, 0x5622

    invoke-virtual {v3, v4}, Lmiui/media/Mp3Recorder;->setAudioSamplingRate(I)V

    .line 72
    iget-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mRecorder:Lmiui/media/Mp3Recorder;

    const/16 v4, 0x20

    invoke-virtual {v3, v4}, Lmiui/media/Mp3Recorder;->setOutBitRate(I)V

    .line 73
    iget-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v3, p2}, Lmiui/media/Mp3Recorder;->setOutputFile(Ljava/lang/String;)V

    .line 74
    iget-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mRecorder:Lmiui/media/Mp3Recorder;

    new-instance v4, Lcom/miui/fmradio/FmRecorder$2;

    invoke-direct {v4, p0}, Lcom/miui/fmradio/FmRecorder$2;-><init>(Lcom/miui/fmradio/FmRecorder;)V

    invoke-virtual {v3, v4}, Lmiui/media/Mp3Recorder;->setOnErrorListener(Lmiui/media/Mp3Recorder$RecordingErrorListener;)V

    .line 81
    const/4 v2, 0x0

    .line 83
    .local v2, "success":Z
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v3}, Lmiui/media/Mp3Recorder;->prepare()V

    .line 84
    iget-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v3}, Lmiui/media/Mp3Recorder;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 85
    const/4 v2, 0x1

    .line 90
    :goto_1
    if-eqz v2, :cond_4

    .line 91
    invoke-direct {p0}, Lcom/miui/fmradio/FmRecorder;->notifyRecordStarted()V

    goto :goto_0

    .line 86
    :catch_0
    move-exception v0

    .line 87
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "Fm:FmRecorder"

    const-string v4, "Start fm record failed!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 93
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    invoke-direct {p0, v5, v6}, Lcom/miui/fmradio/FmRecorder;->notifyRecordError(II)V

    .line 95
    :try_start_1
    iget-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v3}, Lmiui/media/Mp3Recorder;->stop()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    :goto_2
    iget-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v3}, Lmiui/media/Mp3Recorder;->release()V

    .line 100
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mRecorder:Lmiui/media/Mp3Recorder;

    goto/16 :goto_0

    .line 96
    :catch_1
    move-exception v0

    .line 97
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "Fm:FmRecorder"

    const-string v4, "Fm record start and stop failed!"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_2
.end method

.method public stopRecord()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 106
    iget-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mRecorder:Lmiui/media/Mp3Recorder;

    if-eqz v3, :cond_0

    .line 107
    iget-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mStorageMonitor:Lcom/miui/fmradio/FmStorageMonitor;

    invoke-virtual {v3}, Lcom/miui/fmradio/FmStorageMonitor;->stopMonitor()V

    .line 108
    iget-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v3}, Lmiui/media/Mp3Recorder;->getRecordingTimeInMillis()J

    move-result-wide v0

    .line 110
    .local v0, "duration":J
    :try_start_0
    iget-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v3}, Lmiui/media/Mp3Recorder;->stop()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 115
    :goto_0
    iget-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mRecorder:Lmiui/media/Mp3Recorder;

    invoke-virtual {v3}, Lmiui/media/Mp3Recorder;->release()V

    .line 116
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mRecorder:Lmiui/media/Mp3Recorder;

    .line 117
    invoke-direct {p0}, Lcom/miui/fmradio/FmRecorder;->notifyRecordStoped()V

    .line 120
    sget-boolean v3, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v3, :cond_0

    .line 121
    iget-object v3, p0, Lcom/miui/fmradio/FmRecorder;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/fmradio/FmRecorder;->mOutFilePath:Ljava/lang/String;

    invoke-static {v3, v4, v0, v1}, Lmiui/provider/Recordings;->notifyRecording(Landroid/content/Context;Ljava/lang/String;J)V

    .line 124
    .end local v0    # "duration":J
    :cond_0
    return-void

    .line 111
    .restart local v0    # "duration":J
    :catch_0
    move-exception v2

    .line 112
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "Fm:FmRecorder"

    const-string v4, "Stop fm record failed!"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 113
    invoke-direct {p0, v5, v5}, Lcom/miui/fmradio/FmRecorder;->notifyRecordError(II)V

    goto :goto_0
.end method
