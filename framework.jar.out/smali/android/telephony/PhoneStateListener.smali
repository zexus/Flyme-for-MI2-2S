.class public Landroid/telephony/PhoneStateListener;
.super Ljava/lang/Object;
.source "PhoneStateListener.java"


# static fields
.field private static final DBG:Z = false

.field public static final LISTEN_CALL_FORWARDING_INDICATOR:I = 0x8

.field public static final LISTEN_CALL_STATE:I = 0x20

.field public static final LISTEN_CELL_INFO:I = 0x400

.field public static final LISTEN_CELL_LOCATION:I = 0x10

.field public static final LISTEN_DATA_ACTIVITY:I = 0x80

.field public static final LISTEN_DATA_CONNECTION_REAL_TIME_INFO:I = 0x2000

.field public static final LISTEN_DATA_CONNECTION_STATE:I = 0x40

.field public static final LISTEN_MESSAGE_WAITING_INDICATOR:I = 0x4

.field public static final LISTEN_NONE:I = 0x0

.field public static final LISTEN_OEM_HOOK_RAW_EVENT:I = 0x8000

.field public static final LISTEN_OTASP_CHANGED:I = 0x200

.field public static final LISTEN_PRECISE_CALL_STATE:I = 0x800

.field public static final LISTEN_PRECISE_DATA_CONNECTION_STATE:I = 0x1000

.field public static final LISTEN_SERVICE_STATE:I = 0x1

.field public static final LISTEN_SIGNAL_STRENGTH:I = 0x2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final LISTEN_SIGNAL_STRENGTHS:I = 0x100

.field public static final LISTEN_VOLTE_STATE:I = 0x4000

.field private static final LOG_TAG:Ljava/lang/String; = "PhoneStateListener"


# instance fields
.field callback:Lcom/android/internal/telephony/IPhoneStateListener;

.field private final mHandler:Landroid/os/Handler;

.field protected mSubId:J


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 238
    const-wide v0, 0x7fffffffffffffffL

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/telephony/PhoneStateListener;-><init>(JLandroid/os/Looper;)V

    .line 239
    return-void
.end method

.method public constructor <init>(J)V
    .locals 1
    .param p1, "subId"    # J

    .prologue
    .line 257
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Landroid/telephony/PhoneStateListener;-><init>(JLandroid/os/Looper;)V

    .line 258
    return-void
.end method

.method public constructor <init>(JLandroid/os/Looper;)V
    .locals 3
    .param p1, "subId"    # J
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 272
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/telephony/PhoneStateListener;->mSubId:J

    .line 515
    new-instance v0, Landroid/telephony/PhoneStateListener$2;

    invoke-direct {v0, p0}, Landroid/telephony/PhoneStateListener$2;-><init>(Landroid/telephony/PhoneStateListener;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 274
    iput-wide p1, p0, Landroid/telephony/PhoneStateListener;->mSubId:J

    .line 275
    new-instance v0, Landroid/telephony/PhoneStateListener$1;

    invoke-direct {v0, p0, p3}, Landroid/telephony/PhoneStateListener$1;-><init>(Landroid/telephony/PhoneStateListener;Landroid/os/Looper;)V

    iput-object v0, p0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    .line 337
    return-void
.end method

.method public constructor <init>(Landroid/os/Looper;)V
    .locals 2
    .param p1, "looper"    # Landroid/os/Looper;

    .prologue
    .line 247
    const-wide v0, 0x7fffffffffffffffL

    invoke-direct {p0, v0, v1, p1}, Landroid/telephony/PhoneStateListener;-><init>(JLandroid/os/Looper;)V

    .line 248
    return-void
.end method

.method static synthetic access$000(Landroid/telephony/PhoneStateListener;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Landroid/telephony/PhoneStateListener;

    .prologue
    .line 52
    iget-object v0, p0, Landroid/telephony/PhoneStateListener;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 590
    const-string v0, "PhoneStateListener"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    return-void
.end method


# virtual methods
.method public getSubId()J
    .locals 2

    .prologue
    .line 596
    iget-wide v0, p0, Landroid/telephony/PhoneStateListener;->mSubId:J

    return-wide v0
.end method

.method public onCallForwardingIndicatorChanged(Z)V
    .locals 0
    .param p1, "cfi"    # Z

    .prologue
    .line 377
    return-void
.end method

.method public onCallStateChanged(ILjava/lang/String;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "incomingNumber"    # Ljava/lang/String;

    .prologue
    .line 395
    return-void
.end method

.method public onCellInfoChanged(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 461
    .local p1, "cellInfo":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    return-void
.end method

.method public onCellLocationChanged(Landroid/telephony/CellLocation;)V
    .locals 0
    .param p1, "location"    # Landroid/telephony/CellLocation;

    .prologue
    .line 384
    return-void
.end method

.method public onDataActivity(I)V
    .locals 0
    .param p1, "direction"    # I

    .prologue
    .line 426
    return-void
.end method

.method public onDataConnectionRealTimeInfoChanged(Landroid/telephony/DataConnectionRealTimeInfo;)V
    .locals 0
    .param p1, "dcRtInfo"    # Landroid/telephony/DataConnectionRealTimeInfo;

    .prologue
    .line 490
    return-void
.end method

.method public onDataConnectionStateChanged(I)V
    .locals 0
    .param p1, "state"    # I

    .prologue
    .line 407
    return-void
.end method

.method public onDataConnectionStateChanged(II)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 413
    return-void
.end method

.method public onMessageWaitingIndicatorChanged(Z)V
    .locals 0
    .param p1, "mwi"    # Z

    .prologue
    .line 370
    return-void
.end method

.method public onOemHookRawEvent([B)V
    .locals 0
    .param p1, "rawData"    # [B

    .prologue
    .line 509
    return-void
.end method

.method public onOtaspChanged(I)V
    .locals 0
    .param p1, "otaspMode"    # I

    .prologue
    .line 453
    return-void
.end method

.method public onPreciseCallStateChanged(Landroid/telephony/PreciseCallState;)V
    .locals 0
    .param p1, "callState"    # Landroid/telephony/PreciseCallState;

    .prologue
    .line 470
    return-void
.end method

.method public onPreciseDataConnectionStateChanged(Landroid/telephony/PreciseDataConnectionState;)V
    .locals 0
    .param p1, "dataConnectionState"    # Landroid/telephony/PreciseDataConnectionState;

    .prologue
    .line 480
    return-void
.end method

.method public onServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .param p1, "serviceState"    # Landroid/telephony/ServiceState;

    .prologue
    .line 349
    return-void
.end method

.method public onSignalStrengthChanged(I)V
    .locals 0
    .param p1, "asu"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 363
    return-void
.end method

.method public onSignalStrengthsChanged(Landroid/telephony/SignalStrength;)V
    .locals 0
    .param p1, "signalStrength"    # Landroid/telephony/SignalStrength;

    .prologue
    .line 438
    return-void
.end method

.method public onVoLteServiceStateChanged(Landroid/telephony/VoLteServiceState;)V
    .locals 0
    .param p1, "stateInfo"    # Landroid/telephony/VoLteServiceState;

    .prologue
    .line 499
    return-void
.end method

.method public setSubId(J)V
    .locals 1
    .param p1, "mSubId"    # J

    .prologue
    .line 601
    iput-wide p1, p0, Landroid/telephony/PhoneStateListener;->mSubId:J

    .line 602
    return-void
.end method

.method public updateSubscription(I)I
    .locals 4
    .param p1, "subscription"    # I

    .prologue
    .line 262
    iget-wide v2, p0, Landroid/telephony/PhoneStateListener;->mSubId:J

    long-to-int v0, v2

    .line 263
    .local v0, "old":I
    int-to-long v2, p1

    iput-wide v2, p0, Landroid/telephony/PhoneStateListener;->mSubId:J

    .line 264
    return v0
.end method
