.class public Lcom/android/camera/SensorStateManager;
.super Ljava/lang/Object;
.source "SensorStateManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/SensorStateManager$MainHandler;,
        Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;,
        Lcom/android/camera/SensorStateManager$SensorStateListener;
    }
.end annotation


# static fields
.field private static final CAPTURE_POSTURE_DEGREE:I

.field private static final GYROSCOPE_MOVING_THRESHOLD:D

.field private static final GYROSCOPE_STABLE_THRESHOLD:D


# instance fields
.field private final mAccelerometerSensor:Landroid/hardware/Sensor;

.field private mAccelerometerSensorEventListenerImpl:Landroid/hardware/SensorEventListener;

.field private mAccelerometerTag:I

.field private mAccelerometerTimeStamp:J

.field private mAngleSpeed:[D

.field private mAngleSpeedIndex:I

.field private mAngleTotal:D

.field private mCapturePosture:I

.field private mDeviceStable:Z

.field private mEdgeTouchEnabled:Z

.field private mFocusSensorEnabled:Z

.field private mGradienterEnabled:Z

.field private final mGyroscope:Landroid/hardware/Sensor;

.field private mGyroscopeListener:Landroid/hardware/SensorEventListener;

.field private mGyroscopeTimeStamp:J

.field private mHandler:Landroid/os/Handler;

.field private mIsLying:Z

.field private mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

.field private final mLinearAccelerometer:Landroid/hardware/Sensor;

.field private mOrientation:F

.field private final mOrientationSensor:Landroid/hardware/Sensor;

.field private mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mRate:I

.field private mSensorListenerThread:Landroid/os/HandlerThread;

.field private final mSensorManager:Landroid/hardware/SensorManager;

.field private mSensorRegister:I

.field private mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

.field private mThreadHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x41200000    # 10.0f

    .line 30
    const-string v0, "camera_stable_threshold"

    const/16 v1, 0x9

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-double v0, v0

    sput-wide v0, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    .line 31
    const-string v0, "camera_moving_threshold"

    const/16 v1, 0xf

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    div-float/2addr v0, v2

    float-to-double v0, v0

    sput-wide v0, Lcom/android/camera/SensorStateManager;->GYROSCOPE_MOVING_THRESHOLD:D

    .line 44
    const-string v0, "capture_degree"

    const/16 v1, 0x2d

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/camera/SensorStateManager;->CAPTURE_POSTURE_DEGREE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Looper;)V
    .locals 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    const-wide/16 v8, 0x0

    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/high16 v0, -0x40800000    # -1.0f

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mOrientation:F

    .line 50
    iput-boolean v4, p0, Lcom/android/camera/SensorStateManager;->mIsLying:Z

    .line 51
    iput v4, p0, Lcom/android/camera/SensorStateManager;->mCapturePosture:I

    .line 61
    iput v4, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTag:I

    .line 62
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    .line 63
    const/4 v0, 0x5

    new-array v0, v0, [D

    sget-wide v2, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    aput-wide v2, v0, v4

    sget-wide v2, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    aput-wide v2, v0, v5

    const/4 v1, 0x2

    sget-wide v2, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    aput-wide v2, v0, v1

    sget-wide v2, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    aput-wide v2, v0, v6

    sget-wide v2, Lcom/android/camera/SensorStateManager;->GYROSCOPE_STABLE_THRESHOLD:D

    aput-wide v2, v0, v7

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeed:[D

    .line 67
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    .line 68
    iput-wide v8, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTimeStamp:J

    .line 69
    iput-wide v8, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeTimeStamp:J

    .line 270
    new-instance v0, Lcom/android/camera/SensorStateManager$1;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorStateManager$1;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    .line 311
    new-instance v0, Lcom/android/camera/SensorStateManager$2;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorStateManager$2;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    .line 385
    new-instance v0, Lcom/android/camera/SensorStateManager$3;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorStateManager$3;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensorEventListenerImpl:Landroid/hardware/SensorEventListener;

    .line 89
    const-string v0, "sensor"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    .line 90
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerometer:Landroid/hardware/Sensor;

    .line 91
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v7}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mGyroscope:Landroid/hardware/Sensor;

    .line 92
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v6}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 93
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v0, v5}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    .line 94
    new-instance v0, Lcom/android/camera/SensorStateManager$MainHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/camera/SensorStateManager$MainHandler;-><init>(Lcom/android/camera/SensorStateManager;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    .line 96
    const/16 v0, 0x7530

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mRate:I

    .line 97
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 99
    new-instance v0, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;

    invoke-direct {v0, p0}, Lcom/android/camera/SensorStateManager$OrientationSensorEventListenerImpl;-><init>(Lcom/android/camera/SensorStateManager;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 101
    :cond_0
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "SensorListenerThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    .line 102
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 103
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/SensorStateManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$002(Lcom/android/camera/SensorStateManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # J

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$100(Lcom/android/camera/SensorStateManager;)Lcom/android/camera/SensorStateManager$SensorStateListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/camera/SensorStateManager;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # I

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/camera/SensorStateManager;->changeCapturePosture(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/camera/SensorStateManager;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mIsLying:Z

    return v0
.end method

.method static synthetic access$1102(Lcom/android/camera/SensorStateManager;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # Z

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mIsLying:Z

    return p1
.end method

.method static synthetic access$1200(Lcom/android/camera/SensorStateManager;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mOrientation:F

    return v0
.end method

.method static synthetic access$1202(Lcom/android/camera/SensorStateManager;F)F
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # F

    .prologue
    .line 18
    iput p1, p0, Lcom/android/camera/SensorStateManager;->mOrientation:F

    return p1
.end method

.method static synthetic access$1300(Lcom/android/camera/SensorStateManager;F)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # F

    .prologue
    .line 18
    invoke-direct {p0, p1}, Lcom/android/camera/SensorStateManager;->normalizeDegree(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$1400(Lcom/android/camera/SensorStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->deviceBecomeStable()V

    return-void
.end method

.method static synthetic access$1500(Lcom/android/camera/SensorStateManager;IZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # I
    .param p2, "x2"    # Z

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/camera/SensorStateManager;->update(IZ)V

    return-void
.end method

.method static synthetic access$200()D
    .locals 2

    .prologue
    .line 18
    sget-wide v0, Lcom/android/camera/SensorStateManager;->GYROSCOPE_MOVING_THRESHOLD:D

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/camera/SensorStateManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/SensorStateManager;->deviceBeginMoving()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/SensorStateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    return v0
.end method

.method static synthetic access$402(Lcom/android/camera/SensorStateManager;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # I

    .prologue
    .line 18
    iput p1, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    return p1
.end method

.method static synthetic access$404(Lcom/android/camera/SensorStateManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeedIndex:I

    return v0
.end method

.method static synthetic access$500(Lcom/android/camera/SensorStateManager;)[D
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mAngleSpeed:[D

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/SensorStateManager;)D
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    return-wide v0
.end method

.method static synthetic access$602(Lcom/android/camera/SensorStateManager;D)D
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # D

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    return-wide p1
.end method

.method static synthetic access$618(Lcom/android/camera/SensorStateManager;D)D
    .locals 3
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # D

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    add-double/2addr v0, p1

    iput-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    return-wide v0
.end method

.method static synthetic access$700(Lcom/android/camera/SensorStateManager;D)V
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # D

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/camera/SensorStateManager;->deviceKeepMoving(D)V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/SensorStateManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTimeStamp:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/camera/SensorStateManager;J)J
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SensorStateManager;
    .param p1, "x1"    # J

    .prologue
    .line 18
    iput-wide p1, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTimeStamp:J

    return-wide p1
.end method

.method static synthetic access$900()I
    .locals 1

    .prologue
    .line 18
    sget v0, Lcom/android/camera/SensorStateManager;->CAPTURE_POSTURE_DEGREE:I

    return v0
.end method

.method private changeCapturePosture(I)V
    .locals 1
    .param p1, "posture"    # I

    .prologue
    .line 517
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mCapturePosture:I

    if-eq v0, p1, :cond_0

    .line 518
    iput p1, p0, Lcom/android/camera/SensorStateManager;->mCapturePosture:I

    .line 519
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    if-eqz v0, :cond_0

    .line 520
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-interface {v0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->notifyDevicePostureChanged()V

    .line 523
    :cond_0
    return-void
.end method

.method private deviceBecomeStable()V
    .locals 1

    .prologue
    .line 482
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 483
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-interface {v0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceBecomeStable()V

    .line 486
    :cond_0
    return-void
.end method

.method private deviceBeginMoving()V
    .locals 1

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-interface {v0}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceBeginMoving()V

    .line 478
    return-void
.end method

.method private deviceKeepMoving(D)V
    .locals 1
    .param p1, "a"    # D

    .prologue
    .line 494
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v0, :cond_0

    .line 495
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    invoke-interface {v0, p1, p2}, Lcom/android/camera/SensorStateManager$SensorStateListener;->onDeviceKeepMoving(D)V

    .line 497
    :cond_0
    return-void
.end method

.method private isContains(II)Z
    .locals 1
    .param p1, "total"    # I
    .param p2, "special"    # I

    .prologue
    .line 238
    and-int v0, p1, p2

    if-ne v0, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isPartialContains(II)Z
    .locals 1
    .param p1, "total"    # I
    .param p2, "special"    # I

    .prologue
    .line 242
    and-int v0, p1, p2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private normalizeDegree(F)F
    .locals 2
    .param p1, "degree"    # F

    .prologue
    const/high16 v1, 0x43b40000    # 360.0f

    .line 451
    :goto_0
    cmpl-float v0, p1, v1

    if-ltz v0, :cond_0

    .line 452
    sub-float/2addr p1, v1

    goto :goto_0

    .line 454
    :cond_0
    :goto_1
    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 455
    add-float/2addr p1, v1

    goto :goto_1

    .line 457
    :cond_1
    return p1
.end method

.method private update(IZ)V
    .locals 1
    .param p1, "sensor"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 151
    if-nez p2, :cond_1

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/SensorStateManager;->isPartialContains(II)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 152
    invoke-virtual {p0, p1}, Lcom/android/camera/SensorStateManager;->unregister(I)V

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 153
    :cond_1
    if-eqz p2, :cond_0

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 154
    invoke-virtual {p0, p1}, Lcom/android/camera/SensorStateManager;->register(I)V

    goto :goto_0
.end method


# virtual methods
.method public getCapturePosture()I
    .locals 1

    .prologue
    .line 473
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mCapturePosture:I

    return v0
.end method

.method public isDeviceLying()Z
    .locals 1

    .prologue
    .line 468
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mIsLying:Z

    return v0
.end method

.method public onDestory()V
    .locals 1

    .prologue
    .line 526
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 527
    return-void
.end method

.method public register()V
    .locals 2

    .prologue
    .line 159
    const/4 v0, 0x0

    .line 160
    .local v0, "sensor":I
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v1, :cond_0

    .line 161
    const/4 v1, 0x1

    or-int/lit8 v0, v1, 0x2

    .line 163
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    if-eqz v1, :cond_1

    .line 164
    or-int/lit8 v1, v0, 0x2

    or-int/lit8 v0, v1, 0x4

    .line 166
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-eqz v1, :cond_2

    .line 167
    or-int/lit8 v1, v0, 0x8

    or-int/lit8 v0, v1, 0x4

    .line 169
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/camera/SensorStateManager;->register(I)V

    .line 170
    return-void
.end method

.method public register(I)V
    .locals 7
    .param p1, "sensor"    # I

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x4

    const/4 v4, 0x1

    const/4 v3, 0x2

    .line 173
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 174
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mThreadHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    const/16 v0, 0xc

    invoke-direct {p0, p1, v0}, Lcom/android/camera/SensorStateManager;->isPartialContains(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 176
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mSensorListenerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/SensorStateManager;->mThreadHandler:Landroid/os/Handler;

    .line 179
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v0, :cond_1

    .line 180
    iput-boolean v4, p0, Lcom/android/camera/SensorStateManager;->mDeviceStable:Z

    .line 181
    or-int/lit8 v0, p1, 0x1

    or-int/lit8 p1, v0, 0x2

    .line 182
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 184
    :cond_1
    invoke-direct {p0, p1, v3}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v3}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-nez v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mGyroscope:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 186
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    .line 188
    :cond_2
    invoke-direct {p0, p1, v4}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v4}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 189
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerometer:Landroid/hardware/Sensor;

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 190
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    .line 192
    :cond_3
    invoke-direct {p0, p1, v5}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v5}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-nez v0, :cond_4

    .line 193
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/camera/SensorStateManager;->mRate:I

    iget-object v4, p0, Lcom/android/camera/SensorStateManager;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 194
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    .line 196
    :cond_4
    invoke-direct {p0, p1, v6}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v6}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-nez v0, :cond_5

    .line 197
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensorEventListenerImpl:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensor:Landroid/hardware/Sensor;

    iget v3, p0, Lcom/android/camera/SensorStateManager;->mRate:I

    iget-object v4, p0, Lcom/android/camera/SensorStateManager;->mThreadHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;ILandroid/os/Handler;)Z

    .line 198
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    .line 201
    :cond_5
    return-void
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 246
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 247
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/SensorStateManager;->mAngleTotal:D

    .line 248
    iput-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mDeviceStable:Z

    .line 249
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerTag:I

    .line 250
    return-void
.end method

.method public setEdgeTouchEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 135
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    if-eq v1, p1, :cond_2

    .line 136
    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    .line 137
    const/4 v0, 0x6

    .line 138
    .local v0, "sensor":I
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    if-nez v1, :cond_1

    .line 139
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-eqz v1, :cond_0

    .line 140
    and-int/lit8 v0, v0, -0x5

    .line 142
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v1, :cond_1

    .line 143
    and-int/lit8 v0, v0, -0x3

    .line 146
    :cond_1
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    invoke-direct {p0, v0, v1}, Lcom/android/camera/SensorStateManager;->update(IZ)V

    .line 148
    .end local v0    # "sensor":I
    :cond_2
    return-void
.end method

.method public setFocusSensorEnabled(Z)V
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v4, 0x2

    .line 110
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eq v1, p1, :cond_1

    .line 111
    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    .line 112
    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 113
    const/4 v0, 0x3

    .line 114
    .local v0, "sensor":I
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    if-eqz v1, :cond_0

    .line 115
    and-int/lit8 v0, v0, -0x3

    .line 117
    :cond_0
    iget-object v2, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v4, v0, v1}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v4, 0x3e8

    invoke-virtual {v2, v1, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 121
    .end local v0    # "sensor":I
    :cond_1
    return-void

    .line 117
    .restart local v0    # "sensor":I
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setGradienterEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 124
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-eq v1, p1, :cond_1

    .line 125
    iput-boolean p1, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    .line 126
    const/16 v0, 0xc

    .line 127
    .local v0, "sensor":I
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    if-eqz v1, :cond_0

    .line 128
    and-int/lit8 v0, v0, -0x5

    .line 130
    :cond_0
    iget-boolean v1, p0, Lcom/android/camera/SensorStateManager;->mGradienterEnabled:Z

    invoke-direct {p0, v0, v1}, Lcom/android/camera/SensorStateManager;->update(IZ)V

    .line 132
    .end local v0    # "sensor":I
    :cond_1
    return-void
.end method

.method public setSensorStateListener(Lcom/android/camera/SensorStateManager$SensorStateListener;)V
    .locals 0
    .param p1, "l"    # Lcom/android/camera/SensorStateManager$SensorStateListener;

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/camera/SensorStateManager;->mSensorStateListener:Lcom/android/camera/SensorStateManager$SensorStateListener;

    .line 107
    return-void
.end method

.method public unregister(I)V
    .locals 6
    .param p1, "sensor"    # I

    .prologue
    const/16 v5, 0x8

    const/4 v4, 0x4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v1, 0x2

    .line 204
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    if-eqz v0, :cond_6

    .line 205
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-eqz v0, :cond_0

    const/16 v0, 0xf

    if-ne p1, v0, :cond_2

    .line 207
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mFocusSensorEnabled:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 208
    or-int/lit8 p1, p1, 0x1

    .line 209
    iget-boolean v0, p0, Lcom/android/camera/SensorStateManager;->mEdgeTouchEnabled:Z

    if-nez v0, :cond_1

    .line 210
    or-int/lit8 p1, p1, 0x2

    .line 213
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/SensorStateManager;->reset()V

    .line 214
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 216
    :cond_2
    invoke-direct {p0, p1, v1}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v1}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 217
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mGyroscopeListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 218
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    .line 220
    :cond_3
    invoke-direct {p0, p1, v3}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v3}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 221
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mLinearAccelerationListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 222
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    .line 224
    :cond_4
    invoke-direct {p0, p1, v4}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_5

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v4}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 225
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 226
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    .line 227
    iput-boolean v2, p0, Lcom/android/camera/SensorStateManager;->mIsLying:Z

    .line 228
    invoke-direct {p0, v2}, Lcom/android/camera/SensorStateManager;->changeCapturePosture(I)V

    .line 230
    :cond_5
    invoke-direct {p0, p1, v5}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    invoke-direct {p0, v0, v5}, Lcom/android/camera/SensorStateManager;->isContains(II)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 231
    iget-object v0, p0, Lcom/android/camera/SensorStateManager;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/android/camera/SensorStateManager;->mAccelerometerSensorEventListenerImpl:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 232
    iget v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Lcom/android/camera/SensorStateManager;->mSensorRegister:I

    .line 235
    :cond_6
    return-void
.end method
