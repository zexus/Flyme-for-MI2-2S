.class public Lcom/android/camera/ui/V6SettingAnimationManager;
.super Ljava/lang/Object;
.source "V6SettingAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6SettingAnimationManager$1;,
        Lcom/android/camera/ui/V6SettingAnimationManager$MainHandler;
    }
.end annotation


# static fields
.field private static final MIN_VELOCITY:I


# instance fields
.field private mActivity:Lcom/android/camera/Camera;

.field private mAnimationStartTime:J

.field private mAnimationTotalTime:J

.field private mAnimationX:I

.field private mBlurred:Z

.field private mDeltaX:I

.field private mDeltaY:I

.field private mHandle:Landroid/os/Handler;

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mOriDeltaX:I

.field private mSwitchPageType:I

.field private mSwitchingPageState:I

.field private mUIController:Lcom/android/camera/ui/UIController;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 21
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6SettingAnimationManager;->MIN_VELOCITY:I

    return-void
.end method

.method public constructor <init>(Lcom/android/camera/ui/UIController;)V
    .locals 3
    .param p1, "uiController"    # Lcom/android/camera/ui/UIController;

    .prologue
    const/4 v0, 0x0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchingPageState:I

    .line 39
    iput v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchPageType:I

    .line 44
    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 47
    iput-object p1, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    .line 48
    iget-object v0, p1, Lcom/android/camera/ui/UIController;->mActivity:Lcom/android/camera/Camera;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mActivity:Lcom/android/camera/Camera;

    .line 49
    new-instance v0, Lcom/android/camera/ui/V6SettingAnimationManager$MainHandler;

    iget-object v1, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, p0, v1, v2}, Lcom/android/camera/ui/V6SettingAnimationManager$MainHandler;-><init>(Lcom/android/camera/ui/V6SettingAnimationManager;Landroid/os/Looper;Lcom/android/camera/ui/V6SettingAnimationManager$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mHandle:Landroid/os/Handler;

    .line 50
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    iput-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 51
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/V6SettingAnimationManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/V6SettingAnimationManager;

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mAnimationStartTime:J

    return-wide v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/V6SettingAnimationManager;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6SettingAnimationManager;

    .prologue
    .line 18
    iget v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchingPageState:I

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/V6SettingAnimationManager;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6SettingAnimationManager;

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/android/camera/ui/V6SettingAnimationManager;->onAnimationEnd()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/V6SettingAnimationManager;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/V6SettingAnimationManager;

    .prologue
    .line 18
    iget-wide v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mAnimationTotalTime:J

    return-wide v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/V6SettingAnimationManager;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6SettingAnimationManager;

    .prologue
    .line 18
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mHandle:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/V6SettingAnimationManager;J)V
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6SettingAnimationManager;
    .param p1, "x1"    # J

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6SettingAnimationManager;->translateView(J)V

    return-void
.end method

.method private getTheoreticalVelocity(I)I
    .locals 1
    .param p1, "switchType"    # I

    .prologue
    .line 213
    packed-switch p1, :pswitch_data_0

    .line 221
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 216
    :pswitch_0
    const/4 v0, -0x1

    goto :goto_0

    .line 219
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 213
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private onAnimationEnd()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 77
    const-string v0, "V6SettingAnimationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onAnimationEnd mSwitchPageType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchPageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSwitchingPageState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchingPageState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 79
    iget v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchPageType:I

    packed-switch v0, :pswitch_data_0

    .line 95
    :goto_0
    iput v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchPageType:I

    .line 96
    iput v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchingPageState:I

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 98
    return-void

    .line 81
    :pswitch_0
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "scroll_to_menu_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 82
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSeekBarIndicator()Lcom/android/camera/ui/V6SeekBarIndicator;

    move-result-object v0

    invoke-virtual {v0, v3}, Lcom/android/camera/ui/V6SeekBarIndicator;->updateSeekPoints(I)V

    goto :goto_0

    .line 85
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->hide()V

    goto :goto_0

    .line 88
    :pswitch_2
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v0

    const-string v1, "scroll_to_effect_key"

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 89
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSeekBarIndicator()Lcom/android/camera/ui/V6SeekBarIndicator;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SeekBarIndicator;->updateSeekPoints(I)V

    goto :goto_0

    .line 92
    :pswitch_3
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectPage()Lcom/android/camera/ui/V6EffectSettingPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectSettingPage;->hide()V

    goto :goto_0

    .line 79
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private trackGesture(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 8
    .param p1, "gesture"    # I
    .param p2, "extra1"    # Ljava/lang/Object;
    .param p3, "extra2"    # Ljava/lang/Object;

    .prologue
    const/16 v7, 0x3e9

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 227
    iget v5, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchingPageState:I

    if-ne v5, v3, :cond_2

    .line 228
    const/16 v5, 0x12d

    if-ne p1, v5, :cond_4

    .line 229
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "extra1":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 230
    .local v2, "vx":I
    const-string v4, "V6SettingAnimationManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "trackGesture with GESTURE_CANCEL mOriDeltaX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mOriDeltaX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " vx="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mDeltaX="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " mSwitchPageType="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchPageType:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    iget v4, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchPageType:I

    invoke-direct {p0, v4}, Lcom/android/camera/ui/V6SettingAnimationManager;->getTheoreticalVelocity(I)I

    move-result v4

    mul-int/2addr v4, v2

    if-gtz v4, :cond_0

    iget v4, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    sget v5, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v5, v5, 0x2

    if-ge v4, v5, :cond_1

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v4

    sget v5, Lcom/android/camera/ui/V6SettingAnimationManager;->MIN_VELOCITY:I

    if-ge v4, v5, :cond_1

    .line 234
    :cond_0
    sget v4, Lcom/android/camera/Util;->sWindowWidth:I

    iget v5, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    sub-int/2addr v4, v5

    iput v4, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    .line 235
    iget v4, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchPageType:I

    iget v5, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchPageType:I

    rem-int/lit8 v5, v5, 0x2

    if-ne v5, v3, :cond_3

    :goto_0
    add-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchPageType:I

    .line 237
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mAnimationStartTime:J

    .line 238
    sget v3, Lcom/android/camera/Util;->sWindowWidth:I

    iget v4, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    sub-int/2addr v3, v4

    iput v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mAnimationX:I

    .line 239
    iget v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mAnimationX:I

    mul-int/lit16 v3, v3, 0x12c

    sget v4, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/2addr v3, v4

    int-to-long v4, v3

    iput-wide v4, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mAnimationTotalTime:J

    .line 240
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mHandle:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->removeMessages(I)V

    .line 241
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mHandle:Landroid/os/Handler;

    invoke-virtual {v3, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 242
    const/4 v3, 0x2

    iput v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchingPageState:I

    .line 281
    .end local v2    # "vx":I
    .end local p3    # "extra2":Ljava/lang/Object;
    :cond_2
    :goto_1
    return-void

    .line 235
    .restart local v2    # "vx":I
    .restart local p3    # "extra2":Ljava/lang/Object;
    :cond_3
    const/4 v3, -0x1

    goto :goto_0

    .line 244
    .end local v2    # "vx":I
    .restart local p2    # "extra1":Ljava/lang/Object;
    :cond_4
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "extra1":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 245
    .local v0, "dx":I
    check-cast p3, Ljava/lang/Integer;

    .end local p3    # "extra2":Ljava/lang/Object;
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 246
    .local v1, "dy":I
    iget v5, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchPageType:I

    packed-switch v5, :pswitch_data_0

    goto :goto_1

    .line 248
    :pswitch_0
    iget-boolean v5, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mBlurred:Z

    if-nez v5, :cond_5

    .line 249
    iput-boolean v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mBlurred:Z

    .line 250
    iget-object v5, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5, v3}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 252
    :cond_5
    if-gtz v0, :cond_6

    .end local v0    # "dx":I
    :goto_2
    iput v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mOriDeltaX:I

    .line 253
    iget v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mOriDeltaX:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    .line 254
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    invoke-virtual {v3, v4, v1}, Lcom/android/camera/ui/V6SettingPage;->translate(II)V

    goto :goto_1

    .restart local v0    # "dx":I
    :cond_6
    move v0, v4

    .line 252
    goto :goto_2

    .line 257
    :pswitch_1
    if-ltz v0, :cond_7

    .end local v0    # "dx":I
    :goto_3
    iput v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mOriDeltaX:I

    .line 258
    iget v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mOriDeltaX:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    .line 259
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v3

    sget v4, Lcom/android/camera/Util;->sWindowWidth:I

    iget v5, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4, v1}, Lcom/android/camera/ui/V6SettingPage;->translate(II)V

    goto :goto_1

    .restart local v0    # "dx":I
    :cond_7
    move v0, v4

    .line 257
    goto :goto_3

    .line 262
    :pswitch_2
    iget-boolean v5, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mBlurred:Z

    if-nez v5, :cond_9

    .line 263
    iput-boolean v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mBlurred:Z

    .line 264
    iget-object v5, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v5}, Lcom/android/camera/ui/UIController;->getSurfaceViewFrame()Lcom/android/camera/ui/V6SurfaceViewFrame;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/camera/ui/V6SurfaceViewFrame;->isSurfaceViewVisible()Z

    move-result v5

    if-eqz v5, :cond_8

    .line 265
    iget-object v5, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v5, v3}, Lcom/android/camera/Camera;->setBlurFlag(Z)V

    .line 267
    :cond_8
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/android/camera/effect/EffectController;->setBlurEffect(Z)V

    .line 269
    :cond_9
    if-ltz v0, :cond_a

    .end local v0    # "dx":I
    :goto_4
    iput v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mOriDeltaX:I

    .line 270
    iget v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mOriDeltaX:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    .line 271
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getEffectPage()Lcom/android/camera/ui/V6EffectSettingPage;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    invoke-virtual {v3, v4, v1}, Lcom/android/camera/ui/V6EffectSettingPage;->translate(II)V

    goto/16 :goto_1

    .restart local v0    # "dx":I
    :cond_a
    move v0, v4

    .line 269
    goto :goto_4

    .line 274
    :pswitch_3
    if-gtz v0, :cond_b

    .end local v0    # "dx":I
    :goto_5
    iput v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mOriDeltaX:I

    .line 275
    iget v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mOriDeltaX:I

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    .line 276
    iget-object v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v3}, Lcom/android/camera/ui/UIController;->getEffectPage()Lcom/android/camera/ui/V6EffectSettingPage;

    move-result-object v3

    sget v4, Lcom/android/camera/Util;->sWindowWidth:I

    iget v5, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    sub-int/2addr v4, v5

    invoke-virtual {v3, v4, v1}, Lcom/android/camera/ui/V6EffectSettingPage;->translate(II)V

    goto/16 :goto_1

    .restart local v0    # "dx":I
    :cond_b
    move v0, v4

    .line 274
    goto :goto_5

    .line 246
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private translateView(J)V
    .locals 9
    .param p1, "duration"    # J

    .prologue
    const/4 v7, 0x3

    const/high16 v6, 0x3f800000    # 1.0f

    .line 117
    iget v1, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchingPageState:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 118
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v2, p1

    iget-wide v4, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mAnimationTotalTime:J

    long-to-float v3, v4

    div-float/2addr v2, v3

    invoke-interface {v1, v2}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    .line 119
    .local v0, "delta":F
    iget v1, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchPageType:I

    packed-switch v1, :pswitch_data_0

    .line 154
    .end local v0    # "delta":F
    :cond_0
    :goto_0
    return-void

    .line 121
    .restart local v0    # "delta":F
    :pswitch_0
    iget v1, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    if-ne v1, v2, :cond_1

    .line 122
    iput v7, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchingPageState:I

    goto :goto_0

    .line 124
    :cond_1
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mAnimationX:I

    int-to-float v2, v2

    sub-float v3, v6, v0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    .line 125
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    iget v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/V6SettingPage;->translate(II)V

    goto :goto_0

    .line 129
    :pswitch_1
    iget v1, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    if-nez v1, :cond_2

    .line 130
    iput v7, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchingPageState:I

    goto :goto_0

    .line 132
    :cond_2
    iget v1, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mAnimationX:I

    int-to-float v1, v1

    sub-float v2, v6, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    .line 133
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    iget v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/V6SettingPage;->translate(II)V

    goto :goto_0

    .line 137
    :pswitch_2
    iget v1, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    if-ne v1, v2, :cond_3

    .line 138
    iput v7, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchingPageState:I

    goto :goto_0

    .line 140
    :cond_3
    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mAnimationX:I

    int-to-float v2, v2

    sub-float v3, v6, v0

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    .line 141
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getEffectPage()Lcom/android/camera/ui/V6EffectSettingPage;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    iget v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/V6EffectSettingPage;->translate(II)V

    goto :goto_0

    .line 145
    :pswitch_3
    iget v1, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    if-nez v1, :cond_4

    .line 146
    iput v7, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchingPageState:I

    goto :goto_0

    .line 148
    :cond_4
    iget v1, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mAnimationX:I

    int-to-float v1, v1

    sub-float v2, v6, v0

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    .line 149
    iget-object v1, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getEffectPage()Lcom/android/camera/ui/V6EffectSettingPage;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaX:I

    iget v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mDeltaY:I

    invoke-virtual {v1, v2, v3}, Lcom/android/camera/ui/V6EffectSettingPage;->translate(II)V

    goto/16 :goto_0

    .line 119
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public animationOut()Z
    .locals 5

    .prologue
    const/16 v4, 0x3e9

    const/4 v1, 0x2

    .line 101
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v2}, Lcom/android/camera/ui/UIController;->getSettingPage()Lcom/android/camera/ui/V6SettingPage;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/camera/ui/V6SettingPage;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    .line 104
    .local v0, "switchPageType":I
    :goto_0
    iget v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchingPageState:I

    if-eqz v2, :cond_1

    iget v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchPageType:I

    if-ne v0, v2, :cond_1

    .line 105
    const/4 v1, 0x0

    .line 113
    :goto_1
    return v1

    .line 101
    .end local v0    # "switchPageType":I
    :cond_0
    const/4 v0, 0x4

    goto :goto_0

    .line 106
    .restart local v0    # "switchPageType":I
    :cond_1
    iput v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchPageType:I

    .line 107
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mAnimationStartTime:J

    .line 108
    sget v2, Lcom/android/camera/Util;->sWindowWidth:I

    iput v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mAnimationX:I

    .line 109
    iget v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mAnimationX:I

    mul-int/lit16 v2, v2, 0x12c

    sget v3, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/2addr v2, v3

    int-to-long v2, v2

    iput-wide v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mAnimationTotalTime:J

    .line 110
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mHandle:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 111
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mHandle:Landroid/os/Handler;

    invoke-virtual {v2, v4}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 112
    iput v1, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchingPageState:I

    .line 113
    const/4 v1, 0x1

    goto :goto_1
.end method

.method public handleGesture(I)Z
    .locals 9
    .param p1, "gestureId"    # I

    .prologue
    const/4 v8, 0x4

    const/4 v4, 0x0

    const/4 v3, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 169
    const-string v0, "V6SettingAnimationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGestureMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    packed-switch p1, :pswitch_data_0

    move v0, v7

    .line 209
    :goto_0
    return v0

    .line 173
    :pswitch_0
    iput v6, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchingPageState:I

    .line 175
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mHandle:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 176
    if-ne v6, p1, :cond_1

    .line 177
    iput v6, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchPageType:I

    .line 178
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    iget-object v0, v0, Lcom/android/camera/ui/UIController;->mSettingPage:Lcom/android/camera/ui/V6SettingPage;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6SettingPage;->prepare()V

    .line 183
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/V6PreviewPage;->switchWithAnimation(Z)V

    .line 184
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    iget-object v0, v0, Lcom/android/camera/ui/UIController;->mBottomControlPanel:Lcom/android/camera/ui/V6BottomControlPanel;

    invoke-virtual {v0, v4}, Lcom/android/camera/ui/V6BottomControlPanel;->animateOut(Ljava/lang/Runnable;)V

    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f0c0078

    move v1, p1

    move-object v5, v4

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewFrame()Lcom/android/camera/ui/V6PreviewFrame;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewFrame;->isFullScreen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    iget-object v0, v0, Lcom/android/camera/ui/UIController;->mGLView:Lcom/android/camera/ui/V6CameraGLSurfaceView;

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setVisibility(I)V

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEdgeShutterView()Lcom/android/camera/ui/V6EdgeShutterView;

    move-result-object v0

    invoke-virtual {v0, v8}, Lcom/android/camera/ui/V6EdgeShutterView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    iget-object v0, v0, Lcom/android/camera/ui/UIController;->mPreviewPanel:Lcom/android/camera/ui/V6PreviewPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6PreviewPanel;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    iget-object v0, v0, Lcom/android/camera/ui/UIController;->mSettingsStatusBar:Lcom/android/camera/ui/V6SettingsStatusBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6SettingsStatusBar;->setVisibility(I)V

    .line 194
    iput-boolean v7, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mBlurred:Z

    move v0, v6

    .line 195
    goto :goto_0

    .line 180
    :cond_1
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchPageType:I

    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    iget-object v0, v0, Lcom/android/camera/ui/UIController;->mEffectSettingPage:Lcom/android/camera/ui/V6EffectSettingPage;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectSettingPage;->prepare()V

    goto :goto_1

    .line 198
    :pswitch_1
    iput v6, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchingPageState:I

    .line 200
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mHandle:Landroid/os/Handler;

    const/16 v1, 0x3e9

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 201
    iget-object v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mUIController:Lcom/android/camera/ui/UIController;

    invoke-virtual {v0, v7}, Lcom/android/camera/ui/UIController;->enableControls(Z)V

    .line 202
    if-ne v3, p1, :cond_2

    .line 203
    iput v3, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchPageType:I

    :goto_2
    move v0, v6

    .line 207
    goto/16 :goto_0

    .line 205
    :cond_2
    iput v8, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchPageType:I

    goto :goto_2

    .line 170
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public handleGestureMessage(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "what"    # I
    .param p2, "extra1"    # Ljava/lang/Object;
    .param p3, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 157
    const-string v0, "V6SettingAnimationManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleGestureMessage "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSwitchPageType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchPageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mSwitchingPageState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchingPageState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-static {p1}, Lcom/android/camera/ui/V6GestureRecognizer;->needToHandleGesture(I)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchingPageState:I

    if-nez v0, :cond_0

    .line 161
    rem-int/lit8 v0, p1, 0x64

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6SettingAnimationManager;->handleGesture(I)Z

    .line 163
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchPageType:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchingPageState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 164
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/V6SettingAnimationManager;->trackGesture(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 166
    :cond_1
    return-void
.end method
