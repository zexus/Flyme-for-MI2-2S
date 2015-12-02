.class public Lcom/android/camera/ui/V6EffectCropView;
.super Landroid/view/View;
.source "V6EffectCropView.java"

# interfaces
.implements Lcom/android/camera/ui/V6FunctionUI;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6EffectCropView$MyGestureListener;
    }
.end annotation


# static fields
.field private static final ANIMATE_START_RANGE:I

.field private static final DEFAULT_RANGE:I

.field private static final MIN_CROP_WIDTH_HEIGHT:I

.field private static final MIN_DIS_FOR_MOVE_POINT:F

.field private static final MIN_DIS_FOR_SLOPE:I

.field private static final MIN_RANGE:I

.field private static final TOUCH_TOLERANCE:I


# instance fields
.field private mAnimateHandler:Landroid/os/Handler;

.field private mAnimateRangeWidth:I

.field private mAnimateThread:Landroid/os/HandlerThread;

.field private mAnimationStartRange:I

.field private mAnimationStartTime:J

.field private mAnimationTotalTime:J

.field private final mBorderPaint:Landroid/graphics/Paint;

.field private mCenterLineSquare:I

.field private final mCropBounds:Landroid/graphics/RectF;

.field private final mCropIndicatorBottom:Landroid/graphics/drawable/Drawable;

.field private final mCropIndicatorLeft:Landroid/graphics/drawable/Drawable;

.field private final mCropIndicatorRight:Landroid/graphics/drawable/Drawable;

.field private final mCropIndicatorTop:Landroid/graphics/drawable/Drawable;

.field private final mDefaultBounds:Landroid/graphics/RectF;

.field private final mDisplayBounds:Landroid/graphics/RectF;

.field private final mDottedLinePaint:Landroid/graphics/Paint;

.field private final mEffectPoint1:Landroid/graphics/PointF;

.field private final mEffectPoint2:Landroid/graphics/PointF;

.field private final mEffectRect:Landroid/graphics/RectF;

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private final mIndicatorSize:I

.field private mInterpolator:Landroid/view/animation/Interpolator;

.field private mIsInTapSlop:Z

.field private mIsRect:Z

.field private mLastMoveDis:D

.field private mLastX:F

.field private mLastY:F

.field private mMaxRange:I

.field private mMovingEdges:I

.field private mNormalizedWidth:F

.field private final mPoint1:Landroid/graphics/Point;

.field private final mPoint2:Landroid/graphics/Point;

.field private mRangeWidth:I

.field private final mSolidLinePaint:Landroid/graphics/Paint;

.field private mTapSlop:I

.field private final mTouchCenter:Landroid/graphics/Point;

.field private mVisible:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/high16 v2, 0x41f00000    # 30.0f

    const/high16 v1, 0x41200000    # 10.0f

    .line 39
    const/high16 v0, 0x42800000    # 64.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    .line 40
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    mul-int/2addr v0, v1

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->MIN_DIS_FOR_SLOPE:I

    .line 41
    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->MIN_DIS_FOR_MOVE_POINT:F

    .line 42
    const/high16 v0, 0x41900000    # 18.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    .line 43
    const/high16 v0, 0x41a00000    # 20.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->MIN_RANGE:I

    .line 44
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    div-int/lit8 v0, v0, 0x3

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->DEFAULT_RANGE:I

    .line 45
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    sput v0, Lcom/android/camera/ui/V6EffectCropView;->ANIMATE_START_RANGE:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x4

    const/4 v4, 0x2

    const/4 v10, 0x0

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 89
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    .line 56
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultBounds:Landroid/graphics/RectF;

    .line 57
    new-instance v2, Landroid/graphics/RectF;

    invoke-direct {v2}, Landroid/graphics/RectF;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    .line 58
    new-instance v2, Landroid/graphics/RectF;

    const/high16 v5, 0x3f800000    # 1.0f

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-direct {v2, v8, v8, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectRect:Landroid/graphics/RectF;

    .line 66
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    .line 67
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    .line 68
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mTouchCenter:Landroid/graphics/Point;

    .line 69
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint1:Landroid/graphics/PointF;

    .line 70
    new-instance v2, Landroid/graphics/PointF;

    invoke-direct {v2}, Landroid/graphics/PointF;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint2:Landroid/graphics/PointF;

    .line 73
    iput v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mNormalizedWidth:F

    .line 74
    iput v10, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    .line 82
    new-instance v2, Lmiui/view/animation/CubicEaseOutInterpolator;

    invoke-direct {v2}, Lmiui/view/animation/CubicEaseOutInterpolator;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mInterpolator:Landroid/view/animation/Interpolator;

    .line 83
    iput v10, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRangeWidth:I

    .line 90
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 91
    .local v1, "resources":Landroid/content/res/Resources;
    const v2, 0x7f0200a5

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropIndicatorLeft:Landroid/graphics/drawable/Drawable;

    .line 92
    const v2, 0x7f0200a7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropIndicatorTop:Landroid/graphics/drawable/Drawable;

    .line 93
    const v2, 0x7f0200a6

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropIndicatorRight:Landroid/graphics/drawable/Drawable;

    .line 94
    const v2, 0x7f0200a4

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropIndicatorBottom:Landroid/graphics/drawable/Drawable;

    .line 95
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v2

    if-eqz v2, :cond_0

    const/high16 v2, 0x422c0000    # 43.0f

    :goto_0
    invoke-static {v2}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mIndicatorSize:I

    .line 96
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    .line 97
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 98
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    const/4 v5, -0x1

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 99
    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v3

    :goto_1
    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 100
    new-instance v2, Landroid/view/GestureDetector;

    new-instance v5, Lcom/android/camera/ui/V6EffectCropView$MyGestureListener;

    const/4 v6, 0x0

    invoke-direct {v5, p0, v6}, Lcom/android/camera/ui/V6EffectCropView$MyGestureListener;-><init>(Lcom/android/camera/ui/V6EffectCropView;Lcom/android/camera/ui/V6EffectCropView$1;)V

    const/4 v6, 0x0

    invoke-direct {v2, p1, v5, v6, v9}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 102
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mSolidLinePaint:Landroid/graphics/Paint;

    .line 103
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mSolidLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 104
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mSolidLinePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 105
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mSolidLinePaint:Landroid/graphics/Paint;

    const v5, -0x19000001

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 106
    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mSolidLinePaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x8

    :goto_2
    int-to-float v2, v2

    invoke-virtual {v5, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 108
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    iput-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDottedLinePaint:Landroid/graphics/Paint;

    .line 109
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDottedLinePaint:Landroid/graphics/Paint;

    invoke-virtual {v2, v9}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 110
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDottedLinePaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 111
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDottedLinePaint:Landroid/graphics/Paint;

    const v5, 0x66ffffff

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 112
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDottedLinePaint:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/DashPathEffect;

    new-array v6, v4, [F

    const/high16 v7, 0x41900000    # 18.0f

    invoke-static {v7}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v10

    const/high16 v7, 0x41100000    # 9.0f

    invoke-static {v7}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v7

    int-to-float v7, v7

    aput v7, v6, v9

    invoke-direct {v5, v6, v8}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 114
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDottedLinePaint:Landroid/graphics/Paint;

    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v5

    if-eqz v5, :cond_3

    :goto_3
    int-to-float v3, v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 115
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 116
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v3

    mul-int/2addr v2, v3

    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mTapSlop:I

    .line 117
    return-void

    .line 95
    .end local v0    # "configuration":Landroid/view/ViewConfiguration;
    :cond_0
    const/high16 v2, 0x41f00000    # 30.0f

    goto/16 :goto_0

    :cond_1
    move v2, v4

    .line 99
    goto/16 :goto_1

    :cond_2
    move v2, v3

    .line 106
    goto :goto_2

    :cond_3
    move v3, v4

    .line 114
    goto :goto_3
.end method

.method static synthetic access$100(Lcom/android/camera/ui/V6EffectCropView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartTime:J

    return-wide v0
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/V6EffectCropView;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint2:Landroid/graphics/PointF;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/V6EffectCropView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 29
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mNormalizedWidth:F

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/V6EffectCropView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationTotalTime:J

    return-wide v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/V6EffectCropView;)Landroid/view/animation/Interpolator;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/ui/V6EffectCropView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;
    .param p1, "x1"    # I

    .prologue
    .line 29
    iput p1, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/ui/V6EffectCropView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 29
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRange:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/V6EffectCropView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 29
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRangeWidth:I

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/V6EffectCropView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->normalizeRangeWidth()V

    return-void
.end method

.method static synthetic access$800(Lcom/android/camera/ui/V6EffectCropView;)Landroid/graphics/RectF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectRect:Landroid/graphics/RectF;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/V6EffectCropView;)Landroid/graphics/PointF;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6EffectCropView;

    .prologue
    .line 29
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint1:Landroid/graphics/PointF;

    return-object v0
.end method

.method private computeCertenLineCrossPoints(Landroid/graphics/Point;Landroid/graphics/Point;)V
    .locals 11
    .param p1, "point1"    # Landroid/graphics/Point;
    .param p2, "point2"    # Landroid/graphics/Point;

    .prologue
    .line 480
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6EffectCropView;->squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v8

    sget v9, Lcom/android/camera/ui/V6EffectCropView;->MIN_DIS_FOR_SLOPE:I

    if-ge v8, v9, :cond_1

    .line 528
    :cond_0
    :goto_0
    return-void

    .line 481
    :cond_1
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v8

    float-to-int v5, v8

    .line 482
    .local v5, "w":I
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v8

    float-to-int v0, v8

    .line 484
    .local v0, "h":I
    iget v8, p1, Landroid/graphics/Point;->x:I

    iget v9, p2, Landroid/graphics/Point;->x:I

    if-ne v8, v9, :cond_2

    .line 485
    iget v8, p1, Landroid/graphics/Point;->x:I

    const/4 v9, 0x0

    invoke-static {v8, v9, v5}, Lcom/android/camera/Util;->clamp(III)I

    move-result v6

    .line 486
    .local v6, "x":I
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    const/4 v9, 0x0

    invoke-virtual {v8, v6, v9}, Landroid/graphics/Point;->set(II)V

    .line 487
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-virtual {v8, v6, v0}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 490
    .end local v6    # "x":I
    :cond_2
    iget v8, p1, Landroid/graphics/Point;->y:I

    iget v9, p2, Landroid/graphics/Point;->y:I

    if-ne v8, v9, :cond_3

    .line 491
    iget v8, p1, Landroid/graphics/Point;->y:I

    const/4 v9, 0x0

    invoke-static {v8, v9, v0}, Lcom/android/camera/Util;->clamp(III)I

    move-result v7

    .line 492
    .local v7, "y":I
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    const/4 v9, 0x0

    invoke-virtual {v8, v9, v7}, Landroid/graphics/Point;->set(II)V

    .line 493
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-virtual {v8, v5, v7}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 496
    .end local v7    # "y":I
    :cond_3
    const/4 v8, 0x2

    new-array v2, v8, [Landroid/graphics/Point;

    .line 497
    .local v2, "tmpPoint":[Landroid/graphics/Point;
    const/4 v3, 0x0

    .line 498
    .local v3, "validIndex":I
    iget v8, p2, Landroid/graphics/Point;->y:I

    iget v9, p1, Landroid/graphics/Point;->y:I

    sub-int/2addr v8, v9

    int-to-float v8, v8

    iget v9, p2, Landroid/graphics/Point;->x:I

    iget v10, p1, Landroid/graphics/Point;->x:I

    sub-int/2addr v9, v10

    int-to-float v9, v9

    div-float v1, v8, v9

    .line 501
    .local v1, "slope":F
    iget v8, p1, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, p1, Landroid/graphics/Point;->y:I

    int-to-float v9, v9

    div-float/2addr v9, v1

    sub-float/2addr v8, v9

    float-to-int v6, v8

    .line 502
    .restart local v6    # "x":I
    if-ltz v6, :cond_4

    if-gt v6, v5, :cond_4

    .line 503
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "validIndex":I
    .local v4, "validIndex":I
    new-instance v8, Landroid/graphics/Point;

    const/4 v9, 0x0

    invoke-direct {v8, v6, v9}, Landroid/graphics/Point;-><init>(II)V

    aput-object v8, v2, v3

    move v3, v4

    .line 506
    .end local v4    # "validIndex":I
    .restart local v3    # "validIndex":I
    :cond_4
    iget v8, p1, Landroid/graphics/Point;->x:I

    int-to-float v8, v8

    iget v9, p1, Landroid/graphics/Point;->y:I

    sub-int v9, v0, v9

    int-to-float v9, v9

    div-float/2addr v9, v1

    add-float/2addr v8, v9

    float-to-int v6, v8

    .line 507
    if-ltz v6, :cond_5

    if-gt v6, v5, :cond_5

    .line 508
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "validIndex":I
    .restart local v4    # "validIndex":I
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v6, v0}, Landroid/graphics/Point;-><init>(II)V

    aput-object v8, v2, v3

    move v3, v4

    .line 511
    .end local v4    # "validIndex":I
    .restart local v3    # "validIndex":I
    :cond_5
    iget v8, p1, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    iget v9, p1, Landroid/graphics/Point;->x:I

    int-to-float v9, v9

    mul-float/2addr v9, v1

    sub-float/2addr v8, v9

    float-to-int v7, v8

    .line 512
    .restart local v7    # "y":I
    if-ltz v7, :cond_6

    if-gt v7, v0, :cond_6

    const/4 v8, 0x0

    invoke-direct {p0, v2, v8, v7}, Lcom/android/camera/ui/V6EffectCropView;->isContained([Landroid/graphics/Point;II)Z

    move-result v8

    if-nez v8, :cond_6

    .line 513
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "validIndex":I
    .restart local v4    # "validIndex":I
    new-instance v8, Landroid/graphics/Point;

    const/4 v9, 0x0

    invoke-direct {v8, v9, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v8, v2, v3

    move v3, v4

    .line 516
    .end local v4    # "validIndex":I
    .restart local v3    # "validIndex":I
    :cond_6
    iget v8, p1, Landroid/graphics/Point;->y:I

    int-to-float v8, v8

    iget v9, p1, Landroid/graphics/Point;->x:I

    sub-int v9, v5, v9

    int-to-float v9, v9

    mul-float/2addr v9, v1

    add-float/2addr v8, v9

    float-to-int v7, v8

    .line 517
    if-ltz v7, :cond_8

    if-gt v7, v0, :cond_8

    invoke-direct {p0, v2, v5, v7}, Lcom/android/camera/ui/V6EffectCropView;->isContained([Landroid/graphics/Point;II)Z

    move-result v8

    if-nez v8, :cond_8

    .line 518
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "validIndex":I
    .restart local v4    # "validIndex":I
    new-instance v8, Landroid/graphics/Point;

    invoke-direct {v8, v5, v7}, Landroid/graphics/Point;-><init>(II)V

    aput-object v8, v2, v3

    .line 520
    :goto_1
    const/4 v8, 0x1

    if-ne v4, v8, :cond_7

    .line 521
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "validIndex":I
    .restart local v3    # "validIndex":I
    new-instance v8, Landroid/graphics/Point;

    const/4 v9, 0x0

    aget-object v9, v2, v9

    invoke-direct {v8, v9}, Landroid/graphics/Point;-><init>(Landroid/graphics/Point;)V

    aput-object v8, v2, v4

    .line 523
    :goto_2
    const/4 v8, 0x2

    if-ne v3, v8, :cond_0

    sget v8, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    sget v9, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    mul-int/2addr v8, v9

    const/4 v9, 0x0

    aget-object v9, v2, v9

    const/4 v10, 0x1

    aget-object v10, v2, v10

    invoke-direct {p0, v9, v10}, Lcom/android/camera/ui/V6EffectCropView;->squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v9

    if-gt v8, v9, :cond_0

    .line 525
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    const/4 v9, 0x0

    aget-object v9, v2, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    const/4 v10, 0x0

    aget-object v10, v2, v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    .line 526
    iget-object v8, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    const/4 v9, 0x1

    aget-object v9, v2, v9

    iget v9, v9, Landroid/graphics/Point;->x:I

    const/4 v10, 0x1

    aget-object v10, v2, v10

    iget v10, v10, Landroid/graphics/Point;->y:I

    invoke-virtual {v8, v9, v10}, Landroid/graphics/Point;->set(II)V

    goto/16 :goto_0

    .end local v3    # "validIndex":I
    .restart local v4    # "validIndex":I
    :cond_7
    move v3, v4

    .end local v4    # "validIndex":I
    .restart local v3    # "validIndex":I
    goto :goto_2

    :cond_8
    move v4, v3

    .end local v3    # "validIndex":I
    .restart local v4    # "validIndex":I
    goto :goto_1
.end method

.method private computePointWithDistance(I)Landroid/graphics/Point;
    .locals 6
    .param p1, "distance"    # I

    .prologue
    .line 548
    new-instance v3, Landroid/graphics/Point;

    invoke-direct {v3}, Landroid/graphics/Point;-><init>()V

    .line 549
    .local v3, "point":Landroid/graphics/Point;
    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    if-ne v4, v5, :cond_0

    .line 550
    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, p1

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    .line 559
    :goto_0
    return-object v3

    .line 551
    :cond_0
    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    if-ne v4, v5, :cond_1

    .line 552
    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, p1

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    goto :goto_0

    .line 554
    :cond_1
    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    int-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    double-to-float v0, v4

    .line 555
    .local v0, "centerDistance":F
    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v4, v5

    mul-int/2addr v4, p1

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v1, v4

    .line 556
    .local v1, "deltaX":I
    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->x:I

    sub-int/2addr v4, v5

    mul-int/2addr v4, p1

    int-to-float v4, v4

    div-float/2addr v4, v0

    float-to-int v2, v4

    .line 557
    .local v2, "deltaY":I
    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->x:I

    add-int/2addr v4, v1

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v5, v5, Landroid/graphics/Point;->y:I

    sub-int/2addr v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Point;->set(II)V

    goto :goto_0
.end method

.method private detectMovingEdges(FF)V
    .locals 13
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/16 v12, 0x10

    const/4 v0, 0x1

    const/4 v5, 0x0

    .line 157
    iput v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    .line 159
    iget-boolean v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    if-eqz v1, :cond_7

    .line 161
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v1, v1, p2

    if-gtz v1, :cond_0

    .line 162
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v7

    .line 163
    .local v7, "left":F
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    sub-float v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v8

    .line 164
    .local v8, "right":F
    sget v1, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v1, v1

    cmpg-float v1, v7, v1

    if-gtz v1, :cond_4

    cmpg-float v1, v7, v8

    if-gez v1, :cond_4

    .line 165
    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    .line 172
    .end local v7    # "left":F
    .end local v8    # "right":F
    :cond_0
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    cmpg-float v1, p1, v1

    if-gtz v1, :cond_2

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v1, v1, p1

    if-gtz v1, :cond_2

    .line 173
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v9

    .line 174
    .local v9, "top":F
    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v1, p2, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v6

    .line 175
    .local v6, "bottom":F
    sget v1, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v1, v1

    cmpg-float v1, v9, v1

    if-gtz v1, :cond_5

    move v1, v0

    :goto_1
    cmpg-float v2, v9, v6

    if-gez v2, :cond_1

    move v5, v0

    :cond_1
    and-int v0, v1, v5

    if-eqz v0, :cond_6

    .line 176
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    .line 183
    .end local v6    # "bottom":F
    .end local v9    # "top":F
    :cond_2
    :goto_2
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    if-nez v0, :cond_3

    .line 184
    iput v12, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    .line 205
    :cond_3
    :goto_3
    return-void

    .line 166
    .restart local v7    # "left":F
    .restart local v8    # "right":F
    :cond_4
    sget v1, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v1, v1

    cmpg-float v1, v8, v1

    if-gtz v1, :cond_0

    .line 167
    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    or-int/lit8 v1, v1, 0x4

    iput v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto :goto_0

    .end local v7    # "left":F
    .end local v8    # "right":F
    .restart local v6    # "bottom":F
    .restart local v9    # "top":F
    :cond_5
    move v1, v5

    .line 175
    goto :goto_1

    .line 177
    :cond_6
    sget v0, Lcom/android/camera/ui/V6EffectCropView;->TOUCH_TOLERANCE:I

    int-to-float v0, v0

    cmpg-float v0, v6, v0

    if-gtz v0, :cond_2

    .line 178
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto :goto_2

    .line 187
    .end local v6    # "bottom":F
    .end local v9    # "top":F
    :cond_7
    new-instance v11, Landroid/graphics/Point;

    float-to-int v0, p1

    float-to-int v1, p2

    invoke-direct {v11, v0, v1}, Landroid/graphics/Point;-><init>(II)V

    .line 188
    .local v11, "touchpoint":Landroid/graphics/Point;
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTouchCenter:Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    add-int/2addr v1, v2

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    add-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 189
    sget v0, Lcom/android/camera/ui/V6EffectCropView;->MIN_DIS_FOR_MOVE_POINT:F

    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_8

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    invoke-direct {p0, v11, v0}, Lcom/android/camera/ui/V6EffectCropView;->squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    div-int/lit8 v1, v1, 0x10

    if-ge v0, v1, :cond_8

    .line 191
    const/16 v0, 0x101

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto :goto_3

    .line 192
    :cond_8
    sget v0, Lcom/android/camera/ui/V6EffectCropView;->MIN_DIS_FOR_MOVE_POINT:F

    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-direct {p0, v11, v0}, Lcom/android/camera/ui/V6EffectCropView;->squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    div-int/lit8 v1, v1, 0x10

    if-ge v0, v1, :cond_9

    .line 194
    const/16 v0, 0x102

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto :goto_3

    .line 196
    :cond_9
    new-instance v3, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    invoke-direct {v3, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    new-instance v4, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-direct {v4, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/V6EffectCropView;->getSquareOfDistance(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Z)F

    move-result v10

    .line 197
    .local v10, "touchDistance":F
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    mul-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x9

    int-to-float v0, v0

    cmpg-float v0, v10, v0

    if-gez v0, :cond_a

    .line 198
    iput v12, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto/16 :goto_3

    .line 200
    :cond_a
    float-to-double v0, v10

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastMoveDis:D

    .line 201
    const/16 v0, 0x104

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    goto/16 :goto_3
.end method

.method private drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "indicator"    # Landroid/graphics/drawable/Drawable;
    .param p3, "centerX"    # F
    .param p4, "centerY"    # F

    .prologue
    .line 298
    float-to-int v2, p3

    iget v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mIndicatorSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v0, v2, v3

    .line 299
    .local v0, "left":I
    float-to-int v2, p4

    iget v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mIndicatorSize:I

    div-int/lit8 v3, v3, 0x2

    sub-int v1, v2, v3

    .line 300
    .local v1, "top":I
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mIndicatorSize:I

    add-int/2addr v2, v0

    iget v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mIndicatorSize:I

    add-int/2addr v3, v1

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 301
    invoke-virtual {p2, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 302
    return-void
.end method

.method private getSquareOfDistance(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Z)F
    .locals 16
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "point1"    # Landroid/graphics/PointF;
    .param p4, "point2"    # Landroid/graphics/PointF;
    .param p5, "segment"    # Z

    .prologue
    .line 460
    move-object/from16 v0, p3

    iget v7, v0, Landroid/graphics/PointF;->x:F

    .line 461
    .local v7, "x1":F
    move-object/from16 v0, p3

    iget v9, v0, Landroid/graphics/PointF;->y:F

    .line 462
    .local v9, "y1":F
    move-object/from16 v0, p4

    iget v8, v0, Landroid/graphics/PointF;->x:F

    .line 463
    .local v8, "x2":F
    move-object/from16 v0, p4

    iget v10, v0, Landroid/graphics/PointF;->y:F

    .line 465
    .local v10, "y2":F
    cmpl-float v11, v7, v8

    if-nez v11, :cond_0

    sub-float v11, p1, v7

    sub-float v12, p1, v7

    mul-float/2addr v11, v12

    .line 476
    :goto_0
    return v11

    .line 466
    :cond_0
    cmpl-float v11, v9, v10

    if-nez v11, :cond_1

    sub-float v11, p2, v9

    sub-float v12, p2, v9

    mul-float/2addr v11, v12

    goto :goto_0

    .line 467
    :cond_1
    sub-float v11, v8, v7

    sub-float v12, p1, v7

    mul-float/2addr v11, v12

    sub-float v12, v10, v9

    sub-float v13, p2, v9

    mul-float/2addr v12, v13

    add-float v2, v11, v12

    .line 468
    .local v2, "cross":F
    if-eqz p5, :cond_2

    float-to-double v12, v2

    const-wide/16 v14, 0x0

    cmpg-double v11, v12, v14

    if-gtz v11, :cond_2

    .line 469
    sub-float v11, p1, v7

    sub-float v12, p1, v7

    mul-float/2addr v11, v12

    sub-float v12, p2, v9

    sub-float v13, p2, v9

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    goto :goto_0

    .line 470
    :cond_2
    sub-float v11, v8, v7

    sub-float v12, v8, v7

    mul-float/2addr v11, v12

    sub-float v12, v10, v9

    sub-float v13, v10, v9

    mul-float/2addr v12, v13

    add-float v3, v11, v12

    .line 471
    .local v3, "d2":F
    if-eqz p5, :cond_3

    cmpl-float v11, v2, v3

    if-ltz v11, :cond_3

    .line 472
    sub-float v11, p1, v8

    sub-float v12, p1, v8

    mul-float/2addr v11, v12

    sub-float v12, p2, v10

    sub-float v13, p2, v10

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    goto :goto_0

    .line 473
    :cond_3
    div-float v6, v2, v3

    .line 474
    .local v6, "r":F
    sub-float v11, v8, v7

    mul-float/2addr v11, v6

    add-float v4, v7, v11

    .line 475
    .local v4, "px":F
    sub-float v11, v10, v9

    mul-float/2addr v11, v6

    add-float v5, v9, v11

    .line 476
    .local v5, "py":F
    sub-float v11, p1, v4

    sub-float v12, p1, v4

    mul-float/2addr v11, v12

    sub-float v12, v5, p2

    sub-float v13, v5, p2

    mul-float/2addr v12, v13

    add-float/2addr v11, v12

    goto :goto_0
.end method

.method private initHandler()V
    .locals 2

    .prologue
    .line 569
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    if-nez v0, :cond_0

    .line 570
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "animateThread"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    .line 571
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 572
    new-instance v0, Lcom/android/camera/ui/V6EffectCropView$1;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/V6EffectCropView$1;-><init>(Lcom/android/camera/ui/V6EffectCropView;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    .line 594
    :cond_0
    return-void
.end method

.method private isContained([Landroid/graphics/Point;II)Z
    .locals 6
    .param p1, "points"    # [Landroid/graphics/Point;
    .param p2, "x"    # I
    .param p3, "y"    # I

    .prologue
    const/4 v4, 0x0

    .line 531
    if-eqz p1, :cond_0

    array-length v5, p1

    if-eqz v5, :cond_0

    .line 532
    move-object v0, p1

    .local v0, "arr$":[Landroid/graphics/Point;
    array-length v3, v0

    .local v3, "len$":I
    const/4 v2, 0x0

    .local v2, "i$":I
    :goto_0
    if-ge v2, v3, :cond_0

    aget-object v1, v0, v2

    .line 533
    .local v1, "exist":Landroid/graphics/Point;
    if-nez v1, :cond_1

    .line 543
    .end local v0    # "arr$":[Landroid/graphics/Point;
    .end local v1    # "exist":Landroid/graphics/Point;
    .end local v2    # "i$":I
    .end local v3    # "len$":I
    :cond_0
    :goto_1
    return v4

    .line 538
    .restart local v0    # "arr$":[Landroid/graphics/Point;
    .restart local v1    # "exist":Landroid/graphics/Point;
    .restart local v2    # "i$":I
    .restart local v3    # "len$":I
    :cond_1
    iget v5, v1, Landroid/graphics/Point;->x:I

    if-eq v5, p2, :cond_2

    iget v5, v1, Landroid/graphics/Point;->y:I

    if-ne v5, p3, :cond_3

    .line 539
    :cond_2
    const/4 v4, 0x1

    goto :goto_1

    .line 532
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private moveCrop(FFFF)V
    .locals 8
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "deltaX"    # F
    .param p4, "deltaY"    # F

    .prologue
    .line 237
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    const/16 v1, 0x104

    if-ne v0, v1, :cond_1

    .line 238
    new-instance v3, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    invoke-direct {v3, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    new-instance v4, Landroid/graphics/PointF;

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-direct {v4, v0}, Landroid/graphics/PointF;-><init>(Landroid/graphics/Point;)V

    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/V6EffectCropView;->getSquareOfDistance(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Z)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 239
    .local v6, "currentDis":D
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    iget-wide v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastMoveDis:D

    sub-double v2, v6, v2

    double-to-int v1, v2

    add-int/2addr v0, v1

    sget v1, Lcom/android/camera/ui/V6EffectCropView;->MIN_RANGE:I

    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMaxRange:I

    invoke-static {v0, v1, v2}, Lcom/android/camera/Util;->clamp(III)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    .line 240
    iput-wide v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastMoveDis:D

    .line 247
    .end local v6    # "currentDis":D
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    .line 248
    return-void

    .line 241
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    const/16 v1, 0x101

    if-eq v0, v1, :cond_2

    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    const/16 v1, 0x102

    if-ne v0, v1, :cond_3

    .line 242
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mTouchCenter:Landroid/graphics/Point;

    new-instance v1, Landroid/graphics/Point;

    float-to-int v2, p1

    float-to-int v3, p2

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/V6EffectCropView;->computeCertenLineCrossPoints(Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_0

    .line 243
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    const/16 v1, 0x10

    if-ne v0, v1, :cond_0

    .line 244
    new-instance v0, Landroid/graphics/Point;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    float-to-int v2, p3

    add-int/2addr v1, v2

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    float-to-int v3, p4

    add-int/2addr v2, v3

    invoke-direct {v0, v1, v2}, Landroid/graphics/Point;-><init>(II)V

    new-instance v1, Landroid/graphics/Point;

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    float-to-int v3, p3

    add-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    float-to-int v4, p4

    add-int/2addr v3, v4

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/V6EffectCropView;->computeCertenLineCrossPoints(Landroid/graphics/Point;Landroid/graphics/Point;)V

    goto :goto_0
.end method

.method private moveEdges(FF)V
    .locals 5
    .param p1, "deltaX"    # F
    .param p2, "deltaY"    # F

    .prologue
    const/4 v4, 0x0

    .line 208
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    const/16 v3, 0x10

    if-ne v2, v3, :cond_2

    .line 210
    cmpl-float v2, p1, v4

    if-lez v2, :cond_0

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-static {v2, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    .line 212
    :goto_0
    cmpl-float v2, p2, v4

    if-lez v2, :cond_1

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v2, v3

    invoke-static {v2, p2}, Ljava/lang/Math;->min(FF)F

    move-result p2

    .line 214
    :goto_1
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 233
    :goto_2
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    .line 234
    return-void

    .line 210
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-static {v2, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    goto :goto_0

    .line 212
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    invoke-static {v2, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    goto :goto_1

    .line 217
    :cond_2
    sget v2, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    int-to-float v1, v2

    .line 218
    .local v1, "minWidth":F
    sget v2, Lcom/android/camera/ui/V6EffectCropView;->MIN_CROP_WIDTH_HEIGHT:I

    int-to-float v0, v2

    .line 219
    .local v0, "minHeight":F
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_3

    .line 220
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, p1

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    sub-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->left:F

    .line 222
    :cond_3
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_4

    .line 223
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, p2

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->top:F

    .line 225
    :cond_4
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_5

    .line 226
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    add-float/2addr v3, p1

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->right:F

    .line 228
    :cond_5
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_6

    .line 229
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v3, p2

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->max(FF)F

    move-result v3

    iput v3, v2, Landroid/graphics/RectF;->bottom:F

    .line 231
    :cond_6
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    goto/16 :goto_2
.end method

.method private normalizeRangeWidth()V
    .locals 7

    .prologue
    .line 151
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/V6EffectCropView;->computePointWithDistance(I)Landroid/graphics/Point;

    move-result-object v6

    .line 152
    .local v6, "point":Landroid/graphics/Point;
    iget v0, v6, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float v1, v0, v1

    iget v0, v6, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float v2, v0, v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint1:Landroid/graphics/PointF;

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint2:Landroid/graphics/PointF;

    const/4 v5, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/ui/V6EffectCropView;->getSquareOfDistance(FFLandroid/graphics/PointF;Landroid/graphics/PointF;Z)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mNormalizedWidth:F

    .line 154
    return-void
.end method

.method private onCropChange()V
    .locals 7

    .prologue
    .line 132
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v1

    .line 133
    .local v1, "w":F
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 134
    .local v0, "h":F
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    div-float/2addr v4, v0

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    div-float/2addr v5, v1

    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v6, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V

    .line 139
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint1:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 140
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint2:Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    int-to-float v3, v3

    div-float/2addr v3, v1

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget v4, v4, Landroid/graphics/Point;->y:I

    int-to-float v4, v4

    div-float/2addr v4, v0

    invoke-virtual {v2, v3, v4}, Landroid/graphics/PointF;->set(FF)V

    .line 141
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/V6EffectCropView;->squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCenterLineSquare:I

    .line 142
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->normalizeRangeWidth()V

    .line 143
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectRect:Landroid/graphics/RectF;

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint1:Landroid/graphics/PointF;

    iget-object v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mEffectPoint2:Landroid/graphics/PointF;

    iget v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mNormalizedWidth:F

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/android/camera/effect/EffectController;->setEffectAttribute(Landroid/graphics/RectF;Landroid/graphics/PointF;Landroid/graphics/PointF;F)V

    .line 145
    iget-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    if-eqz v2, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->invalidate()V

    .line 148
    :cond_0
    return-void
.end method

.method private squareOfPoints(Landroid/graphics/Point;Landroid/graphics/Point;)I
    .locals 4
    .param p1, "point1"    # Landroid/graphics/Point;
    .param p2, "point2"    # Landroid/graphics/Point;

    .prologue
    .line 563
    iget v2, p1, Landroid/graphics/Point;->x:I

    iget v3, p2, Landroid/graphics/Point;->x:I

    sub-int v0, v2, v3

    .line 564
    .local v0, "dx":I
    iget v2, p1, Landroid/graphics/Point;->y:I

    iget v3, p2, Landroid/graphics/Point;->y:I

    sub-int v1, v2, v3

    .line 565
    .local v1, "dy":I
    mul-int v2, v0, v0

    mul-int v3, v1, v1

    add-int/2addr v2, v3

    return v2
.end method


# virtual methods
.method public enableControls(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 435
    return-void
.end method

.method public handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "what"    # I
    .param p2, "sender"    # I
    .param p3, "extra1"    # Ljava/lang/Object;
    .param p4, "extra2"    # Ljava/lang/Object;

    .prologue
    .line 441
    const/4 v0, 0x0

    return v0
.end method

.method public hide()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 385
    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    if-eqz v0, :cond_0

    .line 386
    iput-boolean v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    .line 387
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EffectCropView;->setVisibility(I)V

    .line 388
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->clearEffectAttribute()V

    .line 389
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    .line 391
    :cond_0
    return-void
.end method

.method public isMovingEdges()Z
    .locals 1

    .prologue
    .line 377
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 373
    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    return v0
.end method

.method public onCameraOpen()V
    .locals 0

    .prologue
    .line 415
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible()V

    .line 416
    return-void
.end method

.method public onCreate()V
    .locals 0

    .prologue
    .line 410
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->initHandler()V

    .line 411
    return-void
.end method

.method public onDestory()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 597
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    if-eqz v0, :cond_0

    .line 598
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    .line 599
    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateThread:Landroid/os/HandlerThread;

    .line 600
    iput-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    .line 602
    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 306
    iget-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    if-nez v2, :cond_1

    .line 324
    :cond_0
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    if-eqz v2, :cond_0

    .line 308
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    if-nez v2, :cond_9

    const/4 v1, 0x1

    .line 309
    .local v1, "notMoving":Z
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    .line 310
    .local v0, "cropped":Landroid/graphics/RectF;
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mBorderPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v2}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 311
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x2

    if-nez v2, :cond_2

    if-eqz v1, :cond_3

    .line 312
    :cond_2
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropIndicatorTop:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/camera/ui/V6EffectCropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 314
    :cond_3
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x8

    if-nez v2, :cond_4

    if-eqz v1, :cond_5

    .line 315
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropIndicatorBottom:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/camera/ui/V6EffectCropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 317
    :cond_5
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_6

    if-eqz v1, :cond_7

    .line 318
    :cond_6
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropIndicatorLeft:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/camera/ui/V6EffectCropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    .line 320
    :cond_7
    iget v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_8

    if-eqz v1, :cond_0

    .line 321
    :cond_8
    iget-object v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropIndicatorRight:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/RectF;->right:F

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/android/camera/ui/V6EffectCropView;->drawIndicator(Landroid/graphics/Canvas;Landroid/graphics/drawable/Drawable;FF)V

    goto :goto_0

    .line 308
    .end local v0    # "cropped":Landroid/graphics/RectF;
    .end local v1    # "notMoving":Z
    :cond_9
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 425
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 427
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRange:I

    iget v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRangeWidth:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    .line 429
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 421
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 5
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    const/4 v3, 0x0

    .line 121
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 122
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultBounds:Landroid/graphics/RectF;

    mul-int/lit8 v1, p1, 0x3

    div-int/lit8 v1, v1, 0x8

    int-to-float v1, v1

    mul-int/lit8 v2, p2, 0x3

    div-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-int/lit8 v3, p1, 0x5

    div-int/lit8 v3, v3, 0x8

    int-to-float v3, v3

    mul-int/lit8 v4, p2, 0x5

    div-int/lit8 v4, v4, 0x8

    int-to-float v4, v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/RectF;->set(FFFF)V

    .line 123
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 124
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    const/4 v1, 0x0

    div-int/lit8 v2, p2, 0x2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 125
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    div-int/lit8 v1, p2, 0x2

    invoke-virtual {v0, p1, v1}, Landroid/graphics/Point;->set(II)V

    .line 126
    mul-int/lit8 v0, p2, 0x2

    div-int/lit8 v0, v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mMaxRange:I

    .line 127
    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    if-eqz v0, :cond_0

    sget v0, Lcom/android/camera/ui/V6EffectCropView;->DEFAULT_RANGE:I

    :goto_0
    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    .line 128
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    .line 129
    return-void

    .line 127
    :cond_0
    sget v0, Lcom/android/camera/ui/V6EffectCropView;->ANIMATE_START_RANGE:I

    goto :goto_0
.end method

.method public onViewTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 251
    iget-boolean v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    if-nez v6, :cond_0

    .line 294
    :goto_0
    return v4

    .line 252
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->isEnabled()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 253
    iget-object v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v6, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 254
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    .line 255
    .local v2, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 257
    .local v3, "y":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    .end local v2    # "x":F
    .end local v3    # "y":F
    :cond_1
    :goto_1
    :pswitch_0
    move v4, v5

    .line 294
    goto :goto_0

    .line 259
    .restart local v2    # "x":F
    .restart local v3    # "y":F
    :pswitch_1
    invoke-direct {p0, v2, v3}, Lcom/android/camera/ui/V6EffectCropView;->detectMovingEdges(FF)V

    .line 260
    iput-boolean v5, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsInTapSlop:Z

    .line 261
    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    .line 262
    iput v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    goto :goto_1

    .line 266
    :pswitch_2
    iget v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    sub-float v0, v2, v6

    .line 267
    .local v0, "deltaX":F
    iget v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    sub-float v1, v3, v6

    .line 268
    .local v1, "deltaY":F
    iget-boolean v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsInTapSlop:Z

    if-eqz v6, :cond_2

    iget v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mTapSlop:I

    int-to-float v6, v6

    mul-float v7, v0, v0

    mul-float v8, v1, v1

    add-float/2addr v7, v8

    cmpg-float v6, v6, v7

    if-gez v6, :cond_2

    .line 269
    iput-boolean v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsInTapSlop:Z

    .line 272
    :cond_2
    iget-boolean v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsInTapSlop:Z

    if-nez v4, :cond_1

    .line 273
    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    if-eqz v4, :cond_3

    .line 274
    iget-boolean v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    if-eqz v4, :cond_4

    .line 275
    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    sub-float v4, v2, v4

    iget v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    sub-float v6, v3, v6

    invoke-direct {p0, v4, v6}, Lcom/android/camera/ui/V6EffectCropView;->moveEdges(FF)V

    .line 280
    :cond_3
    :goto_2
    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    .line 281
    iput v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    goto :goto_1

    .line 277
    :cond_4
    iget v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastX:F

    sub-float v4, v2, v4

    iget v6, p0, Lcom/android/camera/ui/V6EffectCropView;->mLastY:F

    sub-float v6, v3, v6

    invoke-direct {p0, v2, v3, v4, v6}, Lcom/android/camera/ui/V6EffectCropView;->moveCrop(FFFF)V

    goto :goto_2

    .line 288
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    :pswitch_3
    iput v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    .line 289
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->invalidate()V

    goto :goto_1

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 448
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 327
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v0

    .line 328
    .local v0, "currentIndex":I
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EffectCropView;->show(I)V

    .line 329
    return-void
.end method

.method public show(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    const/16 v4, 0xe

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 332
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectController;->isNeedRect(I)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    if-eqz v0, :cond_0

    iget-boolean v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    if-eq v4, p1, :cond_2

    move v0, v1

    :goto_0
    if-eq v3, v0, :cond_1

    .line 334
    :cond_0
    iput-boolean v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mVisible:Z

    .line 335
    iput v2, p0, Lcom/android/camera/ui/V6EffectCropView;->mMovingEdges:I

    .line 336
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6EffectCropView;->setVisibility(I)V

    .line 337
    if-eq v4, p1, :cond_3

    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mIsRect:Z

    .line 338
    if-ne v4, p1, :cond_4

    .line 339
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint1:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    float-to-int v3, v3

    div-int/lit8 v3, v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/graphics/Point;->set(II)V

    .line 340
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mPoint2:Landroid/graphics/Point;

    iget-object v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    float-to-int v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    float-to-int v4, v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v3, v4}, Landroid/graphics/Point;->set(II)V

    .line 341
    sget v0, Lcom/android/camera/ui/V6EffectCropView;->ANIMATE_START_RANGE:I

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    .line 343
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartTime:J

    .line 344
    const-wide/16 v4, 0x258

    iput-wide v4, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationTotalTime:J

    .line 345
    sget v0, Lcom/android/camera/ui/V6EffectCropView;->DEFAULT_RANGE:I

    iget v3, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    sub-int/2addr v0, v3

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateRangeWidth:I

    .line 346
    iget v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mRangeWidth:I

    iput v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimationStartRange:I

    .line 347
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mAnimateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 349
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->invalidate()V

    .line 354
    :goto_2
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/EffectController;->setInvertFlag(I)V

    .line 355
    invoke-direct {p0}, Lcom/android/camera/ui/V6EffectCropView;->onCropChange()V

    .line 357
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 332
    goto :goto_0

    :cond_3
    move v0, v2

    .line 337
    goto :goto_1

    .line 351
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/V6EffectCropView;->mCropBounds:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/V6EffectCropView;->mDefaultBounds:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 352
    const/4 v0, 0x2

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/V6EffectCropView;->setLayerType(ILandroid/graphics/Paint;)V

    goto :goto_2
.end method

.method public updateVisible()V
    .locals 3

    .prologue
    .line 394
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/EffectController;->getEffect(Z)I

    move-result v0

    .line 395
    .local v0, "currentIndex":I
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6EffectCropView;->updateVisible(I)V

    .line 396
    return-void
.end method

.method public updateVisible(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 400
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/EffectController;->isNeedRect(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 402
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6EffectCropView;->show(I)V

    .line 406
    :goto_0
    return-void

    .line 404
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6EffectCropView;->hide()V

    goto :goto_0
.end method
