.class public Lcom/android/camera/ui/V6EdgeShutterView;
.super Landroid/view/View;
.source "V6EdgeShutterView.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;,
        Lcom/android/camera/ui/V6EdgeShutterView$ReverseInterpolator;
    }
.end annotation


# static fields
.field private static final CENTER_RADIUS:I

.field private static final NEAR_THRESHOLD:I

.field private static NORMAL_TAP_MAXY:I

.field private static NORMAL_TOUCH_MAXY:I

.field private static final OUTER_CIRCLE_WIDTH:I

.field private static final OUT_RADIUS:I

.field private static final VIEW_WIDTH:I


# instance fields
.field private mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

.field private mCenterPaint:Landroid/graphics/Paint;

.field private mClickAnim:Landroid/animation/ValueAnimator;

.field private mFlyOutAnim:Landroid/animation/ValueAnimator;

.field private mFlyinInterpolator:Landroid/view/animation/Interpolator;

.field private mHandler:Landroid/os/Handler;

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mMoveAnim:Landroid/animation/ValueAnimator;

.field private mMoveInterpolator:Landroid/view/animation/Interpolator;

.field private mOuterPaint:Landroid/graphics/Paint;

.field private mPressInterpolator:Landroid/view/animation/Interpolator;

.field private mVisableBount:Landroid/graphics/Rect;

.field private mVisibleState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 46
    const v0, 0x4285570a    # 66.67f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EdgeShutterView;->NEAR_THRESHOLD:I

    .line 49
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EdgeShutterView;->OUTER_CIRCLE_WIDTH:I

    .line 50
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0041

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EdgeShutterView;->OUT_RADIUS:I

    .line 52
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0042

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EdgeShutterView;->CENTER_RADIUS:I

    .line 54
    invoke-static {}, Lcom/android/camera/CameraAppImpl;->getAndroidContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0043

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    .line 56
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    const-string v1, "camera_edge_max"

    const/16 v2, 0x4b

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x64

    sput v0, Lcom/android/camera/ui/V6EdgeShutterView;->NORMAL_TAP_MAXY:I

    .line 57
    sget v0, Lcom/android/camera/ui/V6EdgeShutterView;->NORMAL_TAP_MAXY:I

    sget v1, Lcom/android/camera/ui/V6EdgeShutterView;->NEAR_THRESHOLD:I

    div-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    sput v0, Lcom/android/camera/ui/V6EdgeShutterView;->NORMAL_TOUCH_MAXY:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 106
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 68
    new-instance v0, Landroid/view/animation/OvershootInterpolator;

    invoke-direct {v0}, Landroid/view/animation/OvershootInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyinInterpolator:Landroid/view/animation/Interpolator;

    .line 69
    new-instance v0, Lcom/android/camera/ui/V6EdgeShutterView$ReverseInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/V6EdgeShutterView$ReverseInterpolator;-><init>(Lcom/android/camera/ui/V6EdgeShutterView;Lcom/android/camera/ui/V6EdgeShutterView$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mPressInterpolator:Landroid/view/animation/Interpolator;

    .line 70
    new-instance v0, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v0}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mMoveInterpolator:Landroid/view/animation/Interpolator;

    .line 74
    new-instance v0, Lcom/android/camera/ui/V6EdgeShutterView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6EdgeShutterView$1;-><init>(Lcom/android/camera/ui/V6EdgeShutterView;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mHandler:Landroid/os/Handler;

    .line 107
    new-instance v0, Landroid/graphics/Rect;

    sget v1, Lcom/android/camera/Util;->sWindowWidth:I

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    invoke-direct {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mVisableBount:Landroid/graphics/Rect;

    .line 108
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/V6EdgeShutterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6EdgeShutterView;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->hideShutterView()V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/ui/V6EdgeShutterView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6EdgeShutterView;

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->checkPosture()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/ui/V6EdgeShutterView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EdgeShutterView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/camera/ui/V6EdgeShutterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EdgeShutterView;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/ui/V6EdgeShutterView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6EdgeShutterView;
    .param p1, "x1"    # I

    .prologue
    .line 31
    iput p1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/ui/V6EdgeShutterView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EdgeShutterView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mMoveAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/V6EdgeShutterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EdgeShutterView;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/V6EdgeShutterView;)Landroid/animation/ValueAnimator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EdgeShutterView;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mClickAnim:Landroid/animation/ValueAnimator;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/V6EdgeShutterView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EdgeShutterView;

    .prologue
    .line 31
    iget v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    return v0
.end method

.method private checkPosture()V
    .locals 3

    .prologue
    .line 389
    iget-object v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mContext:Landroid/content/Context;

    check-cast v1, Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getCapturePosture()I

    move-result v0

    .line 390
    .local v0, "posture":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    if-nez v1, :cond_2

    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    if-eqz v1, :cond_2

    :cond_1
    if-nez v0, :cond_3

    iget v1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mTop:I

    sget v2, Lcom/android/camera/ui/V6EdgeShutterView;->NORMAL_TAP_MAXY:I

    if-le v1, v2, :cond_3

    .line 393
    :cond_2
    invoke-direct {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->hideShutterView()V

    .line 395
    :cond_3
    return-void
.end method

.method private createFlyOutAnimation()Landroid/animation/ValueAnimator;
    .locals 7

    .prologue
    .line 332
    iget v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    sget v4, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    if-ge v3, v4, :cond_0

    .line 333
    const/4 v2, 0x0

    .line 334
    .local v2, "startX":I
    sget v3, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    neg-int v1, v3

    .line 339
    .local v1, "endX":I
    :goto_0
    const-string v3, "translationX"

    const/4 v4, 0x2

    new-array v4, v4, [F

    const/4 v5, 0x0

    int-to-float v6, v2

    aput v6, v4, v5

    const/4 v5, 0x1

    int-to-float v6, v1

    aput v6, v4, v5

    invoke-static {p0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 340
    .local v0, "animFlyOut":Landroid/animation/ValueAnimator;
    iget-object v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mMoveInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 341
    const-wide/16 v4, 0xfa

    invoke-virtual {v0, v4, v5}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 342
    iget-object v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v0, v3}, Landroid/animation/ValueAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 343
    return-object v0

    .line 336
    .end local v0    # "animFlyOut":Landroid/animation/ValueAnimator;
    .end local v1    # "endX":I
    .end local v2    # "startX":I
    :cond_0
    const/4 v2, 0x0

    .line 337
    .restart local v2    # "startX":I
    sget v1, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    .restart local v1    # "endX":I
    goto :goto_0
.end method

.method private hideShutterView()V
    .locals 2

    .prologue
    .line 381
    iget v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 382
    invoke-direct {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->createFlyOutAnimation()Landroid/animation/ValueAnimator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;

    .line 383
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mFlyOutAnim:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 384
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I

    .line 386
    :cond_0
    return-void
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 361
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EdgeShutterView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 362
    iget v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mLeft:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EdgeShutterView;->setX(F)V

    .line 363
    iget v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mTop:I

    int-to-float v0, v0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EdgeShutterView;->setY(F)V

    .line 364
    return-void
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 131
    return-void
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 148
    const/4 v0, 0x0

    return v0
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 128
    return-void
.end method

.method public onCreate()V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 117
    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    const v1, -0xfc0ff

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    const v1, -0x6f000001

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 124
    :goto_0
    return-void

    .line 121
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public onDeviceMoving()V
    .locals 2

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 422
    return-void
.end method

.method public onDevicePostureChanged()V
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 418
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 248
    sget v0, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget v1, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/ui/V6EdgeShutterView;->OUT_RADIUS:I

    add-int/lit8 v2, v2, -0x2

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 250
    sget v0, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v0, v0, 0x2

    int-to-float v0, v0

    sget v1, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sget v2, Lcom/android/camera/ui/V6EdgeShutterView;->CENTER_RADIUS:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 251
    return-void
.end method

.method protected onFinishInflate()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, -0x1

    .line 91
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    .line 92
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 93
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 94
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mCenterPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 96
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    .line 97
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 98
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 100
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mOuterPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/V6EdgeShutterView;->OUTER_CIRCLE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 102
    new-instance v0, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/V6EdgeShutterView$CustomAnimatorListener;-><init>(Lcom/android/camera/ui/V6EdgeShutterView;Lcom/android/camera/ui/V6EdgeShutterView$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mAnimatorListener:Landroid/animation/Animator$AnimatorListener;

    .line 103
    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 242
    sget v0, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    sget v1, Lcom/android/camera/ui/V6EdgeShutterView;->VIEW_WIDTH:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/V6EdgeShutterView;->setMeasuredDimension(II)V

    .line 243
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 140
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 141
    iget-object v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 142
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EdgeShutterView;->setVisibility(I)V

    .line 143
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 135
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 112
    iput-object p1, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 113
    return-void
.end method

.method public setVisibility(I)V
    .locals 1
    .param p1, "visibility"    # I

    .prologue
    .line 368
    invoke-super {p0, p1}, Landroid/view/View;->setVisibility(I)V

    .line 369
    if-eqz p1, :cond_0

    .line 370
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/ui/V6EdgeShutterView;->mVisibleState:I

    .line 372
    :cond_0
    return-void
.end method
