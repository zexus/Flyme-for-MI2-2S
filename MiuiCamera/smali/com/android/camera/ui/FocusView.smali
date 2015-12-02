.class public Lcom/android/camera/ui/FocusView;
.super Landroid/view/View;
.source "FocusView.java"

# interfaces
.implements Lcom/android/camera/ui/FocusIndicator;
.implements Lcom/android/camera/ui/Rotatable;
.implements Lcom/android/camera/ui/V6FunctionUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FocusView$ExposureView;,
        Lcom/android/camera/ui/FocusView$ExposureViewListener;
    }
.end annotation


# static fields
.field public static final BIG_INIT_RADIUS:I

.field private static final BIG_LINE_WIDTH:I

.field private static final BIG_MAX_RADIUS:I

.field public static final BIG_MIN_RADIUS:I

.field public static final BIG_RADIUS:I

.field private static final SMALL_LINE_WIDTH:I

.field private static final SMALL_MAX_RADIUS:I

.field private static final SMALL_RADIUS:I


# instance fields
.field private mActivity:Lcom/android/camera/Camera;

.field private mBigAlpha:I

.field private mBigPaint:Landroid/graphics/Paint;

.field private mBigRadius:I

.field private mCenterX:I

.field private mCenterY:I

.field private mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

.field private mFailTime:J

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsDraw:Z

.field private mIsTouchFocus:Z

.field private mSmallAlpha:I

.field private mSmallLineWidth:I

.field private mSmallPaint:Landroid/graphics/Paint;

.field private mSmallRadius:I

.field private mStartTime:J

.field private mState:I

.field private mSuccessTime:J

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const/high16 v0, 0x40c00000    # 6.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    .line 46
    const/high16 v0, 0x40e00000    # 7.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_MAX_RADIUS:I

    .line 48
    const/high16 v0, 0x42700000    # 60.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_INIT_RADIUS:I

    .line 49
    const/high16 v0, 0x42400000    # 48.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    .line 50
    const/high16 v0, 0x42300000    # 44.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_MIN_RADIUS:I

    .line 51
    const/high16 v0, 0x42a00000    # 80.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_MAX_RADIUS:I

    .line 53
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    .line 54
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/FocusView;->BIG_LINE_WIDTH:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x1

    .line 100
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 82
    sget v0, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    .line 83
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    .line 84
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    .line 85
    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    .line 86
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    .line 87
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 88
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 89
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 90
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    .line 309
    new-instance v0, Lcom/android/camera/ui/FocusView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FocusView$1;-><init>(Lcom/android/camera/ui/FocusView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    move-object v0, p1

    .line 101
    check-cast v0, Lcom/android/camera/Camera;

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    .line 102
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    .line 103
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/FocusView;->BIG_LINE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 105
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 106
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 108
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    .line 109
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    sget v1, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 112
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 114
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 115
    new-instance v0, Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-direct {v0, p0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;-><init>(Lcom/android/camera/ui/FocusView;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    .line 116
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/FocusView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/FocusView;ZZ)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(ZZ)V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/FocusView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/FocusView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mSuccessTime:J

    return-wide v0
.end method

.method static synthetic access$1402(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    return p1
.end method

.method static synthetic access$1500()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    return v0
.end method

.method static synthetic access$1600()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_MAX_RADIUS:I

    return v0
.end method

.method static synthetic access$1700(Lcom/android/camera/ui/FocusView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 36
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    return v0
.end method

.method static synthetic access$1800(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/ui/FocusView$ExposureView;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    return-object v0
.end method

.method static synthetic access$1900(Lcom/android/camera/ui/FocusView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mFailTime:J

    return-wide v0
.end method

.method static synthetic access$2000(Lcom/android/camera/ui/FocusView;F)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # F

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method static synthetic access$2102(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    return p1
.end method

.method static synthetic access$2202(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    return p1
.end method

.method static synthetic access$2300()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    return v0
.end method

.method static synthetic access$2400()I
    .locals 1

    .prologue
    .line 36
    sget v0, Lcom/android/camera/ui/FocusView;->BIG_MAX_RADIUS:I

    return v0
.end method

.method static synthetic access$2500(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    return-void
.end method

.method static synthetic access$2600(Lcom/android/camera/ui/FocusView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->reset()V

    return-void
.end method

.method static synthetic access$2700(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    return-object v0
.end method

.method static synthetic access$4800(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$4900(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Paint;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/FocusView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;

    .prologue
    .line 36
    iget-wide v0, p0, Lcom/android/camera/ui/FocusView;->mStartTime:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    return p1
.end method

.method static synthetic access$902(Lcom/android/camera/ui/FocusView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView;
    .param p1, "x1"    # I

    .prologue
    .line 36
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    return p1
.end method

.method private clearMessages()V
    .locals 2

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 396
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 397
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 398
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 399
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 400
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 401
    return-void
.end method

.method private getInterpolation(F)F
    .locals 1
    .param p1, "t"    # F

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mInterpolator:Landroid/view/animation/Interpolator;

    invoke-interface {v0, p1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

.method private isDraw()Z
    .locals 1

    .prologue
    .line 282
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView$ExposureView;->isDraw()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private processParameterIfNeeded(ZZ)V
    .locals 2
    .param p1, "big"    # Z
    .param p2, "small"    # Z

    .prologue
    .line 129
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    .line 132
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    iput v1, v0, Lcom/android/camera/ui/FocusView$ExposureView;->mEVSmallLineWidth:I

    .line 133
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    iput v1, v0, Lcom/android/camera/ui/FocusView$ExposureView;->mEVSmallRadius:I

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    iput v1, v0, Lcom/android/camera/ui/FocusView$ExposureView;->mEVBigRadius:I

    .line 135
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    iput v1, v0, Lcom/android/camera/ui/FocusView$ExposureView;->mEVBigAlpha:I

    .line 136
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    iput v1, v0, Lcom/android/camera/ui/FocusView$ExposureView;->mEVSmallAlpha:I

    .line 138
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 245
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 246
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 247
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/FocusView;->setPosition(II)V

    .line 248
    iput-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    .line 249
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 250
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 238
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView$ExposureView;->clear()V

    .line 239
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    .line 240
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 241
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    .line 242
    return-void
.end method

.method public enableControls(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 154
    return-void
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 158
    const/4 v0, 0x0

    return v0
.end method

.method public initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V
    .locals 1
    .param p1, "exposureViewListener"    # Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .prologue
    .line 119
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    # invokes: Lcom/android/camera/ui/FocusView$ExposureView;->initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V
    invoke-static {v0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->access$000(Lcom/android/camera/ui/FocusView$ExposureView;Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    .line 120
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->clear()V

    .line 121
    return-void
.end method

.method public isEvAdjusted()Z
    .locals 1

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mScrolled:Z
    invoke-static {v0}, Lcom/android/camera/ui/FocusView$ExposureView;->access$400(Lcom/android/camera/ui/FocusView$ExposureView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mCaptured:Z
    invoke-static {v0}, Lcom/android/camera/ui/FocusView$ExposureView;->access$500(Lcom/android/camera/ui/FocusView$ExposureView;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEvAdjustedTime()Z
    .locals 6

    .prologue
    .line 294
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->isShown()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mScrolled:Z
    invoke-static {v0}, Lcom/android/camera/ui/FocusView$ExposureView;->access$400(Lcom/android/camera/ui/FocusView$ExposureView;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mScrolledDoneTime:J
    invoke-static {v2}, Lcom/android/camera/ui/FocusView$ExposureView;->access$600(Lcom/android/camera/ui/FocusView$ExposureView;)J

    move-result-wide v2

    const-wide/16 v4, 0x7d0

    invoke-static/range {v0 .. v5}, Lcom/android/camera/Util;->isTimeout(JJJ)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEvTouchDown()Z
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z
    invoke-static {v0}, Lcom/android/camera/ui/FocusView$ExposureView;->access$300(Lcom/android/camera/ui/FocusView$ExposureView;)Z

    move-result v0

    return v0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView$ExposureView;->isDraw()Z

    move-result v0

    return v0
.end method

.method public onCameraOpen()V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView$ExposureView;->onCameraOpen()V

    .line 146
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 141
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v4, 0x24

    const/4 v3, 0x0

    const/16 v2, 0xff

    .line 266
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->onDraw(Landroid/graphics/Canvas;)V

    .line 267
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->isDraw()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mState:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 269
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    invoke-static {v1, v4, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 270
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    invoke-static {v1, v4, v2, v3}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 276
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 277
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 279
    :cond_0
    return-void

    .line 272
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 273
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    goto :goto_0
.end method

.method public onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 253
    invoke-super/range {p0 .. p5}, Landroid/view/View;->onLayout(ZIIII)V

    .line 254
    if-eqz p1, :cond_0

    .line 255
    sub-int v0, p4, p2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    .line 256
    sub-int v0, p5, p2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    .line 257
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 258
    iget v0, p0, Lcom/android/camera/ui/FocusView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    .line 260
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v1}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getGLView()Lcom/android/camera/ui/V6CameraGLSurfaceView;

    move-result-object v1

    invoke-static {v1, p0}, Lcom/android/camera/Util;->getRelativeLocation(Landroid/view/View;Landroid/view/View;)[I

    move-result-object v1

    # setter for: Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I
    invoke-static {v0, v1}, Lcom/android/camera/ui/FocusView$ExposureView;->access$202(Lcom/android/camera/ui/FocusView$ExposureView;[I)[I

    .line 262
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView$ExposureView;->onPause()V

    .line 405
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView$ExposureView;->onResume()V

    .line 151
    return-void
.end method

.method public onViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 414
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public setFocusType(Z)V
    .locals 0
    .param p1, "isTouchFocus"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    .line 168
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 1
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V

    .line 164
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 409
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/FocusView$ExposureView;->setOrientation(IZ)V

    .line 410
    return-void
.end method

.method public setPosition(II)V
    .locals 3
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 304
    iput p1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    .line 305
    iput p2, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    .line 306
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    iget v1, p0, Lcom/android/camera/ui/FocusView;->mCenterX:I

    iget v2, p0, Lcom/android/camera/ui/FocusView;->mCenterY:I

    invoke-virtual {v0, v1, v2}, Lcom/android/camera/ui/FocusView$ExposureView;->setPosition(II)V

    .line 307
    return-void
.end method

.method public showFail()V
    .locals 6

    .prologue
    const/4 v4, 0x3

    const/4 v2, 0x1

    .line 220
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-ne v1, v2, :cond_1

    .line 221
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 222
    .local v0, "animating":Z
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 223
    iput-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    .line 224
    iput v4, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 225
    if-eqz v0, :cond_0

    .line 226
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 228
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/camera/ui/FocusView;->mFailTime:J

    .line 229
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x32

    invoke-virtual {v1, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 230
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x5

    const-wide/16 v4, 0x320

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 231
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 233
    .end local v0    # "animating":Z
    :cond_1
    return-void
.end method

.method public showStart()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 176
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 177
    iput v2, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 178
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallRadius:I

    .line 179
    const/16 v0, 0xb4

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallAlpha:I

    .line 180
    sget v0, Lcom/android/camera/ui/FocusView;->SMALL_LINE_WIDTH:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mSmallLineWidth:I

    .line 181
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/FocusView;->mStartTime:J

    .line 184
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;
    invoke-static {v0}, Lcom/android/camera/ui/FocusView$ExposureView;->access$100(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isMeteringAreaOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 185
    iput-boolean v3, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 196
    :goto_0
    return-void

    .line 188
    :cond_0
    iput-boolean v2, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    .line 189
    sget v0, Lcom/android/camera/ui/FocusView;->BIG_INIT_RADIUS:I

    iput v0, p0, Lcom/android/camera/ui/FocusView;->mBigRadius:I

    .line 190
    iput v3, p0, Lcom/android/camera/ui/FocusView;->mBigAlpha:I

    .line 191
    invoke-direct {p0, v2, v2}, Lcom/android/camera/ui/FocusView;->processParameterIfNeeded(ZZ)V

    .line 192
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 193
    iget-object v0, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 194
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    goto :goto_0
.end method

.method public showSuccess()V
    .locals 8

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 200
    iget v1, p0, Lcom/android/camera/ui/FocusView;->mState:I

    if-ne v1, v3, :cond_2

    .line 201
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    .line 202
    .local v0, "animating":Z
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView;->clearMessages()V

    .line 203
    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-eqz v1, :cond_3

    move v1, v2

    :goto_0
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsDraw:Z

    .line 204
    iput v6, p0, Lcom/android/camera/ui/FocusView;->mState:I

    .line 205
    if-eqz v0, :cond_0

    .line 206
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 208
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ui/FocusView;->mSuccessTime:J

    .line 209
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x32

    invoke-virtual {v1, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 210
    iget-boolean v1, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-nez v1, :cond_1

    .line 211
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mHandler:Landroid/os/Handler;

    const/4 v4, 0x5

    const-wide/16 v6, 0x320

    invoke-virtual {v1, v4, v6, v7}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 213
    :cond_1
    iget-object v1, p0, Lcom/android/camera/ui/FocusView;->mExposureView:Lcom/android/camera/ui/FocusView$ExposureView;

    iget-boolean v4, p0, Lcom/android/camera/ui/FocusView;->mIsTouchFocus:Z

    if-nez v4, :cond_4

    :goto_1
    invoke-virtual {v1, v3}, Lcom/android/camera/ui/FocusView$ExposureView;->setTimeout(Z)V

    .line 214
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 216
    .end local v0    # "animating":Z
    :cond_2
    return-void

    .restart local v0    # "animating":Z
    :cond_3
    move v1, v3

    .line 203
    goto :goto_0

    :cond_4
    move v3, v2

    .line 213
    goto :goto_1
.end method
