.class public Lcom/miui/compass/CompassActivity;
.super Lmiui/app/Activity;
.source "CompassActivity.java"


# static fields
.field private static final SensorManager_calibrateSensor:Lmiui/reflect/Method;


# instance fields
.field private final CALIBRATE_INTERVAL:I

.field private final SCREEN_INDEX_COMPASS:I

.field private final SCREEN_INDEX_GRADIENTER:I

.field private final SPEED_SHRESHOLD:I

.field private final UPTATE_INTERVAL_TIME:I

.field private mAltCannotCalibrate:Z

.field private mAltitudeTextView:Landroid/widget/TextView;

.field private mAltitudeTipDialog:Landroid/app/AlertDialog;

.field private mCalibratAltitudeDialog:Landroid/app/ProgressDialog;

.field private mCameraMask:Landroid/widget/ImageView;

.field private mCameraMaskIn:Landroid/view/animation/Animation;

.field private mCameraMaskOut:Landroid/view/animation/Animation;

.field private mCameraView:Lcom/miui/compass/CameraView;

.field private mCompassDataManager:Lcom/miui/compass/CompassDataManager;

.field private mCompassDataObserver:Lcom/miui/compass/CompassDataManager$CompassDataObserver;

.field private mCompassScreen:Lcom/miui/compass/CompassScreen;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mDialog:Landroid/app/AlertDialog;

.field private mDirection:F

.field private mFirstUsingDialog:Landroid/app/AlertDialog;

.field private mGradienterScreen:Lcom/miui/compass/GradienterScreen;

.field private mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

.field private mImgAltitudeTip:Landroid/widget/ImageView;

.field private mImgTutorial:Landroid/widget/ImageView;

.field private mIsCalibrating:Z

.field private mIsLocalServiceDialogShown:Z

.field private mLastCalibrateSucessTime:J

.field private mLastLogTime:J

.field private mLastShakeX:F

.field private mLastShakeY:F

.field private mLastShakeZ:F

.field private mLastUnreliableTime:J

.field private mLastUpdateTime:J

.field private mLocationLatitudeDegreeTextView:Landroid/widget/TextView;

.field private mLocationLatitudeTextView:Landroid/widget/TextView;

.field private mLocationLongitudeDegreeTextView:Landroid/widget/TextView;

.field private mLocationLongitudeTextView:Landroid/widget/TextView;

.field private mLocationServiceDialog:Landroid/app/AlertDialog;

.field private mLytAltitude:Landroid/widget/LinearLayout;

.field private mLytTutorial:Landroid/widget/LinearLayout;

.field private mOrientationSensor:Landroid/hardware/Sensor;

.field private mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

.field private mPressureTextView:Landroid/widget/TextView;

.field private mRotation3DLayout:Lmiui/widget/Rotation3DLayout;

.field private mScreen:Lmiui/widget/ScreenView;

.field private mSensorManager:Landroid/hardware/SensorManager;

.field private mShakSensorListener:Landroid/hardware/SensorEventListener;

.field private mTiltRotateView:Lcom/miui/compass/RotateView;

.field private mTiltViewLayout:Landroid/view/View;

.field private mTutorialAnimation:Lcom/miui/compass/TutorialAnimation;

.field private mVibrator:Landroid/os/Vibrator;

.field private mViewAttached:Z


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 48
    const/4 v1, 0x0

    .line 50
    .local v1, "method":Lmiui/reflect/Method;
    :try_start_0
    const-class v2, Landroid/hardware/SensorManager;

    const-string v3, "calibrateSensor"

    const-string v4, "(Landroid/hardware/Sensor;)Z"

    invoke-static {v2, v3, v4}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 54
    :goto_0
    sput-object v1, Lcom/miui/compass/CompassActivity;->SensorManager_calibrateSensor:Lmiui/reflect/Method;

    .line 55
    return-void

    .line 51
    :catch_0
    move-exception v0

    .line 52
    .local v0, "e":Lmiui/reflect/NoSuchMethodException;
    const-string v2, "Compass:CompassActivity"

    const-string v3, "Could not get method:setParameter"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-direct {p0}, Lmiui/app/Activity;-><init>()V

    .line 62
    iput v1, p0, Lcom/miui/compass/CompassActivity;->SCREEN_INDEX_COMPASS:I

    .line 63
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/compass/CompassActivity;->SCREEN_INDEX_GRADIENTER:I

    .line 65
    const/16 v0, 0xbb8

    iput v0, p0, Lcom/miui/compass/CompassActivity;->CALIBRATE_INTERVAL:I

    .line 112
    const/16 v0, 0x1518

    iput v0, p0, Lcom/miui/compass/CompassActivity;->SPEED_SHRESHOLD:I

    .line 113
    const/16 v0, 0x32

    iput v0, p0, Lcom/miui/compass/CompassActivity;->UPTATE_INTERVAL_TIME:I

    .line 117
    iput-boolean v1, p0, Lcom/miui/compass/CompassActivity;->mIsLocalServiceDialogShown:Z

    .line 354
    new-instance v0, Lcom/miui/compass/CompassActivity$5;

    invoke-direct {v0, p0}, Lcom/miui/compass/CompassActivity$5;-><init>(Lcom/miui/compass/CompassActivity;)V

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    .line 615
    new-instance v0, Lcom/miui/compass/CompassActivity$12;

    invoke-direct {v0, p0}, Lcom/miui/compass/CompassActivity$12;-><init>(Lcom/miui/compass/CompassActivity;)V

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mCompassDataObserver:Lcom/miui/compass/CompassDataManager$CompassDataObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/miui/compass/CompassActivity;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCameraMask:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/miui/compass/CompassActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mAltCannotCalibrate:Z

    return v0
.end method

.method static synthetic access$1000(Lcom/miui/compass/CompassActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;
    .param p1, "x1"    # I

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/compass/CompassActivity;->checkCompassAccuracy(I)V

    return-void
.end method

.method static synthetic access$1100(Lcom/miui/compass/CompassActivity;)Lcom/miui/compass/CameraView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCameraView:Lcom/miui/compass/CameraView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/miui/compass/CompassActivity;)Lmiui/widget/ScreenView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mScreen:Lmiui/widget/ScreenView;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/miui/compass/CompassActivity;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCameraMaskOut:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/miui/compass/CompassActivity;)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCameraMaskIn:Landroid/view/animation/Animation;

    return-object v0
.end method

.method static synthetic access$1500(Lcom/miui/compass/CompassActivity;)Lcom/miui/compass/CompassDataManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    return-object v0
.end method

.method static synthetic access$1600(Lcom/miui/compass/CompassActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->startCompass()V

    return-void
.end method

.method static synthetic access$1700(Lcom/miui/compass/CompassActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mPressureTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$1800(Lcom/miui/compass/CompassActivity;Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;
    .param p1, "x1"    # Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/compass/CompassActivity;->updateAltitude(Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;)V

    return-void
.end method

.method static synthetic access$1900(Lcom/miui/compass/CompassActivity;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mAltitudeTextView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/compass/CompassActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->showAltitudeTipDialog()V

    return-void
.end method

.method static synthetic access$2000(Lcom/miui/compass/CompassActivity;)Landroid/widget/LinearLayout;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLytAltitude:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/miui/compass/CompassActivity;DD)V
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;
    .param p1, "x1"    # D
    .param p3, "x2"    # D

    .prologue
    .line 43
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/compass/CompassActivity;->updateLocation(DD)V

    return-void
.end method

.method static synthetic access$2200(Lcom/miui/compass/CompassActivity;)Landroid/app/ProgressDialog;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCalibratAltitudeDialog:Landroid/app/ProgressDialog;

    return-object v0
.end method

.method static synthetic access$2300(Lcom/miui/compass/CompassActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->showCalibratAltitudeDialog()V

    return-void
.end method

.method static synthetic access$2400(Lcom/miui/compass/CompassActivity;Landroid/hardware/SensorEvent;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;
    .param p1, "x1"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Lcom/miui/compass/CompassActivity;->checkShake(Landroid/hardware/SensorEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$2500(Lcom/miui/compass/CompassActivity;)J
    .locals 2
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    iget-wide v0, p0, Lcom/miui/compass/CompassActivity;->mLastCalibrateSucessTime:J

    return-wide v0
.end method

.method static synthetic access$2600(Lcom/miui/compass/CompassActivity;)Landroid/hardware/SensorManager;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mSensorManager:Landroid/hardware/SensorManager;

    return-object v0
.end method

.method static synthetic access$2700(Lcom/miui/compass/CompassActivity;)Landroid/hardware/Sensor;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensor:Landroid/hardware/Sensor;

    return-object v0
.end method

.method static synthetic access$2800()Lmiui/reflect/Method;
    .locals 1

    .prologue
    .line 43
    sget-object v0, Lcom/miui/compass/CompassActivity;->SensorManager_calibrateSensor:Lmiui/reflect/Method;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/miui/compass/CompassActivity;)Landroid/os/Vibrator;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mVibrator:Landroid/os/Vibrator;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/compass/CompassActivity;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/miui/compass/CompassActivity;->startCalibrateAltitude(ZZ)V

    return-void
.end method

.method static synthetic access$400(Lcom/miui/compass/CompassActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mViewAttached:Z

    return v0
.end method

.method static synthetic access$500(Lcom/miui/compass/CompassActivity;)F
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    iget v0, p0, Lcom/miui/compass/CompassActivity;->mDirection:F

    return v0
.end method

.method static synthetic access$502(Lcom/miui/compass/CompassActivity;F)F
    .locals 0
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;
    .param p1, "x1"    # F

    .prologue
    .line 43
    iput p1, p0, Lcom/miui/compass/CompassActivity;->mDirection:F

    return p1
.end method

.method static synthetic access$600(Lcom/miui/compass/CompassActivity;)Lcom/miui/compass/CompassScreen;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCompassScreen:Lcom/miui/compass/CompassScreen;

    return-object v0
.end method

.method static synthetic access$700(Lcom/miui/compass/CompassActivity;)Lcom/miui/compass/GradienterScreen;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mGradienterScreen:Lcom/miui/compass/GradienterScreen;

    return-object v0
.end method

.method static synthetic access$800(Lcom/miui/compass/CompassActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    iget-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mIsCalibrating:Z

    return v0
.end method

.method static synthetic access$900(Lcom/miui/compass/CompassActivity;)Lcom/miui/compass/RotateView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CompassActivity;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mTiltRotateView:Lcom/miui/compass/RotateView;

    return-object v0
.end method

.method private checkCompassAccuracy(I)V
    .locals 6
    .param p1, "accuracy"    # I

    .prologue
    const-wide/16 v4, 0xbb8

    .line 411
    const/4 v0, 0x3

    if-ge p1, v0, :cond_1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/compass/CompassActivity;->mLastCalibrateSucessTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_1

    .line 413
    iget-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mIsCalibrating:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->isSupportCalibration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 414
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->enterCalibration()V

    .line 421
    :cond_0
    :goto_0
    return-void

    .line 417
    :cond_1
    iget-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mIsCalibrating:Z

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/compass/CompassActivity;->mLastUnreliableTime:J

    sub-long/2addr v0, v2

    cmp-long v0, v0, v4

    if-lez v0, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->exitCalibration()V

    goto :goto_0
.end method

.method private checkShake(Landroid/hardware/SensorEvent;)Z
    .locals 20
    .param p1, "event"    # Landroid/hardware/SensorEvent;

    .prologue
    .line 703
    const/4 v7, 0x0

    .line 704
    .local v7, "result":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 705
    .local v2, "currentUpdateTime":J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/miui/compass/CompassActivity;->mLastUpdateTime:J

    move-wide/from16 v16, v0

    sub-long v10, v2, v16

    .line 706
    .local v10, "timeInterval":J
    const-wide/16 v16, 0x32

    cmp-long v15, v10, v16

    if-ltz v15, :cond_1

    .line 707
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/miui/compass/CompassActivity;->mLastUpdateTime:J

    .line 709
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x0

    aget v12, v15, v16

    .line 710
    .local v12, "x":F
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x1

    aget v13, v15, v16

    .line 711
    .local v13, "y":F
    move-object/from16 v0, p1

    iget-object v15, v0, Landroid/hardware/SensorEvent;->values:[F

    const/16 v16, 0x2

    aget v14, v15, v16

    .line 713
    .local v14, "z":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/compass/CompassActivity;->mLastShakeX:F

    sub-float v4, v12, v15

    .line 714
    .local v4, "deltaX":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/compass/CompassActivity;->mLastShakeY:F

    sub-float v5, v13, v15

    .line 715
    .local v5, "deltaY":F
    move-object/from16 v0, p0

    iget v15, v0, Lcom/miui/compass/CompassActivity;->mLastShakeZ:F

    sub-float v6, v14, v15

    .line 716
    .local v6, "deltaZ":F
    mul-float v15, v4, v4

    mul-float v16, v5, v5

    add-float v15, v15, v16

    mul-float v16, v6, v6

    add-float v15, v15, v16

    float-to-double v0, v15

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    long-to-double v0, v10

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    const-wide v18, 0x40c3880000000000L    # 10000.0

    mul-double v8, v16, v18

    .line 718
    .local v8, "speed":D
    const-wide v16, 0x40b5180000000000L    # 5400.0

    cmpl-double v15, v8, v16

    if-ltz v15, :cond_0

    .line 719
    const/4 v7, 0x1

    .line 722
    :cond_0
    move-object/from16 v0, p0

    iput v12, v0, Lcom/miui/compass/CompassActivity;->mLastShakeX:F

    .line 723
    move-object/from16 v0, p0

    iput v13, v0, Lcom/miui/compass/CompassActivity;->mLastShakeY:F

    .line 724
    move-object/from16 v0, p0

    iput v14, v0, Lcom/miui/compass/CompassActivity;->mLastShakeZ:F

    .line 726
    .end local v4    # "deltaX":F
    .end local v5    # "deltaY":F
    .end local v6    # "deltaZ":F
    .end local v8    # "speed":D
    .end local v12    # "x":F
    .end local v13    # "y":F
    .end local v14    # "z":F
    :cond_1
    return v7
.end method

.method private enterCalibration()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 432
    iget-boolean v2, p0, Lcom/miui/compass/CompassActivity;->mIsCalibrating:Z

    if-nez v2, :cond_0

    .line 433
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/miui/compass/CompassActivity;->mLastUnreliableTime:J

    .line 434
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->isSupportRotateCalibration()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 435
    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mTiltViewLayout:Landroid/view/View;

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 448
    :goto_0
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/miui/compass/CompassActivity;->mIsCalibrating:Z

    .line 450
    :cond_0
    return-void

    .line 437
    :cond_1
    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mImgTutorial:Landroid/widget/ImageView;

    const v3, 0x7f020023

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    .line 438
    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mTutorialAnimation:Lcom/miui/compass/TutorialAnimation;

    iget-object v3, p0, Lcom/miui/compass/CompassActivity;->mImgTutorial:Landroid/widget/ImageView;

    const v4, 0x7f020022

    invoke-virtual {v2, v3, v4}, Lcom/miui/compass/TutorialAnimation;->startAnimation(Landroid/widget/ImageView;I)V

    .line 439
    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mCompassScreen:Lcom/miui/compass/CompassScreen;

    invoke-virtual {v2}, Lcom/miui/compass/CompassScreen;->getViewShot()Landroid/graphics/Bitmap;

    move-result-object v1

    .line 440
    .local v1, "bmp":Landroid/graphics/Bitmap;
    sget v2, Lmiui/util/ScreenshotUtils;->DEFAULT_SCREEN_BLUR_RADIUS:I

    invoke-static {v1, v2}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 441
    .local v0, "blured":Landroid/graphics/Bitmap;
    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mLytTutorial:Landroid/widget/LinearLayout;

    new-instance v3, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/miui/compass/CompassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-direct {v3, v4, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 442
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 443
    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mCompassScreen:Lcom/miui/compass/CompassScreen;

    const v3, 0x7f040001

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/compass/CompassScreen;->startAnimation(Landroid/view/animation/Animation;)V

    .line 444
    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mLytTutorial:Landroid/widget/LinearLayout;

    const v3, 0x7f040002

    invoke-static {p0, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 445
    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mLytTutorial:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 446
    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mCompassScreen:Lcom/miui/compass/CompassScreen;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Lcom/miui/compass/CompassScreen;->setVisibility(I)V

    goto :goto_0
.end method

.method private exitCalibration()V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 453
    iget-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mIsCalibrating:Z

    if-eqz v0, :cond_1

    .line 454
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->isSupportRotateCalibration()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 455
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mTiltViewLayout:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 456
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mTiltRotateView:Lcom/miui/compass/RotateView;

    invoke-virtual {v0}, Lcom/miui/compass/RotateView;->reset()V

    .line 464
    :goto_0
    iput-boolean v2, p0, Lcom/miui/compass/CompassActivity;->mIsCalibrating:Z

    .line 466
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    const-string v1, "compass_calibration"

    invoke-virtual {v0, v1, v4}, Lmiui/util/HapticFeedbackUtil;->performHapticFeedback(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 468
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mVibrator:Landroid/os/Vibrator;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V

    .line 470
    :cond_0
    const v0, 0x7f080006

    invoke-static {p0, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 471
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/compass/CompassActivity;->mLastCalibrateSucessTime:J

    .line 473
    :cond_1
    return-void

    .line 458
    :cond_2
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mTutorialAnimation:Lcom/miui/compass/TutorialAnimation;

    invoke-virtual {v0}, Lcom/miui/compass/TutorialAnimation;->stopAnimation()V

    .line 459
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCompassScreen:Lcom/miui/compass/CompassScreen;

    const/high16 v1, 0x7f040000

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/miui/compass/CompassScreen;->startAnimation(Landroid/view/animation/Animation;)V

    .line 460
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLytTutorial:Landroid/widget/LinearLayout;

    const v1, 0x7f040003

    invoke-static {p0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->startAnimation(Landroid/view/animation/Animation;)V

    .line 461
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCompassScreen:Lcom/miui/compass/CompassScreen;

    invoke-virtual {v0, v2}, Lcom/miui/compass/CompassScreen;->setVisibility(I)V

    .line 462
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLytTutorial:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method private initResources()V
    .locals 7

    .prologue
    const/4 v6, -0x2

    const/16 v5, 0x8

    .line 198
    const/4 v2, 0x0

    iput v2, p0, Lcom/miui/compass/CompassActivity;->mDirection:F

    .line 199
    new-instance v2, Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {p0}, Lcom/miui/compass/CompassActivity;->getBaseContext()Landroid/content/Context;

    move-result-object v3

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Lmiui/util/HapticFeedbackUtil;-><init>(Landroid/content/Context;Z)V

    iput-object v2, p0, Lcom/miui/compass/CompassActivity;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    .line 200
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/miui/compass/CompassActivity;->mLastUnreliableTime:J

    .line 202
    const v2, 0x7f0a000c

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/compass/CompassActivity;->mLocationLatitudeTextView:Landroid/widget/TextView;

    .line 203
    const v2, 0x7f0a000d

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/compass/CompassActivity;->mLocationLatitudeDegreeTextView:Landroid/widget/TextView;

    .line 204
    const v2, 0x7f0a000e

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/compass/CompassActivity;->mLocationLongitudeTextView:Landroid/widget/TextView;

    .line 205
    const v2, 0x7f0a000f

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/compass/CompassActivity;->mLocationLongitudeDegreeTextView:Landroid/widget/TextView;

    .line 206
    const/high16 v2, 0x7f0a0000

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/compass/CameraView;

    iput-object v2, p0, Lcom/miui/compass/CompassActivity;->mCameraView:Lcom/miui/compass/CameraView;

    .line 207
    const v2, 0x7f0a0001

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/compass/CompassActivity;->mCameraMask:Landroid/widget/ImageView;

    .line 208
    const v2, 0x7f0a0003

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/compass/CompassScreen;

    iput-object v2, p0, Lcom/miui/compass/CompassActivity;->mCompassScreen:Lcom/miui/compass/CompassScreen;

    .line 209
    const v2, 0x7f0a000a

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/compass/GradienterScreen;

    iput-object v2, p0, Lcom/miui/compass/CompassActivity;->mGradienterScreen:Lcom/miui/compass/GradienterScreen;

    .line 210
    const v2, 0x7f0a0013

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/compass/CompassActivity;->mAltitudeTextView:Landroid/widget/TextView;

    .line 211
    const v2, 0x7f0a0011

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/compass/CompassActivity;->mPressureTextView:Landroid/widget/TextView;

    .line 212
    const v2, 0x7f0a0002

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/ScreenView;

    iput-object v2, p0, Lcom/miui/compass/CompassActivity;->mScreen:Lmiui/widget/ScreenView;

    .line 213
    const v2, 0x7f0a0005

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/compass/CompassActivity;->mImgTutorial:Landroid/widget/ImageView;

    .line 214
    const v2, 0x7f0a0004

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/miui/compass/CompassActivity;->mLytTutorial:Landroid/widget/LinearLayout;

    .line 215
    const v2, 0x7f0a0012

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/miui/compass/CompassActivity;->mLytAltitude:Landroid/widget/LinearLayout;

    .line 216
    const v2, 0x7f0a0009

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/compass/RotateView;

    iput-object v2, p0, Lcom/miui/compass/CompassActivity;->mTiltRotateView:Lcom/miui/compass/RotateView;

    .line 217
    const v2, 0x7f0a0007

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/compass/CompassActivity;->mTiltViewLayout:Landroid/view/View;

    .line 218
    sget-object v2, Lcom/miui/compass/CompassActivity;->SensorManager_calibrateSensor:Lmiui/reflect/Method;

    if-nez v2, :cond_0

    .line 219
    const v2, 0x7f0a0006

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 221
    :cond_0
    const v2, 0x7f0a0017

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lmiui/widget/Rotation3DLayout;

    iput-object v2, p0, Lcom/miui/compass/CompassActivity;->mRotation3DLayout:Lmiui/widget/Rotation3DLayout;

    .line 222
    const v2, 0x7f0a0014

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/compass/CompassActivity;->mImgAltitudeTip:Landroid/widget/ImageView;

    .line 224
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/16 v2, 0x51

    invoke-direct {v1, v6, v6, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 226
    .local v1, "seekPointParam":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lcom/miui/compass/CompassActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060009

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 227
    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mScreen:Lmiui/widget/ScreenView;

    const v3, 0x7f020015

    invoke-virtual {v2, v3}, Lmiui/widget/ScreenView;->setSeekPointResource(I)V

    .line 228
    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mScreen:Lmiui/widget/ScreenView;

    invoke-virtual {v2, v1}, Lmiui/widget/ScreenView;->setSeekBarPosition(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 230
    const v2, 0x7f040004

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/compass/CompassActivity;->mCameraMaskIn:Landroid/view/animation/Animation;

    .line 231
    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mCameraMaskIn:Landroid/view/animation/Animation;

    new-instance v3, Lcom/miui/compass/CompassActivity$1;

    invoke-direct {v3, p0}, Lcom/miui/compass/CompassActivity$1;-><init>(Lcom/miui/compass/CompassActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 246
    const v2, 0x7f040005

    invoke-static {p0, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/miui/compass/CompassActivity;->mCameraMaskOut:Landroid/view/animation/Animation;

    .line 247
    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mCameraMaskOut:Landroid/view/animation/Animation;

    new-instance v3, Lcom/miui/compass/CompassActivity$2;

    invoke-direct {v3, p0}, Lcom/miui/compass/CompassActivity$2;-><init>(Lcom/miui/compass/CompassActivity;)V

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 262
    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mLytAltitude:Landroid/widget/LinearLayout;

    new-instance v3, Lcom/miui/compass/CompassActivity$3;

    invoke-direct {v3, p0}, Lcom/miui/compass/CompassActivity$3;-><init>(Lcom/miui/compass/CompassActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 274
    invoke-virtual {p0}, Lcom/miui/compass/CompassActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "DroidSans.ttf"

    invoke-static {v2, v3}, Lcom/miui/compass/Utils;->getTypeface(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 275
    .local v0, "fontNumber":Landroid/graphics/Typeface;
    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mLocationLatitudeDegreeTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 276
    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mLocationLongitudeDegreeTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 277
    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mAltitudeTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 278
    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mPressureTextView:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 280
    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    invoke-virtual {v2}, Lcom/miui/compass/CompassDataManager;->isPressureSensorAvailable()Z

    move-result v2

    if-nez v2, :cond_1

    .line 281
    const v2, 0x7f0a0010

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    .line 282
    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mLytAltitude:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 285
    :cond_1
    new-instance v2, Lcom/miui/compass/CompassActivity$4;

    invoke-direct {v2, p0}, Lcom/miui/compass/CompassActivity$4;-><init>(Lcom/miui/compass/CompassActivity;)V

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->setOnStatusBarChangeListener(Lmiui/app/OnStatusBarChangeListener;)V

    .line 292
    return-void
.end method

.method private initServices()V
    .locals 2

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/miui/compass/CompassActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "vibrator"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mVibrator:Landroid/os/Vibrator;

    .line 297
    invoke-virtual {p0}, Lcom/miui/compass/CompassActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 300
    invoke-virtual {p0}, Lcom/miui/compass/CompassActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sensor"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/SensorManager;

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mSensorManager:Landroid/hardware/SensorManager;

    .line 301
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mSensorManager:Landroid/hardware/SensorManager;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensor:Landroid/hardware/Sensor;

    .line 303
    new-instance v0, Lcom/miui/compass/CompassDataManager;

    invoke-direct {v0, p0}, Lcom/miui/compass/CompassDataManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    .line 304
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mCompassDataObserver:Lcom/miui/compass/CompassDataManager$CompassDataObserver;

    invoke-virtual {v0, v1}, Lcom/miui/compass/CompassDataManager;->setCompassDataObserver(Lcom/miui/compass/CompassDataManager$CompassDataObserver;)V

    .line 306
    new-instance v0, Lcom/miui/compass/TutorialAnimation;

    invoke-direct {v0, p0}, Lcom/miui/compass/TutorialAnimation;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mTutorialAnimation:Lcom/miui/compass/TutorialAnimation;

    .line 307
    return-void
.end method

.method private isSupportCalibration()Z
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 424
    const-string v1, "is_xiaomi"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "is_hongmi"

    invoke-static {v1, v0}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    :cond_1
    return v0
.end method

.method private isSupportRotateCalibration()Z
    .locals 2

    .prologue
    .line 428
    const-string v0, "support_rotate_calibrate"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method private registerShakeSensorListener()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 675
    sget-object v0, Lcom/miui/compass/CompassActivity;->SensorManager_calibrateSensor:Lmiui/reflect/Method;

    if-eqz v0, :cond_0

    .line 676
    new-instance v0, Lcom/miui/compass/CompassActivity$13;

    invoke-direct {v0, p0}, Lcom/miui/compass/CompassActivity$13;-><init>(Lcom/miui/compass/CompassActivity;)V

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mShakSensorListener:Landroid/hardware/SensorEventListener;

    .line 691
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mShakSensorListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mSensorManager:Landroid/hardware/SensorManager;

    invoke-virtual {v2, v3}, Landroid/hardware/SensorManager;->getDefaultSensor(I)Landroid/hardware/Sensor;

    move-result-object v2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 694
    :cond_0
    return-void
.end method

.method private showAltitudeTipDialog()V
    .locals 3

    .prologue
    .line 550
    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mAltitudeTipDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 551
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 552
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080030

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 553
    const v1, 0x7f080031

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 555
    const v1, 0x7f080032

    new-instance v2, Lcom/miui/compass/CompassActivity$8;

    invoke-direct {v2, p0}, Lcom/miui/compass/CompassActivity$8;-><init>(Lcom/miui/compass/CompassActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 562
    const v1, 0x7f080033

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 563
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/compass/CompassActivity;->mAltitudeTipDialog:Landroid/app/AlertDialog;

    .line 565
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mAltitudeTipDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 566
    return-void
.end method

.method private showCalibratAltitudeDialog()V
    .locals 4

    .prologue
    .line 535
    new-instance v0, Landroid/app/ProgressDialog;

    invoke-direct {v0, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mCalibratAltitudeDialog:Landroid/app/ProgressDialog;

    .line 536
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCalibratAltitudeDialog:Landroid/app/ProgressDialog;

    const v1, 0x7f080012

    invoke-virtual {p0, v1}, Lcom/miui/compass/CompassActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 537
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCalibratAltitudeDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 538
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCalibratAltitudeDialog:Landroid/app/ProgressDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 539
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCalibratAltitudeDialog:Landroid/app/ProgressDialog;

    const/4 v1, -0x1

    const/high16 v2, 0x1040000

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/compass/CompassActivity$7;

    invoke-direct {v3, p0}, Lcom/miui/compass/CompassActivity$7;-><init>(Lcom/miui/compass/CompassActivity;)V

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 546
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCalibratAltitudeDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 547
    return-void
.end method

.method private showFirstUsingDialog()V
    .locals 3

    .prologue
    .line 592
    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mFirstUsingDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mFirstUsingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 593
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 594
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    .line 595
    const v1, 0x7f080026

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 596
    const v1, 0x7f080027

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 597
    const v1, 0x7f080028

    new-instance v2, Lcom/miui/compass/CompassActivity$10;

    invoke-direct {v2, p0}, Lcom/miui/compass/CompassActivity$10;-><init>(Lcom/miui/compass/CompassActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 604
    const v1, 0x7f080029

    new-instance v2, Lcom/miui/compass/CompassActivity$11;

    invoke-direct {v2, p0}, Lcom/miui/compass/CompassActivity$11;-><init>(Lcom/miui/compass/CompassActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 610
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/compass/CompassActivity;->mFirstUsingDialog:Landroid/app/AlertDialog;

    .line 611
    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mFirstUsingDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 613
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    :cond_1
    return-void
.end method

.method private showLocationServiceDialog()V
    .locals 3

    .prologue
    .line 569
    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mLocationServiceDialog:Landroid/app/AlertDialog;

    if-nez v1, :cond_0

    .line 570
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 571
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f080021

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 572
    const v1, 0x7f080022

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 574
    const v1, 0x7f080023

    new-instance v2, Lcom/miui/compass/CompassActivity$9;

    invoke-direct {v2, p0}, Lcom/miui/compass/CompassActivity$9;-><init>(Lcom/miui/compass/CompassActivity;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 584
    const v1, 0x7f080024

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 585
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/compass/CompassActivity;->mLocationServiceDialog:Landroid/app/AlertDialog;

    .line 587
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    :cond_0
    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mLocationServiceDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 588
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/miui/compass/CompassActivity;->mIsLocalServiceDialogShown:Z

    .line 589
    return-void
.end method

.method private showMobiledataDialog()V
    .locals 4

    .prologue
    .line 517
    new-instance v0, Lcom/miui/compass/MobileDataAlertDialog;

    invoke-direct {v0, p0}, Lcom/miui/compass/MobileDataAlertDialog;-><init>(Landroid/content/Context;)V

    .line 518
    .local v0, "d":Lcom/miui/compass/MobileDataAlertDialog;
    const/4 v1, -0x1

    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/miui/compass/CompassActivity$6;

    invoke-direct {v3, p0, v0}, Lcom/miui/compass/CompassActivity$6;-><init>(Lcom/miui/compass/CompassActivity;Lcom/miui/compass/MobileDataAlertDialog;)V

    invoke-virtual {v0, v1, v2, v3}, Lcom/miui/compass/MobileDataAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 528
    const/4 v2, -0x2

    const/high16 v1, 0x1040000

    invoke-virtual {p0, v1}, Lcom/miui/compass/CompassActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v1, 0x0

    check-cast v1, Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v2, v3, v1}, Lcom/miui/compass/MobileDataAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 530
    iput-object v0, p0, Lcom/miui/compass/CompassActivity;->mDialog:Landroid/app/AlertDialog;

    .line 531
    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 532
    return-void
.end method

.method private showNetworkUnavailableDialog()V
    .locals 3

    .prologue
    .line 508
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f080010

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f080011

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x104000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 514
    return-void
.end method

.method private startCalibrateAltitude(ZZ)V
    .locals 3
    .param p1, "notifyUser"    # Z
    .param p2, "alertUsingMobileData"    # Z

    .prologue
    .line 492
    const-string v1, "Compass:CompassActivity"

    const-string v2, "startCalibrateAltitude"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 495
    .local v0, "info":Landroid/net/NetworkInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isAvailable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 496
    if-eqz p2, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    invoke-static {p0}, Lcom/miui/compass/CompassPreferences;->isShowMobiledataAlert(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 498
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->showMobiledataDialog()V

    .line 505
    :goto_0
    return-void

    .line 500
    :cond_0
    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    invoke-virtual {v1, p1}, Lcom/miui/compass/CompassDataManager;->startCalibrateAltitude(Z)V

    goto :goto_0

    .line 503
    :cond_1
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->showNetworkUnavailableDialog()V

    goto :goto_0
.end method

.method private startCompass()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 310
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCameraView:Lcom/miui/compass/CameraView;

    invoke-virtual {v0}, Lcom/miui/compass/CameraView;->openCamera()V

    .line 312
    iget-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mIsLocalServiceDialogShown:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    invoke-virtual {v0}, Lcom/miui/compass/CompassDataManager;->isLocationProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 313
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->showLocationServiceDialog()V

    .line 315
    :cond_0
    iput-boolean v1, p0, Lcom/miui/compass/CompassActivity;->mIsLocalServiceDialogShown:Z

    .line 317
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    invoke-virtual {v0}, Lcom/miui/compass/CompassDataManager;->startMonitor()V

    .line 319
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    invoke-virtual {v0}, Lcom/miui/compass/CompassDataManager;->isPressureSensorAvailable()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p0}, Lcom/miui/compass/Utils;->isWifi(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 320
    const/4 v0, 0x0

    invoke-direct {p0, v0, v1}, Lcom/miui/compass/CompassActivity;->startCalibrateAltitude(ZZ)V

    .line 322
    :cond_1
    return-void
.end method

.method private unRegisterShakeSensorListener()V
    .locals 2

    .prologue
    .line 697
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mShakSensorListener:Landroid/hardware/SensorEventListener;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mShakSensorListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 700
    :cond_0
    return-void
.end method

.method private updateAltitude(Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;)V
    .locals 4
    .param p1, "accuracy"    # Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 476
    sget-object v0, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;->RELIABLE:Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    if-ne p1, v0, :cond_1

    .line 477
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mImgAltitudeTip:Landroid/widget/ImageView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 489
    :cond_0
    :goto_0
    return-void

    .line 478
    :cond_1
    sget-object v0, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;->IMPRECISE:Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    if-ne p1, v0, :cond_2

    .line 479
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mImgAltitudeTip:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 480
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mImgAltitudeTip:Landroid/widget/ImageView;

    const v1, 0x7f020012

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 481
    iput-boolean v2, p0, Lcom/miui/compass/CompassActivity;->mAltCannotCalibrate:Z

    .line 482
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLytAltitude:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0

    .line 483
    :cond_2
    sget-object v0, Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;->REFERENTIAL:Lcom/miui/compass/CompassDataManager$AltitudeAccuracy;

    if-ne p1, v0, :cond_0

    .line 484
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mImgAltitudeTip:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 485
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mImgAltitudeTip:Landroid/widget/ImageView;

    const v1, 0x7f020013

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 486
    iput-boolean v3, p0, Lcom/miui/compass/CompassActivity;->mAltCannotCalibrate:Z

    .line 487
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLytAltitude:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    goto :goto_0
.end method

.method private updateLocation(DD)V
    .locals 9
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D

    .prologue
    const v8, 0x7f080001

    const/4 v1, 0x0

    const-wide/16 v6, 0x0

    const-wide v2, -0x3f86c00000000000L    # -404.0

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    .line 325
    cmpl-double v0, p1, v2

    if-eqz v0, :cond_0

    cmpl-double v0, p3, v2

    if-nez v0, :cond_2

    .line 326
    :cond_0
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationLatitudeDegreeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 327
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationLongitudeDegreeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setText(I)V

    .line 328
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/miui/compass/CompassActivity;->mLastLogTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0xea60

    cmp-long v0, v0, v2

    if-lez v0, :cond_1

    .line 329
    const-string v0, "Compass:CompassActivity"

    const-string v1, "updateLongitudeLatitude longitude or latitude is invalid"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/miui/compass/CompassActivity;->mLastLogTime:J

    .line 352
    :cond_1
    :goto_0
    return-void

    .line 333
    :cond_2
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationLatitudeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 334
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationLongitudeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 336
    cmpl-double v0, p3, v6

    if-ltz v0, :cond_3

    .line 337
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationLatitudeTextView:Landroid/widget/TextView;

    const v1, 0x7f080002

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 338
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationLatitudeDegreeTextView:Landroid/widget/TextView;

    invoke-static {p3, p4}, Lcom/miui/compass/Utils;->getLocationString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 344
    :goto_1
    cmpl-double v0, p1, v6

    if-ltz v0, :cond_4

    .line 345
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationLongitudeTextView:Landroid/widget/TextView;

    const v1, 0x7f080004

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 346
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationLongitudeDegreeTextView:Landroid/widget/TextView;

    invoke-static {p1, p2}, Lcom/miui/compass/Utils;->getLocationString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 340
    :cond_3
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationLatitudeTextView:Landroid/widget/TextView;

    const v1, 0x7f080003

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 341
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationLatitudeDegreeTextView:Landroid/widget/TextView;

    mul-double v2, v4, p3

    invoke-static {v2, v3}, Lcom/miui/compass/Utils;->getLocationString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 348
    :cond_4
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationLongitudeTextView:Landroid/widget/TextView;

    const v1, 0x7f080005

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 349
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationLongitudeDegreeTextView:Landroid/widget/TextView;

    mul-double v2, v4, p1

    invoke-static {v2, v3}, Lcom/miui/compass/Utils;->getLocationString(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0}, Lmiui/app/Activity;->onAttachedToWindow()V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mViewAttached:Z

    .line 136
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 126
    invoke-super {p0, p1}, Lmiui/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 127
    const/high16 v0, 0x7f030000

    invoke-virtual {p0, v0}, Lcom/miui/compass/CompassActivity;->setContentView(I)V

    .line 128
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->initServices()V

    .line 129
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->initResources()V

    .line 130
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lmiui/app/Activity;->onDestroy()V

    .line 148
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mDialog:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/miui/compass/Utils;->dismissDialog(Landroid/app/AlertDialog;)V

    .line 149
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mLocationServiceDialog:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/miui/compass/Utils;->dismissDialog(Landroid/app/AlertDialog;)V

    .line 150
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mFirstUsingDialog:Landroid/app/AlertDialog;

    invoke-static {v0}, Lcom/miui/compass/Utils;->dismissDialog(Landroid/app/AlertDialog;)V

    .line 151
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCalibratAltitudeDialog:Landroid/app/ProgressDialog;

    invoke-static {v0}, Lcom/miui/compass/Utils;->dismissDialog(Landroid/app/AlertDialog;)V

    .line 153
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mHapticFeedbackUtil:Lmiui/util/HapticFeedbackUtil;

    invoke-virtual {v0}, Lmiui/util/HapticFeedbackUtil;->release()V

    .line 154
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 140
    invoke-super {p0}, Lmiui/app/Activity;->onDetachedFromWindow()V

    .line 141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mViewAttached:Z

    .line 142
    return-void
.end method

.method protected onPause()V
    .locals 2

    .prologue
    .line 184
    invoke-super {p0}, Lmiui/app/Activity;->onPause()V

    .line 185
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCameraView:Lcom/miui/compass/CameraView;

    invoke-virtual {v0}, Lcom/miui/compass/CameraView;->closeCamera()V

    .line 186
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->unregisterListener(Landroid/hardware/SensorEventListener;)V

    .line 189
    :cond_0
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->unRegisterShakeSensorListener()V

    .line 190
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    invoke-virtual {v0}, Lcom/miui/compass/CompassDataManager;->stopMonitor()V

    .line 191
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mRotation3DLayout:Lmiui/widget/Rotation3DLayout;

    invoke-virtual {v0}, Lmiui/widget/Rotation3DLayout;->stopGravityDetection()V

    .line 192
    iget-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mIsCalibrating:Z

    if-eqz v0, :cond_1

    .line 193
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mTutorialAnimation:Lcom/miui/compass/TutorialAnimation;

    invoke-virtual {v0}, Lcom/miui/compass/TutorialAnimation;->stopAnimation()V

    .line 195
    :cond_1
    return-void
.end method

.method protected onResume()V
    .locals 5

    .prologue
    const v4, 0x7f080001

    .line 158
    invoke-super {p0}, Lmiui/app/Activity;->onResume()V

    .line 159
    invoke-static {p0}, Lcom/miui/compass/CompassPreferences;->isShowFirstUsingAlert(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 160
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->showFirstUsingDialog()V

    .line 164
    :goto_0
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->registerShakeSensorListener()V

    .line 165
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensor:Landroid/hardware/Sensor;

    if-eqz v0, :cond_3

    .line 166
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mSensorManager:Landroid/hardware/SensorManager;

    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensorEventListener:Landroid/hardware/SensorEventListener;

    iget-object v2, p0, Lcom/miui/compass/CompassActivity;->mOrientationSensor:Landroid/hardware/Sensor;

    const/4 v3, 0x2

    invoke-virtual {v0, v1, v2, v3}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z

    .line 171
    :goto_1
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mCompassDataManager:Lcom/miui/compass/CompassDataManager;

    invoke-virtual {v0}, Lcom/miui/compass/CompassDataManager;->isPressureSensorAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 172
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mPressureTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 173
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mAltitudeTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(I)V

    .line 174
    const-string v0, "Compass:CompassActivity"

    const-string v1, "PressureSensor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mRotation3DLayout:Lmiui/widget/Rotation3DLayout;

    invoke-virtual {v0}, Lmiui/widget/Rotation3DLayout;->startGravityDetection()V

    .line 177
    iget-boolean v0, p0, Lcom/miui/compass/CompassActivity;->mIsCalibrating:Z

    if-eqz v0, :cond_1

    .line 178
    iget-object v0, p0, Lcom/miui/compass/CompassActivity;->mTutorialAnimation:Lcom/miui/compass/TutorialAnimation;

    iget-object v1, p0, Lcom/miui/compass/CompassActivity;->mImgTutorial:Landroid/widget/ImageView;

    const v2, 0x7f020022

    invoke-virtual {v0, v1, v2}, Lcom/miui/compass/TutorialAnimation;->startAnimation(Landroid/widget/ImageView;I)V

    .line 180
    :cond_1
    return-void

    .line 162
    :cond_2
    invoke-direct {p0}, Lcom/miui/compass/CompassActivity;->startCompass()V

    goto :goto_0

    .line 169
    :cond_3
    const-string v0, "Compass:CompassActivity"

    const-string v1, "OrientationSensor is null"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method
