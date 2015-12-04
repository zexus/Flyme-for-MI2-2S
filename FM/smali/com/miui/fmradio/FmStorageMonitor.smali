.class public Lcom/miui/fmradio/FmStorageMonitor;
.super Ljava/lang/Object;
.source "FmStorageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/FmStorageMonitor$Listener;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mListener:Lcom/miui/fmradio/FmStorageMonitor$Listener;

.field private mReceiver:Landroid/content/BroadcastReceiver;

.field private mReceiverRegistered:Z

.field time:J


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    new-instance v0, Lcom/miui/fmradio/FmStorageMonitor$1;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/miui/fmradio/FmStorageMonitor$1;-><init>(Lcom/miui/fmradio/FmStorageMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmStorageMonitor;->mHandler:Landroid/os/Handler;

    .line 41
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/fmradio/FmStorageMonitor;->mReceiverRegistered:Z

    .line 42
    new-instance v0, Lcom/miui/fmradio/FmStorageMonitor$2;

    invoke-direct {v0, p0}, Lcom/miui/fmradio/FmStorageMonitor$2;-><init>(Lcom/miui/fmradio/FmStorageMonitor;)V

    iput-object v0, p0, Lcom/miui/fmradio/FmStorageMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 54
    iput-object p1, p0, Lcom/miui/fmradio/FmStorageMonitor;->mContext:Landroid/content/Context;

    .line 55
    return-void
.end method

.method static synthetic access$000(Lcom/miui/fmradio/FmStorageMonitor;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/fmradio/FmStorageMonitor;

    .prologue
    .line 16
    invoke-direct {p0}, Lcom/miui/fmradio/FmStorageMonitor;->checkStorageSpace()V

    return-void
.end method

.method static synthetic access$100(Lcom/miui/fmradio/FmStorageMonitor;)Lcom/miui/fmradio/FmStorageMonitor$Listener;
    .locals 1
    .param p0, "x0"    # Lcom/miui/fmradio/FmStorageMonitor;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/miui/fmradio/FmStorageMonitor;->mListener:Lcom/miui/fmradio/FmStorageMonitor$Listener;

    return-object v0
.end method

.method private checkStorageSpace()V
    .locals 4

    .prologue
    .line 66
    invoke-direct {p0}, Lcom/miui/fmradio/FmStorageMonitor;->isStorageSpaceLow()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 67
    iget-object v0, p0, Lcom/miui/fmradio/FmStorageMonitor;->mListener:Lcom/miui/fmradio/FmStorageMonitor$Listener;

    if-eqz v0, :cond_0

    .line 68
    iget-object v0, p0, Lcom/miui/fmradio/FmStorageMonitor;->mListener:Lcom/miui/fmradio/FmStorageMonitor$Listener;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/miui/fmradio/FmStorageMonitor$Listener;->onError(I)V

    .line 70
    :cond_0
    invoke-virtual {p0}, Lcom/miui/fmradio/FmStorageMonitor;->stopMonitor()V

    .line 75
    :goto_0
    return-void

    .line 72
    :cond_1
    iget-object v0, p0, Lcom/miui/fmradio/FmStorageMonitor;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    const-wide/32 v2, 0xea60

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private isStorageSpaceLow()Z
    .locals 10

    .prologue
    .line 58
    new-instance v4, Landroid/os/StatFs;

    invoke-static {}, Lmiui/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 60
    .local v4, "stats":Landroid/os/StatFs;
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSize()I

    move-result v5

    int-to-long v2, v5

    .line 61
    .local v2, "blockSize":J
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v5

    int-to-long v0, v5

    .line 62
    .local v0, "availableBlocks":J
    mul-long v6, v0, v2

    const-wide/32 v8, 0x100000

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    return v5

    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method


# virtual methods
.method public startMonitor(Lcom/miui/fmradio/FmStorageMonitor$Listener;)I
    .locals 6
    .param p1, "listener"    # Lcom/miui/fmradio/FmStorageMonitor$Listener;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 79
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/miui/fmradio/FmStorageMonitor;->time:J

    .line 80
    invoke-static {}, Lmiui/os/Environment;->isExternalStorageMounted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 81
    const/4 v1, 0x2

    .line 99
    :cond_0
    :goto_0
    return v1

    .line 84
    :cond_1
    invoke-direct {p0}, Lcom/miui/fmradio/FmStorageMonitor;->isStorageSpaceLow()Z

    move-result v3

    if-nez v3, :cond_0

    .line 88
    if-eqz p1, :cond_2

    .line 89
    iput-object p1, p0, Lcom/miui/fmradio/FmStorageMonitor;->mListener:Lcom/miui/fmradio/FmStorageMonitor$Listener;

    .line 90
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 91
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string v3, "android.intent.action.MEDIA_EJECT"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 92
    const-string v3, "android.intent.action.MEDIA_UNMOUNTED"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 93
    const-string v3, "file"

    invoke-virtual {v0, v3}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 94
    iget-object v3, p0, Lcom/miui/fmradio/FmStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/miui/fmradio/FmStorageMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v4, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 95
    iput-boolean v1, p0, Lcom/miui/fmradio/FmStorageMonitor;->mReceiverRegistered:Z

    .line 96
    iget-object v1, p0, Lcom/miui/fmradio/FmStorageMonitor;->mHandler:Landroid/os/Handler;

    const-wide/32 v4, 0xea60

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_2
    move v1, v2

    .line 99
    goto :goto_0
.end method

.method public stopMonitor()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 103
    iget-object v0, p0, Lcom/miui/fmradio/FmStorageMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 104
    iget-boolean v0, p0, Lcom/miui/fmradio/FmStorageMonitor;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/miui/fmradio/FmStorageMonitor;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/miui/fmradio/FmStorageMonitor;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 106
    iput-boolean v2, p0, Lcom/miui/fmradio/FmStorageMonitor;->mReceiverRegistered:Z

    .line 108
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/fmradio/FmStorageMonitor;->mListener:Lcom/miui/fmradio/FmStorageMonitor$Listener;

    .line 109
    return-void
.end method
