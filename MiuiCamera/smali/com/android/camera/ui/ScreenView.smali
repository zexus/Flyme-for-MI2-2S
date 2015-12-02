.class public Lcom/android/camera/ui/ScreenView;
.super Landroid/view/ViewGroup;
.source "ScreenView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ScreenView$1;,
        Lcom/android/camera/ui/ScreenView$SavedState;,
        Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;,
        Lcom/android/camera/ui/ScreenView$SlideBar;,
        Lcom/android/camera/ui/ScreenView$SeekBarIndicator;,
        Lcom/android/camera/ui/ScreenView$Indicator;,
        Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;,
        Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;
    }
.end annotation


# static fields
.field protected static final INDICATOR_MEASURE_SPEC:I

.field protected static final SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

.field private static final SMOOTHING_CONSTANT:F


# instance fields
.field protected final DEFAULT_CAMERA_DISTANCE:F

.field private isFromcomputeScroll:Z

.field protected mActivePointerId:I

.field private mAllowLongPress:Z

.field protected mChildScreenWidth:I

.field private mConfirmHorizontalScrollRatio:F

.field private mCurrentGestureFinished:Z

.field protected mCurrentScreen:I

.field protected mFirstLayout:Z

.field mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

.field protected mHeightMeasureSpec:I

.field private mIndicatorCount:I

.field protected mLastMotionX:F

.field protected mLastMotionY:F

.field protected mLongClickListener:Landroid/view/View$OnLongClickListener;

.field private mMaximumVelocity:I

.field protected mNextScreen:I

.field protected mOverScrollRatio:F

.field private mOvershootTension:F

.field private mScaleDetector:Landroid/view/ScaleGestureDetector;

.field protected mScreenAlignment:I

.field private mScreenCounter:I

.field protected mScreenOffset:I

.field protected mScreenPaddingBottom:I

.field protected mScreenPaddingTop:I

.field protected mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

.field private mScreenSnapDuration:I

.field private mScreenTransitionType:I

.field protected mScreenWidth:I

.field private mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

.field protected mScrollLeftBound:I

.field protected mScrollOffset:I

.field protected mScrollRightBound:I

.field protected mScrollWholeScreen:Z

.field protected mScroller:Landroid/widget/Scroller;

.field private mSeekPointResId:I

.field protected mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

.field private mSmoothingTime:F

.field private mTouchIntercepted:Z

.field private mTouchSlop:I

.field private mTouchState:I

.field private mTouchX:F

.field protected mVisibleRange:I

.field protected mWidthMeasureSpec:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    const/4 v2, -0x1

    .line 41
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    sput v0, Lcom/android/camera/ui/ScreenView;->INDICATOR_MEASURE_SPEC:I

    .line 45
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/android/camera/ui/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    .line 118
    const-wide v0, 0x3f90624dd2f1a9fcL    # 0.016

    const-wide/high16 v2, 0x3fe8000000000000L    # 0.75

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    sput v0, Lcom/android/camera/ui/ScreenView;->SMOOTHING_CONSTANT:F

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 301
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 48
    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    .line 52
    const v0, 0x7f020096

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mSeekPointResId:I

    .line 67
    iput v2, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    .line 69
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    .line 74
    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    .line 77
    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    .line 81
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    .line 93
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    .line 100
    iput-boolean v1, p0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    .line 114
    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    .line 121
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 123
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    .line 140
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenTransitionType:I

    .line 143
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mOvershootTension:F

    .line 270
    new-instance v0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;-><init>(Lcom/android/camera/ui/ScreenView;Lcom/android/camera/ui/ScreenView$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    .line 1371
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a00000    # 1280.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    .line 302
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->initScreenView()V

    .line 303
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 312
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/camera/ui/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 313
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v3, -0x1

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 323
    invoke-direct {p0, p1, p2, p3}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 48
    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    .line 52
    const v0, 0x7f020096

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mSeekPointResId:I

    .line 67
    iput v2, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    .line 69
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    .line 74
    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    .line 77
    const v0, 0x3eaaaaab

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    .line 81
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    .line 93
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    .line 100
    iput-boolean v1, p0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    .line 103
    iput-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    .line 114
    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    .line 121
    const/high16 v0, 0x3f000000    # 0.5f

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mConfirmHorizontalScrollRatio:F

    .line 123
    const/16 v0, 0x12c

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    .line 140
    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenTransitionType:I

    .line 143
    const v0, 0x3fa66666    # 1.3f

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mOvershootTension:F

    .line 270
    new-instance v0, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;-><init>(Lcom/android/camera/ui/ScreenView;Lcom/android/camera/ui/ScreenView$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    .line 1371
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    const/high16 v1, 0x44a00000    # 1280.0f

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    .line 324
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->initScreenView()V

    .line 325
    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/ScreenView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ScreenView;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/ScreenView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ScreenView;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/ScreenView;)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ScreenView;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mOvershootTension:F

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/ScreenView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ScreenView;

    .prologue
    .line 36
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    return v0
.end method

.method private createSeekPoint()Landroid/widget/ImageView;
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v2, 0x0

    .line 1289
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 1290
    .local v0, "seekPoint":Landroid/widget/ImageView;
    sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1291
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mSeekPointResId:I

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1292
    invoke-virtual {v0, v3, v2, v3, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 1294
    return-object v0
.end method

.method private initScreenView()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 331
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->setAlwaysDrawnWithCacheEnabled(Z)V

    .line 332
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->setClipToPadding(Z)V

    .line 333
    new-instance v1, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;-><init>(Lcom/android/camera/ui/ScreenView;)V

    iput-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    .line 334
    new-instance v1, Landroid/widget/Scroller;

    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    iput-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    .line 335
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->setCurrentScreenInner(I)V

    .line 337
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    .line 338
    .local v0, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchSlop:I

    .line 339
    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->setMaximumSnapVelocity(I)V

    .line 341
    new-instance v1, Landroid/view/ScaleGestureDetector;

    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mContext:Landroid/content/Context;

    new-instance v3, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/android/camera/ui/ScreenView$ScaleDetectorListener;-><init>(Lcom/android/camera/ui/ScreenView;Lcom/android/camera/ui/ScreenView$1;)V

    invoke-direct {v1, v2, v3}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 342
    return-void
.end method

.method private onTouchEventUnique(Landroid/view/MotionEvent;)V
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    invoke-virtual {v0, p1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 925
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-eqz v0, :cond_0

    const/4 v0, 0x4

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne v0, v1, :cond_1

    .line 926
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 928
    :cond_1
    return-void
.end method

.method private refreshScrollBound()V
    .locals 3

    .prologue
    .line 631
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollLeftBound:I

    .line 632
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-nez v0, :cond_0

    .line 633
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    add-float/2addr v1, v2

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollRightBound:I

    .line 639
    :goto_0
    return-void

    .line 636
    :cond_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    div-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    mul-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollRightBound:I

    goto :goto_0
.end method

.method private scrolledFarEnough(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    .line 917
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 918
    .local v0, "dx":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionY:F

    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 919
    .local v1, "dy":F
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mConfirmHorizontalScrollRatio:F

    mul-float/2addr v3, v1

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mTouchSlop:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    mul-int/2addr v3, v4

    int-to-float v3, v3

    cmpl-float v3, v0, v3

    if-lez v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method private snapByVelocity(I)V
    .locals 8
    .param p1, "pointerId"    # I

    .prologue
    const/4 v5, 0x1

    .line 1022
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    if-lez v4, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getCurrentScreen()Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1039
    :cond_0
    :goto_0
    return-void

    .line 1026
    :cond_1
    iget-object v4, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    const/16 v6, 0x3e8

    iget v7, p0, Lcom/android/camera/ui/ScreenView;->mMaximumVelocity:I

    invoke-virtual {v4, v6, v7, p1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->getXVelocity(III)F

    move-result v4

    float-to-int v2, v4

    .line 1027
    .local v2, "velocityX":I
    iget-object v4, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v4, v6}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->getFlingDirection(F)I

    move-result v0

    .line 1028
    .local v0, "flingDirection":I
    if-ne v0, v5, :cond_2

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    if-lez v4, :cond_2

    .line 1029
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    sub-int/2addr v4, v6

    invoke-virtual {p0, v4, v2, v5}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .line 1030
    :cond_2
    const/4 v4, 0x2

    if-ne v0, v4, :cond_3

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v6

    add-int/lit8 v6, v6, -0x1

    if-ge v4, v6, :cond_3

    .line 1031
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    add-int/2addr v4, v6

    invoke-virtual {p0, v4, v2, v5}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .line 1032
    :cond_3
    const/4 v4, 0x3

    if-ne v0, v4, :cond_4

    .line 1033
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v4, v2, v5}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .line 1035
    :cond_4
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    iget-boolean v4, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v4, :cond_5

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    :goto_1
    mul-int v1, v6, v4

    .line 1036
    .local v1, "snapUnit":I
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    shr-int/lit8 v6, v1, 0x1

    add-int/2addr v4, v6

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    div-int v3, v4, v6

    .line 1037
    .local v3, "whichScreen":I
    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    goto :goto_0

    .end local v1    # "snapUnit":I
    .end local v3    # "whichScreen":I
    :cond_5
    move v4, v5

    .line 1035
    goto :goto_1
.end method

.method private updateIndicatorPositions(I)V
    .locals 17
    .param p1, "scrollX"    # I

    .prologue
    .line 537
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ScreenView;->getWidth()I

    move-result v14

    if-lez v14, :cond_4

    .line 538
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v4

    .line 539
    .local v4, "indexOffset":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ScreenView;->getWidth()I

    move-result v12

    .line 540
    .local v12, "screenWidth":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/camera/ui/ScreenView;->getHeight()I

    move-result v11

    .line 542
    .local v11, "screenHeight":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget v14, v0, Lcom/android/camera/ui/ScreenView;->mIndicatorCount:I

    if-ge v3, v14, :cond_4

    .line 543
    add-int v14, v3, v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 544
    .local v5, "indicator":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v10

    check-cast v10, Landroid/widget/FrameLayout$LayoutParams;

    .line 546
    .local v10, "lp":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    .line 547
    .local v9, "indicatorWidth":I
    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v6

    .line 549
    .local v6, "indicatorHeight":I
    const/4 v7, 0x0

    .line 550
    .local v7, "indicatorLeft":I
    const/4 v8, 0x0

    .line 552
    .local v8, "indicatorTop":I
    iget v1, v10, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 554
    .local v1, "gravity":I
    const/4 v14, -0x1

    if-eq v1, v14, :cond_0

    .line 555
    and-int/lit8 v2, v1, 0x7

    .line 556
    .local v2, "horizontalGravity":I
    and-int/lit8 v13, v1, 0x70

    .line 558
    .local v13, "verticalGravity":I
    packed-switch v2, :pswitch_data_0

    .line 570
    :pswitch_0
    iget v7, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 573
    :goto_1
    sparse-switch v13, :sswitch_data_0

    .line 585
    iget v8, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 588
    .end local v2    # "horizontalGravity":I
    .end local v13    # "verticalGravity":I
    :cond_0
    :goto_2
    invoke-virtual {v5}, Landroid/view/View;->isLayoutRequested()Z

    move-result v14

    if-nez v14, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v14

    if-lez v14, :cond_1

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v14

    if-gtz v14, :cond_2

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v14, v0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    if-eqz v14, :cond_3

    :cond_2
    move-object v14, v5

    .line 590
    check-cast v14, Lcom/android/camera/ui/ScreenView$Indicator;

    add-int v15, p1, v7

    invoke-interface {v14, v15}, Lcom/android/camera/ui/ScreenView$Indicator;->fastOffset(I)V

    .line 591
    invoke-virtual {v5}, Landroid/view/View;->invalidate()V

    .line 542
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 560
    .restart local v2    # "horizontalGravity":I
    .restart local v13    # "verticalGravity":I
    :pswitch_1
    iget v7, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    .line 561
    goto :goto_1

    .line 563
    :pswitch_2
    sub-int v14, v12, v9

    div-int/lit8 v14, v14, 0x2

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    add-int/2addr v14, v15

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v7, v14, v15

    .line 565
    goto :goto_1

    .line 567
    :pswitch_3
    sub-int v14, v12, v9

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    sub-int v7, v14, v15

    .line 568
    goto :goto_1

    .line 575
    :sswitch_0
    iget v8, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 576
    goto :goto_2

    .line 578
    :sswitch_1
    sub-int v14, v11, v6

    div-int/lit8 v14, v14, 0x2

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v14, v15

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v14, v15

    .line 580
    goto :goto_2

    .line 582
    :sswitch_2
    sub-int v14, v11, v6

    iget v15, v10, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    sub-int v8, v14, v15

    .line 583
    goto :goto_2

    .line 593
    .end local v2    # "horizontalGravity":I
    .end local v13    # "verticalGravity":I
    :cond_3
    add-int v14, p1, v7

    add-int v15, p1, v7

    add-int/2addr v15, v9

    add-int v16, v8, v6

    move/from16 v0, v16

    invoke-virtual {v5, v14, v8, v15, v0}, Landroid/view/View;->layout(IIII)V

    goto :goto_3

    .line 601
    .end local v1    # "gravity":I
    .end local v3    # "i":I
    .end local v4    # "indexOffset":I
    .end local v5    # "indicator":Landroid/view/View;
    .end local v6    # "indicatorHeight":I
    .end local v7    # "indicatorLeft":I
    .end local v8    # "indicatorTop":I
    .end local v9    # "indicatorWidth":I
    .end local v10    # "lp":Landroid/widget/FrameLayout$LayoutParams;
    .end local v11    # "screenHeight":I
    .end local v12    # "screenWidth":I
    :cond_4
    return-void

    .line 558
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 573
    :sswitch_data_0
    .sparse-switch
        0x10 -> :sswitch_1
        0x30 -> :sswitch_0
        0x50 -> :sswitch_2
    .end sparse-switch
.end method

.method private updateScreenOffset()V
    .locals 2

    .prologue
    .line 519
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenAlignment:I

    packed-switch v0, :pswitch_data_0

    .line 533
    :goto_0
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mPaddingLeft:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    .line 534
    return-void

    .line 521
    :pswitch_0
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenOffset:I

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 524
    :pswitch_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 527
    :pswitch_2
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 530
    :pswitch_3
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    goto :goto_0

    .line 519
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private updateSeekPoints(II)V
    .locals 5
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I

    .prologue
    const/4 v4, 0x1

    .line 1298
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    if-eqz v2, :cond_0

    .line 1299
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    .line 1300
    .local v0, "count":I
    if-gt v0, v4, :cond_1

    .line 1301
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->setVisibility(I)V

    .line 1314
    .end local v0    # "count":I
    :cond_0
    return-void

    .line 1304
    .restart local v0    # "count":I
    :cond_1
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_2

    add-int v2, p1, v1

    if-ge v2, v0, :cond_2

    .line 1305
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    add-int v3, p1, v1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 1304
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1310
    :cond_2
    const/4 v1, 0x0

    :goto_1
    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    if-ge v1, v2, :cond_0

    add-int v2, p2, v1

    if-ge v2, v0, :cond_0

    .line 1311
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    add-int v3, p2, v1

    invoke-virtual {v2, v3}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setSelected(Z)V

    .line 1310
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method private updateSlidePointPosition(I)V
    .locals 7
    .param p1, "scrollX"    # I

    .prologue
    .line 605
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    .line 606
    .local v0, "screenCount":I
    iget-object v5, p0, Lcom/android/camera/ui/ScreenView;->mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

    if-eqz v5, :cond_0

    if-lez v0, :cond_0

    .line 607
    iget-object v5, p0, Lcom/android/camera/ui/ScreenView;->mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

    invoke-virtual {v5}, Lcom/android/camera/ui/ScreenView$SlideBar;->getSlideWidth()I

    move-result v2

    .line 608
    .local v2, "slideBarWidth":I
    div-int v5, v2, v0

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    mul-int/2addr v5, v6

    const/16 v6, 0x30

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 612
    .local v3, "slidePointWidth":I
    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    mul-int v1, v5, v0

    .line 613
    .local v1, "screenViewContentWidth":I
    if-gt v1, v2, :cond_1

    const/4 v4, 0x0

    .line 618
    .local v4, "slidePointX":I
    :goto_0
    iget-object v5, p0, Lcom/android/camera/ui/ScreenView;->mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

    add-int v6, v4, v3

    invoke-virtual {v5, v4, v6}, Lcom/android/camera/ui/ScreenView$SlideBar;->setPosition(II)V

    .line 619
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->isHardwareAccelerated()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 620
    iget-object v5, p0, Lcom/android/camera/ui/ScreenView;->mSlideBar:Lcom/android/camera/ui/ScreenView$SlideBar;

    invoke-virtual {v5}, Lcom/android/camera/ui/ScreenView$SlideBar;->invalidate()V

    .line 623
    .end local v1    # "screenViewContentWidth":I
    .end local v2    # "slideBarWidth":I
    .end local v3    # "slidePointWidth":I
    .end local v4    # "slidePointX":I
    :cond_0
    return-void

    .line 613
    .restart local v1    # "screenViewContentWidth":I
    .restart local v2    # "slideBarWidth":I
    .restart local v3    # "slidePointWidth":I
    :cond_1
    sub-int v5, v2, v3

    mul-int/2addr v5, p1

    sub-int v6, v1, v2

    div-int v4, v5, v6

    goto :goto_0
.end method


# virtual methods
.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 4
    .param p1, "child"    # Landroid/view/View;
    .param p2, "index"    # I
    .param p3, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 1151
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    .line 1152
    .local v0, "currentCount":I
    if-gez p2, :cond_1

    .line 1153
    move p2, v0

    .line 1159
    :goto_0
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    if-eqz v1, :cond_0

    .line 1160
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->createSeekPoint()Landroid/widget/ImageView;

    move-result-object v2

    sget-object v3, Lcom/android/camera/ui/ScreenView;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1163
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    .line 1165
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->refreshScrollBound()V

    .line 1167
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 1168
    return-void

    .line 1156
    :cond_1
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    goto :goto_0
.end method

.method public computeScroll()V
    .locals 8

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, -0x1

    const v6, 0x4e6e6b28    # 1.0E9f

    .line 659
    iput-boolean v4, p0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    .line 660
    iget-object v3, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->computeScrollOffset()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 661
    iget-object v3, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrX()I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    int-to-float v3, v3

    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    .line 662
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v3, v4

    div-float/2addr v3, v6

    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    .line 663
    iget-object v3, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->getCurrY()I

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollY:I

    .line 664
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->postInvalidate()V

    .line 680
    :cond_0
    :goto_0
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    invoke-direct {p0, v3}, Lcom/android/camera/ui/ScreenView;->updateIndicatorPositions(I)V

    .line 681
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    invoke-direct {p0, v3}, Lcom/android/camera/ui/ScreenView;->updateSlidePointPosition(I)V

    .line 682
    iput-boolean v7, p0, Lcom/android/camera/ui/ScreenView;->isFromcomputeScroll:Z

    .line 683
    return-void

    .line 665
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    if-eq v3, v5, :cond_2

    .line 666
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v7, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ScreenView;->setCurrentScreenInner(I)V

    .line 667
    iput v5, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    goto :goto_0

    .line 668
    :cond_2
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne v3, v4, :cond_0

    .line 669
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    long-to-float v3, v4

    div-float v2, v3, v6

    .line 670
    .local v2, "now":F
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    sub-float v3, v2, v3

    sget v4, Lcom/android/camera/ui/ScreenView;->SMOOTHING_CONSTANT:F

    div-float/2addr v3, v4

    float-to-double v4, v3

    invoke-static {v4, v5}, Ljava/lang/Math;->exp(D)D

    move-result-wide v4

    double-to-float v1, v4

    .line 671
    .local v1, "e":F
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    int-to-float v4, v4

    sub-float v0, v3, v4

    .line 672
    .local v0, "dx":F
    iget v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    int-to-float v3, v3

    mul-float v4, v0, v1

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    .line 673
    iput v2, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    .line 675
    const/high16 v3, 0x3f800000    # 1.0f

    cmpl-float v3, v0, v3

    if-gtz v3, :cond_3

    const/high16 v3, -0x40800000    # -1.0f

    cmpg-float v3, v0, v3

    if-gez v3, :cond_0

    .line 676
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->postInvalidate()V

    goto :goto_0
.end method

.method public dispatchUnhandledMove(Landroid/view/View;I)Z
    .locals 3
    .param p1, "focused"    # Landroid/view/View;
    .param p2, "direction"    # I

    .prologue
    const/4 v0, 0x1

    .line 815
    const/16 v1, 0x11

    if-ne p2, v1, :cond_0

    .line 816
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    if-lez v1, :cond_1

    .line 817
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->snapToScreen(I)V

    .line 826
    :goto_0
    return v0

    .line 820
    :cond_0
    const/16 v1, 0x42

    if-ne p2, v1, :cond_1

    .line 821
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_1

    .line 822
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->snapToScreen(I)V

    goto :goto_0

    .line 826
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->dispatchUnhandledMove(Landroid/view/View;I)Z

    move-result v0

    goto :goto_0
.end method

.method protected drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z
    .locals 1
    .param p1, "canvas"    # Landroid/graphics/Canvas;
    .param p2, "child"    # Landroid/view/View;
    .param p3, "drawingTime"    # J

    .prologue
    .line 796
    invoke-virtual {p0, p2}, Lcom/android/camera/ui/ScreenView;->updateChildStaticTransformation(Landroid/view/View;)V

    .line 797
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/ViewGroup;->drawChild(Landroid/graphics/Canvas;Landroid/view/View;J)Z

    move-result v0

    return v0
.end method

.method protected finishCurrentGesture()V
    .locals 2

    .prologue
    .line 1042
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentGestureFinished:Z

    .line 1043
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 1044
    return-void
.end method

.method public getCurrentScreen()Landroid/view/View;
    .locals 1

    .prologue
    .line 1108
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->getScreen(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getScreen(I)Landroid/view/View;
    .locals 1
    .param p1, "screenIndex"    # I

    .prologue
    .line 1140
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1141
    :cond_0
    const/4 v0, 0x0

    .line 1143
    :goto_0
    return-object v0

    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    goto :goto_0
.end method

.method public final getScreenCount()I
    .locals 1

    .prologue
    .line 1092
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 0

    .prologue
    .line 686
    invoke-super {p0}, Landroid/view/ViewGroup;->onAttachedToWindow()V

    .line 687
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->computeScroll()V

    .line 688
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x3

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 866
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    and-int/lit16 v2, v2, 0xff

    packed-switch v2, :pswitch_data_0

    .line 908
    :cond_0
    :goto_0
    const/4 v2, 0x2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    and-int/lit16 v3, v3, 0xff

    if-eq v2, v3, :cond_1

    .line 909
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 912
    :cond_1
    iget-boolean v2, p0, Lcom/android/camera/ui/ScreenView;->mCurrentGestureFinished:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-eqz v2, :cond_3

    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-eq v2, v4, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    return v0

    .line 868
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 869
    iget v2, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-nez v2, :cond_0

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 870
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 876
    :pswitch_1
    invoke-virtual {p1, v4}, Landroid/view/MotionEvent;->setAction(I)V

    .line 877
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 878
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->setAction(I)V

    .line 880
    iput-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentGestureFinished:Z

    .line 881
    iput-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchIntercepted:Z

    .line 884
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    .line 885
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    iput v2, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionY:F

    .line 887
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 888
    iput-boolean v1, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    goto :goto_0

    .line 896
    :cond_4
    iget-object v2, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v2}, Landroid/widget/Scroller;->abortAnimation()V

    .line 897
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 904
    :pswitch_2
    invoke-virtual {p0, p1, v0}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_0

    .line 866
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 8
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 767
    invoke-virtual {p0, p2, p3, p4, p5}, Lcom/android/camera/ui/ScreenView;->setFrame(IIII)Z

    .line 769
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mPaddingLeft:I

    add-int/2addr p2, v4

    .line 770
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mPaddingRight:I

    sub-int/2addr p4, v4

    .line 772
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    invoke-direct {p0, v4}, Lcom/android/camera/ui/ScreenView;->updateIndicatorPositions(I)V

    .line 775
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v2

    .line 776
    .local v2, "count":I
    const/4 v1, 0x0

    .line 777
    .local v1, "childLeft":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 778
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 779
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v4

    const/16 v5, 0x8

    if-eq v4, v5, :cond_0

    .line 780
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mPaddingTop:I

    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v4, v5

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v5

    add-int/2addr v5, v1

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mPaddingTop:I

    iget v7, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v6, v7

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v0, v1, v4, v5, v6}, Landroid/view/View;->layout(IIII)V

    .line 785
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v4

    add-int/2addr v1, v4

    .line 777
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 789
    .end local v0    # "child":Landroid/view/View;
    :cond_1
    iget-boolean v4, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v4, :cond_2

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int/2addr v4, v5

    if-lez v4, :cond_2

    .line 790
    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget v5, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int/2addr v5, v6

    sub-int/2addr v4, v5

    invoke-virtual {p0, v4}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    .line 792
    :cond_2
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 692
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mWidthMeasureSpec:I

    .line 693
    iput p2, p0, Lcom/android/camera/ui/ScreenView;->mHeightMeasureSpec:I

    .line 694
    const/4 v8, 0x0

    .line 695
    .local v8, "maxHeight":I
    const/4 v9, 0x0

    .line 697
    .local v9, "maxWidth":I
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v3

    .line 700
    .local v3, "count":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mIndicatorCount:I

    if-ge v4, v10, :cond_0

    .line 701
    add-int v10, v4, v3

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 703
    .local v0, "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 705
    .local v5, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mPaddingLeft:I

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingRight:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v10, v11}, Lcom/android/camera/ui/ScreenView;->getChildMeasureSpec(III)I

    move-result v2

    .line 707
    .local v2, "childWidthMeasureSpec":I
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mPaddingTop:I

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v10, v11}, Lcom/android/camera/ui/ScreenView;->getChildMeasureSpec(III)I

    move-result v1

    .line 712
    .local v1, "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 713
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 714
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v8, v10}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 700
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 718
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    const/4 v6, 0x0

    .line 719
    .local v6, "maxChildHeight":I
    const/4 v7, 0x0

    .line 720
    .local v7, "maxChildWidth":I
    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_1

    .line 721
    invoke-virtual {p0, v4}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 723
    .restart local v0    # "child":Landroid/view/View;
    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    .line 725
    .restart local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mPaddingLeft:I

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingRight:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->width:I

    invoke-static {p1, v10, v11}, Lcom/android/camera/ui/ScreenView;->getChildMeasureSpec(III)I

    move-result v2

    .line 727
    .restart local v2    # "childWidthMeasureSpec":I
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mPaddingTop:I

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, v5, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {p2, v10, v11}, Lcom/android/camera/ui/ScreenView;->getChildMeasureSpec(III)I

    move-result v1

    .line 732
    .restart local v1    # "childHeightMeasureSpec":I
    invoke-virtual {v0, v2, v1}, Landroid/view/View;->measure(II)V

    .line 733
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredWidth()I

    move-result v10

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 734
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v10

    invoke-static {v6, v10}, Ljava/lang/Math;->max(II)I

    move-result v6

    .line 720
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 736
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childHeightMeasureSpec":I
    .end local v2    # "childWidthMeasureSpec":I
    .end local v5    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :cond_1
    invoke-static {v7, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 737
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    move-result v8

    .line 740
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mPaddingLeft:I

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingRight:I

    add-int/2addr v10, v11

    add-int/2addr v9, v10

    .line 741
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mPaddingTop:I

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingTop:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingBottom:I

    add-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenPaddingBottom:I

    add-int/2addr v10, v11

    add-int/2addr v8, v10

    .line 743
    invoke-static {v9, p1}, Lcom/android/camera/ui/ScreenView;->resolveSize(II)I

    move-result v10

    invoke-static {v8, p2}, Lcom/android/camera/ui/ScreenView;->resolveSize(II)I

    move-result v11

    invoke-virtual {p0, v10, v11}, Lcom/android/camera/ui/ScreenView;->setMeasuredDimension(II)V

    .line 747
    if-lez v3, :cond_2

    .line 748
    iput v7, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    .line 749
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v10

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingLeft:I

    sub-int/2addr v10, v11

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mPaddingRight:I

    sub-int/2addr v10, v11

    iput v10, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    .line 750
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->updateScreenOffset()V

    .line 751
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ScreenView;->setOverScrollRatio(F)V

    .line 752
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    if-lez v10, :cond_2

    .line 753
    const/4 v10, 0x1

    iget v11, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    iget v12, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    div-int/lit8 v12, v12, 0x2

    add-int/2addr v11, v12

    iget v12, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    div-int/2addr v11, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->max(II)I

    move-result v10

    iput v10, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    .line 757
    :cond_2
    iget-boolean v10, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    if-eqz v10, :cond_3

    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    if-lez v10, :cond_3

    .line 758
    const/4 v10, 0x0

    iput-boolean v10, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    .line 759
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 760
    iget v10, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    .line 761
    const/4 v10, 0x1

    invoke-virtual {p0, v10}, Lcom/android/camera/ui/ScreenView;->setHorizontalScrollBarEnabled(Z)V

    .line 763
    :cond_3
    return-void
.end method

.method protected onPinchIn(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 1545
    return-void
.end method

.method protected onPinchOut(Landroid/view/ScaleGestureDetector;)V
    .locals 0
    .param p1, "detector"    # Landroid/view/ScaleGestureDetector;

    .prologue
    .line 1548
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1597
    move-object v0, p1

    check-cast v0, Lcom/android/camera/ui/ScreenView$SavedState;

    .line 1598
    .local v0, "savedState":Lcom/android/camera/ui/ScreenView$SavedState;
    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenView$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/view/ViewGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1599
    iget v1, v0, Lcom/android/camera/ui/ScreenView$SavedState;->currentScreen:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 1600
    iget v1, v0, Lcom/android/camera/ui/ScreenView$SavedState;->currentScreen:I

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->setCurrentScreen(I)V

    .line 1602
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 2

    .prologue
    .line 1590
    new-instance v0, Lcom/android/camera/ui/ScreenView$SavedState;

    invoke-super {p0}, Landroid/view/ViewGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/camera/ui/ScreenView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1591
    .local v0, "state":Lcom/android/camera/ui/ScreenView$SavedState;
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    iput v1, v0, Lcom/android/camera/ui/ScreenView$SavedState;->currentScreen:I

    .line 1592
    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    const/4 v5, 0x1

    .line 932
    iget-boolean v6, p0, Lcom/android/camera/ui/ScreenView;->mCurrentGestureFinished:Z

    if-eqz v6, :cond_0

    .line 989
    :goto_0
    return v5

    .line 934
    :cond_0
    iget-boolean v6, p0, Lcom/android/camera/ui/ScreenView;->mTouchIntercepted:Z

    if-eqz v6, :cond_1

    .line 935
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->onTouchEventUnique(Landroid/view/MotionEvent;)V

    .line 938
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    and-int/lit16 v6, v6, 0xff

    packed-switch v6, :pswitch_data_0

    .line 988
    :cond_2
    :goto_1
    :pswitch_0
    iput-boolean v5, p0, Lcom/android/camera/ui/ScreenView;->mTouchIntercepted:Z

    goto :goto_0

    .line 943
    :pswitch_1
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-nez v6, :cond_3

    invoke-direct {p0, p1}, Lcom/android/camera/ui/ScreenView;->scrolledFarEnough(Landroid/view/MotionEvent;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 944
    invoke-virtual {p0, p1, v5}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 947
    :cond_3
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne v6, v5, :cond_2

    .line 949
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 950
    .local v3, "pointerIndex":I
    const/4 v6, -0x1

    if-ne v3, v6, :cond_4

    .line 951
    invoke-virtual {p0, p1, v5}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    .line 952
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v6}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v3

    .line 954
    :cond_4
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 955
    .local v4, "x":F
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    sub-float v0, v6, v4

    .line 956
    .local v0, "deltaX":F
    iput v4, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    .line 958
    const/4 v6, 0x0

    cmpl-float v6, v0, v6

    if-nez v6, :cond_2

    .line 961
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->awakenScrollBars()Z

    goto :goto_1

    .line 967
    .end local v0    # "deltaX":F
    .end local v3    # "pointerIndex":I
    .end local v4    # "x":F
    :pswitch_2
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne v6, v5, :cond_5

    .line 968
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-direct {p0, v6}, Lcom/android/camera/ui/ScreenView;->snapByVelocity(I)V

    .line 970
    :cond_5
    invoke-virtual {p0, p1, v1}, Lcom/android/camera/ui/ScreenView;->setTouchState(Landroid/view/MotionEvent;I)V

    goto :goto_1

    .line 973
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v6

    const v7, 0xff00

    and-int/2addr v6, v7

    shr-int/lit8 v3, v6, 0x8

    .line 975
    .restart local v3    # "pointerIndex":I
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v2

    .line 976
    .local v2, "pointerId":I
    iget v6, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    if-ne v2, v6, :cond_2

    .line 980
    if-nez v3, :cond_6

    move v1, v5

    .line 981
    .local v1, "newPointerIndex":I
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    iput v6, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    .line 982
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v6

    iput v6, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    .line 983
    iget-object v6, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    iget v7, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-virtual {v6, v7}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->init(I)V

    goto :goto_1

    .line 938
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method public removeAllScreens()V
    .locals 2

    .prologue
    .line 1243
    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ScreenView;->removeScreensInLayout(II)V

    .line 1244
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->requestLayout()V

    .line 1245
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->invalidate()V

    .line 1246
    return-void
.end method

.method public removeAllViewsInLayout()V
    .locals 1

    .prologue
    .line 1190
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mIndicatorCount:I

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    .line 1191
    invoke-super {p0}, Landroid/view/ViewGroup;->removeAllViewsInLayout()V

    .line 1192
    return-void
.end method

.method public removeScreensInLayout(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 1249
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 1257
    :cond_0
    :goto_0
    return-void

    .line 1250
    :cond_1
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    sub-int/2addr v0, p1

    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 1252
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    if-eqz v0, :cond_2

    .line 1253
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSeekBar:Lcom/android/camera/ui/ScreenView$SeekBarIndicator;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/ui/ScreenView$SeekBarIndicator;->removeViewsInLayout(II)V

    .line 1255
    :cond_2
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenCounter:I

    .line 1256
    invoke-super {p0, p1, p2}, Landroid/view/ViewGroup;->removeViewsInLayout(II)V

    goto :goto_0
.end method

.method public removeView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1175
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewAt(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 1184
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewInLayout(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1178
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViews(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 1187
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public removeViewsInLayout(II)V
    .locals 2
    .param p1, "start"    # I
    .param p2, "count"    # I

    .prologue
    .line 1181
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "ScreenView doesn\'t support remove view directly."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z
    .locals 2
    .param p1, "child"    # Landroid/view/View;
    .param p2, "rectangle"    # Landroid/graphics/Rect;
    .param p3, "immediate"    # Z

    .prologue
    .line 802
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->indexOfChild(Landroid/view/View;)I

    move-result v0

    .line 803
    .local v0, "screen":I
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 804
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    if-ne v0, v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-nez v1, :cond_1

    .line 805
    :cond_0
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->snapToScreen(I)V

    .line 806
    const/4 v1, 0x1

    .line 810
    :goto_0
    return v1

    .line 808
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 810
    :cond_2
    invoke-super {p0, p1, p2, p3}, Landroid/view/ViewGroup;->requestChildRectangleOnScreen(Landroid/view/View;Landroid/graphics/Rect;Z)Z

    move-result v1

    goto :goto_0
.end method

.method protected resetTransformation(Landroid/view/View;)V
    .locals 2
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v0, 0x0

    .line 1373
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 1374
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 1375
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 1376
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotX(F)V

    .line 1377
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 1378
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 1379
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 1380
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 1381
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setCameraDistance(F)V

    .line 1382
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 1383
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 1384
    return-void
.end method

.method public scrollTo(II)V
    .locals 2
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    .line 651
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollLeftBound:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollRightBound:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 652
    int-to-float v0, p1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    .line 653
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-float v0, v0

    const v1, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    .line 654
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    float-to-int v0, v0

    invoke-super {p0, v0, p2}, Landroid/view/ViewGroup;->scrollTo(II)V

    .line 655
    return-void
.end method

.method public scrollToScreen(I)V
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 642
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_0

    .line 643
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    .line 645
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mWidthMeasureSpec:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mHeightMeasureSpec:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ScreenView;->measure(II)V

    .line 646
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, p1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/ScreenView;->scrollTo(II)V

    .line 647
    return-void
.end method

.method public setCurrentScreen(I)V
    .locals 3
    .param p1, "screenIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 1118
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_2

    .line 1119
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1120
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int v0, p1, v0

    sub-int/2addr p1, v0

    .line 1125
    :goto_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->setCurrentScreenInner(I)V

    .line 1126
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mFirstLayout:Z

    if-nez v0, :cond_1

    .line 1127
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1128
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ScreenView;->scrollToScreen(I)V

    .line 1129
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->invalidate()V

    .line 1131
    :cond_1
    return-void

    .line 1122
    :cond_2
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0
.end method

.method protected setCurrentScreenInner(I)V
    .locals 1
    .param p1, "screenIndex"    # I

    .prologue
    .line 1134
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-direct {p0, v0, p1}, Lcom/android/camera/ui/ScreenView;->updateSeekPoints(II)V

    .line 1135
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    .line 1136
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    .line 1137
    return-void
.end method

.method public setMaximumSnapVelocity(I)V
    .locals 0
    .param p1, "velocity"    # I

    .prologue
    .line 164
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mMaximumVelocity:I

    .line 165
    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 3
    .param p1, "l"    # Landroid/view/View$OnLongClickListener;

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/android/camera/ui/ScreenView;->mLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 1282
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    .line 1283
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1284
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 1283
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1286
    :cond_0
    return-void
.end method

.method public setOverScrollRatio(F)V
    .locals 0
    .param p1, "ratio"    # F

    .prologue
    .line 626
    iput p1, p0, Lcom/android/camera/ui/ScreenView;->mOverScrollRatio:F

    .line 627
    invoke-direct {p0}, Lcom/android/camera/ui/ScreenView;->refreshScrollBound()V

    .line 628
    return-void
.end method

.method protected setTouchState(Landroid/view/MotionEvent;I)V
    .locals 5
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .param p2, "touchState"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 834
    iput p2, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    .line 836
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-eqz v1, :cond_1

    move v1, v2

    :goto_0
    invoke-interface {v4, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 837
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-nez v1, :cond_2

    .line 838
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    .line 839
    iput-boolean v3, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    .line 840
    iget-object v1, p0, Lcom/android/camera/ui/ScreenView;->mGestureVelocityTracker:Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;

    invoke-virtual {v1}, Lcom/android/camera/ui/ScreenView$GestureVelocityTracker;->recycle()V

    .line 863
    :cond_0
    :goto_1
    return-void

    :cond_1
    move v1, v3

    .line 836
    goto :goto_0

    .line 843
    :cond_2
    if-eqz p1, :cond_3

    .line 844
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getPointerId(I)I

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    .line 848
    :cond_3
    iget-boolean v1, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    if-eqz v1, :cond_4

    .line 849
    iput-boolean v3, p0, Lcom/android/camera/ui/ScreenView;->mAllowLongPress:Z

    .line 853
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ScreenView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 854
    .local v0, "currentScreen":Landroid/view/View;
    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/View;->cancelLongPress()V

    .line 857
    .end local v0    # "currentScreen":Landroid/view/View;
    :cond_4
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchState:I

    if-ne v1, v2, :cond_0

    .line 858
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mActivePointerId:I

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->findPointerIndex(I)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mLastMotionX:F

    .line 859
    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    int-to-float v1, v1

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mTouchX:F

    .line 860
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-float v1, v2

    const v2, 0x4e6e6b28    # 1.0E9f

    div-float/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/ScreenView;->mSmoothingTime:F

    goto :goto_1
.end method

.method public snapToScreen(I)V
    .locals 1
    .param p1, "whichScreen"    # I

    .prologue
    const/4 v0, 0x0

    .line 1047
    invoke-virtual {p0, p1, v0, v0}, Lcom/android/camera/ui/ScreenView;->snapToScreen(IIZ)V

    .line 1048
    return-void
.end method

.method protected snapToScreen(IIZ)V
    .locals 9
    .param p1, "whichScreen"    # I
    .param p2, "velocity"    # I
    .param p3, "settle"    # Z

    .prologue
    const/4 v8, 0x1

    const/4 v2, 0x0

    .line 1051
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    if-gtz v0, :cond_0

    .line 1089
    :goto_0
    return-void

    .line 1055
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollWholeScreen:Z

    if-eqz v0, :cond_4

    .line 1056
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    .line 1057
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    iget v4, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    rem-int/2addr v1, v4

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    .line 1062
    :goto_1
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mCurrentScreen:I

    sub-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    invoke-static {v8, v0}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 1063
    .local v7, "screenDelta":I
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->isFinished()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1064
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V

    .line 1067
    :cond_1
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    .line 1069
    if-eqz p3, :cond_5

    .line 1070
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v0, v7, p2}, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->setDistance(II)V

    .line 1075
    :goto_2
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mChildScreenWidth:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollOffset:I

    sub-int v6, v0, v1

    .line 1076
    .local v6, "newX":I
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    sub-int v3, v6, v0

    .line 1077
    .local v3, "delta":I
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    mul-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScreenWidth:I

    div-int v5, v0, v1

    .line 1078
    .local v5, "duration":I
    if-lez p2, :cond_2

    .line 1079
    int-to-float v0, v5

    int-to-float v1, p2

    const v4, 0x451c4000    # 2500.0f

    div-float/2addr v1, v4

    div-float/2addr v0, v1

    const v1, 0x3ecccccd    # 0.4f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    add-int/2addr v5, v0

    .line 1083
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    invoke-static {v0, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 1084
    if-gt v7, v8, :cond_3

    .line 1085
    iget v0, p0, Lcom/android/camera/ui/ScreenView;->mScreenSnapDuration:I

    mul-int/lit8 v0, v0, 0x2

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1087
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScroller:Landroid/widget/Scroller;

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1088
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->invalidate()V

    goto/16 :goto_0

    .line 1059
    .end local v3    # "delta":I
    .end local v5    # "duration":I
    .end local v6    # "newX":I
    .end local v7    # "screenDelta":I
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getScreenCount()I

    move-result v0

    iget v1, p0, Lcom/android/camera/ui/ScreenView;->mVisibleRange:I

    sub-int/2addr v0, v1

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/ScreenView;->mNextScreen:I

    goto :goto_1

    .line 1072
    .restart local v7    # "screenDelta":I
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/ScreenView;->mScrollInterpolator:Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;

    invoke-virtual {v0}, Lcom/android/camera/ui/ScreenView$ScreenViewOvershootInterpolator;->disableSettle()V

    goto :goto_2
.end method

.method protected updateChildStaticTransformation(Landroid/view/View;)V
    .locals 14
    .param p1, "child"    # Landroid/view/View;

    .prologue
    const v13, 0x459c4000    # 5000.0f

    const/high16 v10, 0x40000000    # 2.0f

    const v11, 0x3e99999a    # 0.3f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v8, 0x0

    .line 1386
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v9

    int-to-float v1, v9

    .line 1387
    .local v1, "childW":F
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v9

    int-to-float v0, v9

    .line 1388
    .local v0, "childH":F
    invoke-virtual {p0}, Lcom/android/camera/ui/ScreenView;->getMeasuredWidth()I

    move-result v9

    int-to-float v9, v9

    div-float v4, v9, v10

    .line 1389
    .local v4, "halfScreenW":F
    div-float v3, v1, v10

    .line 1390
    .local v3, "halfChildW":F
    div-float v2, v0, v10

    .line 1391
    .local v2, "halfChildH":F
    iget v9, p0, Lcom/android/camera/ui/ScreenView;->mScrollX:I

    int-to-float v9, v9

    add-float/2addr v9, v4

    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v10

    int-to-float v10, v10

    sub-float/2addr v9, v10

    sub-float/2addr v9, v3

    div-float v5, v9, v1

    .line 1392
    .local v5, "interpolation":F
    iget v9, p0, Lcom/android/camera/ui/ScreenView;->mScreenTransitionType:I

    packed-switch v9, :pswitch_data_0

    .line 1509
    .end local v1    # "childW":F
    :goto_0
    :pswitch_0
    return-void

    .line 1394
    .restart local v1    # "childW":F
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1397
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1400
    :pswitch_3
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_0

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_1

    .line 1401
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1404
    :cond_1
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v9, v12, v9

    const v10, 0x3f333333    # 0.7f

    mul-float/2addr v9, v10

    add-float/2addr v9, v11

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1405
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 1406
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1407
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleX(F)V

    .line 1408
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleY(F)V

    .line 1409
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 1410
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    .line 1411
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1412
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1413
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1414
    iget v8, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v8}, Landroid/view/View;->setCameraDistance(F)V

    goto :goto_0

    .line 1417
    :pswitch_4
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_2

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_3

    .line 1418
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto :goto_0

    .line 1421
    :cond_3
    invoke-virtual {p1, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1422
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 1423
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1424
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleX(F)V

    .line 1425
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleY(F)V

    .line 1426
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 1427
    invoke-virtual {p1, v0}, Landroid/view/View;->setPivotY(F)V

    .line 1428
    neg-float v9, v5

    const/high16 v10, 0x41f00000    # 30.0f

    mul-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setRotation(F)V

    .line 1429
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1430
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1431
    iget v8, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v8}, Landroid/view/View;->setCameraDistance(F)V

    goto :goto_0

    .line 1434
    :pswitch_5
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_4

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_5

    .line 1435
    :cond_4
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1438
    :cond_5
    invoke-virtual {p1, v12}, Landroid/view/View;->setAlpha(F)V

    .line 1439
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationX(F)V

    .line 1440
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1441
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleX(F)V

    .line 1442
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleY(F)V

    .line 1443
    cmpg-float v9, v5, v8

    if-gez v9, :cond_6

    move v1, v8

    .end local v1    # "childW":F
    :cond_6
    invoke-virtual {p1, v1}, Landroid/view/View;->setPivotX(F)V

    .line 1444
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1445
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1446
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1447
    const/high16 v8, -0x3d4c0000    # -90.0f

    mul-float/2addr v8, v5

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1448
    invoke-virtual {p1, v13}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1451
    .restart local v1    # "childW":F
    :pswitch_6
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_7

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_8

    .line 1452
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1455
    :cond_8
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v9, v12, v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1456
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1457
    mul-float v9, v1, v5

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v10

    mul-float/2addr v10, v1

    mul-float/2addr v10, v11

    sub-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1458
    mul-float v9, v11, v5

    add-float v6, v12, v9

    .line 1459
    .local v6, "scale1":F
    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleX(F)V

    .line 1460
    invoke-virtual {p1, v6}, Landroid/view/View;->setScaleY(F)V

    .line 1461
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 1462
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1463
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1464
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1465
    const/high16 v8, 0x42340000    # 45.0f

    neg-float v9, v5

    mul-float/2addr v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1466
    invoke-virtual {p1, v13}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1471
    .end local v6    # "scale1":F
    :pswitch_7
    cmpg-float v9, v5, v8

    if-gtz v9, :cond_9

    .line 1472
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1475
    :cond_9
    sub-float v9, v12, v5

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1476
    const v9, 0x3f19999a    # 0.6f

    const v10, 0x3ecccccd    # 0.4f

    sub-float v11, v12, v5

    mul-float/2addr v10, v11

    add-float v7, v9, v10

    .line 1477
    .local v7, "scale2":F
    sub-float v9, v12, v7

    mul-float/2addr v9, v1

    const/high16 v10, 0x40400000    # 3.0f

    mul-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1478
    sub-float v9, v12, v7

    mul-float/2addr v9, v0

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float/2addr v9, v10

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationY(F)V

    .line 1479
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleX(F)V

    .line 1480
    invoke-virtual {p1, v7}, Landroid/view/View;->setScaleY(F)V

    .line 1481
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotX(F)V

    .line 1482
    invoke-virtual {p1, v8}, Landroid/view/View;->setPivotY(F)V

    .line 1483
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1484
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1485
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1486
    iget v8, p0, Lcom/android/camera/ui/ScreenView;->DEFAULT_CAMERA_DISTANCE:F

    invoke-virtual {p1, v8}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1489
    .end local v7    # "scale2":F
    :pswitch_8
    cmpl-float v9, v5, v8

    if-eqz v9, :cond_a

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    cmpl-float v9, v9, v12

    if-lez v9, :cond_b

    .line 1490
    :cond_a
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/ScreenView;->resetTransformation(Landroid/view/View;)V

    goto/16 :goto_0

    .line 1493
    :cond_b
    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v9

    sub-float v9, v12, v9

    invoke-virtual {p1, v9}, Landroid/view/View;->setAlpha(F)V

    .line 1494
    mul-float v9, v1, v5

    invoke-virtual {p1, v9}, Landroid/view/View;->setTranslationX(F)V

    .line 1495
    invoke-virtual {p1, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 1496
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleX(F)V

    .line 1497
    invoke-virtual {p1, v12}, Landroid/view/View;->setScaleY(F)V

    .line 1498
    invoke-virtual {p1, v3}, Landroid/view/View;->setPivotX(F)V

    .line 1499
    invoke-virtual {p1, v2}, Landroid/view/View;->setPivotY(F)V

    .line 1500
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotation(F)V

    .line 1501
    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationX(F)V

    .line 1502
    const/high16 v8, 0x42b40000    # 90.0f

    neg-float v9, v5

    mul-float/2addr v8, v9

    invoke-virtual {p1, v8}, Landroid/view/View;->setRotationY(F)V

    .line 1503
    invoke-virtual {p1, v13}, Landroid/view/View;->setCameraDistance(F)V

    goto/16 :goto_0

    .line 1506
    :pswitch_9
    invoke-virtual {p0, p1, v5}, Lcom/android/camera/ui/ScreenView;->updateChildStaticTransformationByScreen(Landroid/view/View;F)V

    goto/16 :goto_0

    .line 1392
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method protected updateChildStaticTransformationByScreen(Landroid/view/View;F)V
    .locals 0
    .param p1, "child"    # Landroid/view/View;
    .param p2, "interpolation"    # F

    .prologue
    .line 1512
    return-void
.end method
