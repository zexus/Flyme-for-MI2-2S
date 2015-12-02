.class Lcom/android/camera/ui/FocusView$ExposureView;
.super Ljava/lang/Object;
.source "FocusView.java"

# interfaces
.implements Lcom/android/camera/ui/Rotatable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/FocusView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ExposureView"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;
    }
.end annotation


# instance fields
.field private final DELTA_FOR_OUTRANGE:I

.field private final DISAPPEAR_TIME:I

.field private final GAPS:F

.field private final ITEM_ANGLE:I

.field private final MSG_DISAPPEAR:I

.field private final MSG_REGRESS:I

.field private final MSG_SCROLL:I

.field private mAdapter:Lcom/android/camera/ui/RollAdapter;

.field private mCaptureBitmap:Landroid/graphics/drawable/Drawable;

.field private mCaptured:Z

.field private mCenterX:I

.field private mCenterY:I

.field private mCurrentItem:I

.field private mDraw:Z

.field mEVBigAlpha:I

.field mEVBigRadius:I

.field mEVSmallAlpha:I

.field mEVSmallLineWidth:I

.field mEVSmallRadius:I

.field private mEvChanged:Z

.field private mExposureStep:F

.field private mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

.field private mGestureDetector:Landroid/view/GestureDetector;

.field private mGraduationBitmap:Landroid/graphics/drawable/Drawable;

.field private mHandler:Landroid/os/Handler;

.field private mHeight:I

.field private mIsDown:Z

.field private mLastTheta:I

.field private mMaxRadius:I

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mOrientation:I

.field private mOutOfRange:Z

.field private mRelativeLocation:[I

.field private mRollingDelta:I

.field private mRotation:I

.field private mScrolled:Z

.field private mScrolledDoneTime:J

.field private mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

.field private mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

.field private mStartFlingIndex:I

.field private mTextBounds:Landroid/graphics/Rect;

.field private mTextPaint:Landroid/graphics/Paint;

.field private mTheta:I

.field private mTimeout:Z

.field private mWidth:I

.field final synthetic this$0:Lcom/android/camera/ui/FocusView;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/FocusView;Landroid/content/Context;)V
    .locals 5
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x1

    .line 485
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 430
    const/16 v0, 0x7d0

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->DISAPPEAR_TIME:I

    .line 434
    const-string v0, "camera_exposure_compensation_steps_num"

    const/high16 v1, 0x41400000    # 12.0f

    invoke-static {v0, v1}, Lmiui/util/FeatureParser;->getFloat(Ljava/lang/String;F)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->GAPS:F

    .line 436
    const/16 v0, 0x3c

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->ITEM_ANGLE:I

    .line 437
    const/16 v0, 0x1d

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->DELTA_FOR_OUTRANGE:I

    .line 439
    iput v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->MSG_SCROLL:I

    .line 440
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->MSG_DISAPPEAR:I

    .line 441
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->MSG_REGRESS:I

    .line 604
    new-instance v0, Lcom/android/camera/ui/FocusView$ExposureView$1;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FocusView$ExposureView$1;-><init>(Lcom/android/camera/ui/FocusView$ExposureView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    .line 745
    new-instance v0, Lcom/android/camera/ui/FocusView$ExposureView$2;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FocusView$ExposureView$2;-><init>(Lcom/android/camera/ui/FocusView$ExposureView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    .line 486
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    .line 487
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 488
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 489
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41900000    # 18.0f

    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 490
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 491
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextPaint:Landroid/graphics/Paint;

    const/16 v1, 0xc0

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 493
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTextBounds:Landroid/graphics/Rect;

    .line 494
    new-instance v0, Landroid/view/GestureDetector;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mSimpleOnGestureListener:Landroid/view/GestureDetector$SimpleOnGestureListener;

    invoke-direct {v0, p2, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 495
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGestureDetector:Landroid/view/GestureDetector;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    .line 497
    new-instance v0, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;-><init>(Lcom/android/camera/ui/FocusView$ExposureView;)V

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    .line 499
    sget v0, Lcom/android/camera/Util;->sWindowWidth:I

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mWidth:I

    .line 500
    sget v0, Lcom/android/camera/Util;->sWindowHeight:I

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHeight:I

    .line 501
    sget v0, Lcom/android/camera/ui/FocusView;->BIG_RADIUS:I

    mul-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMaxRadius:I

    .line 502
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mWidth:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    .line 503
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHeight:I

    div-int/lit8 v0, v0, 0x2

    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    .line 505
    invoke-virtual {p1}, Lcom/android/camera/ui/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduationBitmap:Landroid/graphics/drawable/Drawable;

    .line 506
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduationBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 507
    invoke-virtual {p1}, Lcom/android/camera/ui/FocusView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const/high16 v1, 0x7f020000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    .line 508
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->setFilterBitmap(Z)V

    .line 509
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    neg-int v1, v1

    div-int/lit8 v1, v1, 0x2

    iget-object v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    neg-int v2, v2

    div-int/lit8 v2, v2, 0x2

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 511
    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/ui/FocusView$ExposureView;Lcom/android/camera/ui/FocusView$ExposureViewListener;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;
    .param p1, "x1"    # Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/FocusView$ExposureViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/camera/ui/FocusView$ExposureView;)[I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I

    return-object v0
.end method

.method static synthetic access$202(Lcom/android/camera/ui/FocusView$ExposureView;[I)[I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;
    .param p1, "x1"    # [I

    .prologue
    .line 429
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRelativeLocation:[I

    return-object p1
.end method

.method static synthetic access$2800(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/RollAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    return-object v0
.end method

.method static synthetic access$2900(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/FocusView$ExposureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z

    return v0
.end method

.method static synthetic access$3000(Lcom/android/camera/ui/FocusView$ExposureView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;
    .param p1, "x1"    # I

    .prologue
    .line 429
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->performRolling(I)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/camera/ui/FocusView$ExposureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;
    .param p1, "x1"    # Z

    .prologue
    .line 429
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z

    return p1
.end method

.method static synthetic access$3100(Lcom/android/camera/ui/FocusView$ExposureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;

    .prologue
    .line 429
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    return v0
.end method

.method static synthetic access$3200(Lcom/android/camera/ui/FocusView$ExposureView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView$ExposureView;->justify()V

    return-void
.end method

.method static synthetic access$3300(Lcom/android/camera/ui/FocusView$ExposureView;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$3400(Lcom/android/camera/ui/FocusView$ExposureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;

    .prologue
    .line 429
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    return v0
.end method

.method static synthetic access$3700(Lcom/android/camera/ui/FocusView$ExposureView;FFFF)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F
    .param p4, "x4"    # F

    .prologue
    .line 429
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/FocusView$ExposureView;->getTangentVelocity(FFFF)I

    move-result v0

    return v0
.end method

.method static synthetic access$3800(Lcom/android/camera/ui/FocusView$ExposureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    return v0
.end method

.method static synthetic access$3900(Lcom/android/camera/ui/FocusView$ExposureView;FFF)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F
    .param p3, "x3"    # F

    .prologue
    .line 429
    invoke-direct {p0, p1, p2, p3}, Lcom/android/camera/ui/FocusView$ExposureView;->isInCircle(FFF)Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/FocusView$ExposureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScrolled:Z

    return v0
.end method

.method static synthetic access$4000(Lcom/android/camera/ui/FocusView$ExposureView;)Lcom/android/camera/ui/MessageDispacher;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    return-object v0
.end method

.method static synthetic access$402(Lcom/android/camera/ui/FocusView$ExposureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;
    .param p1, "x1"    # Z

    .prologue
    .line 429
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScrolled:Z

    return p1
.end method

.method static synthetic access$4100(Lcom/android/camera/ui/FocusView$ExposureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;

    .prologue
    .line 429
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMaxRadius:I

    return v0
.end method

.method static synthetic access$4200(Lcom/android/camera/ui/FocusView$ExposureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;

    .prologue
    .line 429
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTheta:I

    return v0
.end method

.method static synthetic access$4202(Lcom/android/camera/ui/FocusView$ExposureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;
    .param p1, "x1"    # I

    .prologue
    .line 429
    iput p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTheta:I

    return p1
.end method

.method static synthetic access$4300(Lcom/android/camera/ui/FocusView$ExposureView;FF)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;
    .param p1, "x1"    # F
    .param p2, "x2"    # F

    .prologue
    .line 429
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FocusView$ExposureView;->getAngle(FF)I

    move-result v0

    return v0
.end method

.method static synthetic access$4400(Lcom/android/camera/ui/FocusView$ExposureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;

    .prologue
    .line 429
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mLastTheta:I

    return v0
.end method

.method static synthetic access$4402(Lcom/android/camera/ui/FocusView$ExposureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;
    .param p1, "x1"    # I

    .prologue
    .line 429
    iput p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mLastTheta:I

    return p1
.end method

.method static synthetic access$4500(Lcom/android/camera/ui/FocusView$ExposureView;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;

    .prologue
    .line 429
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView$ExposureView;->removeMessages()V

    return-void
.end method

.method static synthetic access$4600(Lcom/android/camera/ui/FocusView$ExposureView;II)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 429
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FocusView$ExposureView;->getAngleOffset(II)I

    move-result v0

    return v0
.end method

.method static synthetic access$4700(Lcom/android/camera/ui/FocusView$ExposureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOutOfRange:Z

    return v0
.end method

.method static synthetic access$4702(Lcom/android/camera/ui/FocusView$ExposureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;
    .param p1, "x1"    # Z

    .prologue
    .line 429
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOutOfRange:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/camera/ui/FocusView$ExposureView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;

    .prologue
    .line 429
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptured:Z

    return v0
.end method

.method static synthetic access$5000(Lcom/android/camera/ui/FocusView$ExposureView;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;

    .prologue
    .line 429
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mStartFlingIndex:I

    return v0
.end method

.method static synthetic access$5002(Lcom/android/camera/ui/FocusView$ExposureView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;
    .param p1, "x1"    # I

    .prologue
    .line 429
    iput p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mStartFlingIndex:I

    return p1
.end method

.method static synthetic access$502(Lcom/android/camera/ui/FocusView$ExposureView;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;
    .param p1, "x1"    # Z

    .prologue
    .line 429
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptured:Z

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/ui/FocusView$ExposureView;)J
    .locals 2
    .param p0, "x0"    # Lcom/android/camera/ui/FocusView$ExposureView;

    .prologue
    .line 429
    iget-wide v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScrolledDoneTime:J

    return-wide v0
.end method

.method private drawGraduation(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/16 v6, 0xff

    const/16 v5, 0x24

    const/4 v4, 0x0

    .line 892
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 893
    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 895
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v1}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 896
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptureBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 899
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    rem-int/lit16 v1, v1, 0x168

    int-to-float v1, v1

    invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->rotate(F)V

    .line 900
    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mEVBigRadius:I

    int-to-float v1, v1

    const v2, 0x3f666666    # 0.9f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 901
    .local v0, "bound":I
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduationBitmap:Landroid/graphics/drawable/Drawable;

    neg-int v2, v0

    neg-int v3, v0

    invoke-virtual {v1, v2, v3, v0, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 902
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGraduationBitmap:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 903
    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    neg-int v1, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    neg-int v2, v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 905
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/android/camera/ui/FocusView;->access$4800(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mEVBigAlpha:I

    invoke-static {v2, v5, v6, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 906
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/android/camera/ui/FocusView;->access$4900(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mEVSmallAlpha:I

    invoke-static {v2, v5, v6, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 907
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;
    invoke-static {v1}, Lcom/android/camera/ui/FocusView;->access$4900(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Paint;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mEVSmallLineWidth:I

    int-to-float v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 908
    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mEVBigRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mBigPaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$4800(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 909
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v1}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isShowCaptureButton()Z

    move-result v1

    if-nez v1, :cond_1

    .line 910
    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v2, v2

    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mEVSmallRadius:I

    int-to-float v3, v3

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mSmallPaint:Landroid/graphics/Paint;
    invoke-static {v4}, Lcom/android/camera/ui/FocusView;->access$4900(Lcom/android/camera/ui/FocusView;)Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 912
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 913
    return-void
.end method

.method private getAngle(FF)I
    .locals 10
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 942
    iget v5, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v5, v5

    sub-float v1, p1, v5

    .line 943
    .local v1, "dx":F
    iget v5, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v5, v5

    sub-float v4, p2, v5

    .line 944
    .local v4, "dy":F
    mul-float v5, v1, v1

    mul-float v6, v4, v4

    add-float/2addr v5, v6

    float-to-double v6, v5

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    .line 945
    .local v2, "distance":D
    const-wide v6, 0x404ca5dc1a63c1f8L    # 57.29577951308232

    float-to-double v8, v1

    div-double/2addr v8, v2

    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    add-double/2addr v6, v8

    double-to-int v0, v6

    .line 946
    .local v0, "arc2":I
    float-to-double v6, v4

    const-wide v8, 0x3f60624dd2f1a9fcL    # 0.002

    cmpl-double v5, v6, v8

    if-lez v5, :cond_0

    .end local v0    # "arc2":I
    :goto_0
    return v0

    .restart local v0    # "arc2":I
    :cond_0
    rsub-int v0, v0, 0x168

    goto :goto_0
.end method

.method private getAngleOffset(II)I
    .locals 2
    .param p1, "from"    # I
    .param p2, "to"    # I

    .prologue
    .line 950
    sub-int v0, p2, p1

    .line 951
    .local v0, "delta":I
    const/16 v1, 0x10e

    if-le v0, v1, :cond_1

    .line 952
    add-int/lit16 v1, p2, -0x168

    sub-int v0, v1, p1

    .line 956
    :cond_0
    :goto_0
    return v0

    .line 953
    :cond_1
    const/16 v1, -0x10e

    if-ge v0, v1, :cond_0

    .line 954
    rsub-int v1, p1, 0x168

    add-int v0, v1, p2

    goto :goto_0
.end method

.method private getOffsetAngleByIndex(I)I
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v0, :cond_0

    .line 731
    const/4 v0, 0x0

    .line 738
    :goto_0
    return v0

    .line 733
    :cond_0
    if-gez p1, :cond_2

    .line 734
    const/4 p1, 0x0

    .line 738
    :cond_1
    :goto_1
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    sub-int v0, p1, v0

    mul-int/lit8 v0, v0, 0x3c

    goto :goto_0

    .line 735
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-le p1, v0, :cond_1

    .line 736
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v0

    add-int/lit8 p1, v0, -0x1

    goto :goto_1
.end method

.method private getTangentVelocity(FFFF)I
    .locals 14
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "vx"    # F
    .param p4, "vy"    # F

    .prologue
    .line 933
    iget v8, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v8, v8

    sub-float v6, p1, v8

    .line 934
    .local v6, "dx":F
    iget v8, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v8, v8

    sub-float v7, p2, v8

    .line 935
    .local v7, "dy":F
    mul-float v8, v6, v6

    mul-float v9, v7, v7

    add-float/2addr v8, v9

    float-to-double v8, v8

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v4

    .line 936
    .local v4, "distance":D
    float-to-double v8, v7

    const-wide v10, 0x3f747ae147ae147bL    # 0.005

    cmpl-double v8, v8, v10

    if-lez v8, :cond_0

    float-to-double v8, v6

    div-double/2addr v8, v4

    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    .line 938
    .local v2, "arc":D
    :goto_0
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    move/from16 v0, p4

    float-to-double v10, v0

    mul-double/2addr v8, v10

    invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v10

    move/from16 v0, p3

    float-to-double v12, v0

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    const-wide v10, 0x4066800000000000L    # 180.0

    mul-double/2addr v8, v10

    const-wide v10, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v8, v10

    double-to-int v8, v8

    return v8

    .line 936
    .end local v2    # "arc":D
    :cond_0
    const-wide v8, 0x401921fb54442d18L    # 6.283185307179586

    float-to-double v10, v6

    div-double/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->acos(D)D

    move-result-wide v10

    sub-double v2, v8, v10

    goto :goto_0
.end method

.method private initialize(Lcom/android/camera/ui/FocusView$ExposureViewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .prologue
    .line 518
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    .line 519
    return-void
.end method

.method private isInCircle(FFF)Z
    .locals 6
    .param p1, "x"    # F
    .param p2, "y"    # F
    .param p3, "r"    # F

    .prologue
    .line 964
    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v4, v4

    sub-float v2, p1, v4

    .line 965
    .local v2, "dx":F
    iget v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v4, v4

    sub-float v3, p2, v4

    .line 966
    .local v3, "dy":F
    mul-float v4, v2, v2

    mul-float v5, v3, v3

    add-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    .line 967
    .local v0, "distance":D
    float-to-double v4, p3

    cmpg-double v4, v0, v4

    if-gtz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    return v4

    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method private justify()V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v2, 0x0

    .line 671
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v3, :cond_0

    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    if-nez v3, :cond_1

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 674
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    .line 675
    .local v1, "offset":I
    if-lez v1, :cond_5

    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v4}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    if-ge v3, v4, :cond_4

    .line 677
    .local v0, "needToIncrease":Z
    :cond_2
    :goto_1
    if-eqz v0, :cond_3

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/16 v3, 0x1e

    if-le v2, v3, :cond_3

    .line 678
    if-gez v1, :cond_6

    .line 679
    add-int/lit8 v1, v1, 0x3c

    .line 684
    :cond_3
    :goto_2
    neg-int v2, v1

    invoke-direct {p0, v2}, Lcom/android/camera/ui/FocusView$ExposureView;->performRolling(I)V

    goto :goto_0

    .end local v0    # "needToIncrease":Z
    :cond_4
    move v0, v2

    .line 675
    goto :goto_1

    :cond_5
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    if-gtz v3, :cond_2

    move v0, v2

    goto :goto_1

    .line 681
    .restart local v0    # "needToIncrease":Z
    :cond_6
    add-int/lit8 v1, v1, -0x3c

    goto :goto_2
.end method

.method private performRolling(I)V
    .locals 7
    .param p1, "delta"    # I

    .prologue
    const/4 v6, 0x2

    .line 641
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v3, :cond_0

    if-nez p1, :cond_1

    .line 668
    :cond_0
    :goto_0
    return-void

    .line 642
    :cond_1
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    add-int/2addr v3, p1

    iput v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    .line 644
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    div-int/lit8 v0, v3, 0x3c

    .line 645
    .local v0, "count":I
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    add-int v2, v3, v0

    .line 647
    .local v2, "targetItem":I
    if-gez v2, :cond_5

    .line 648
    const/4 v2, 0x0

    .line 653
    :cond_2
    :goto_1
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    if-eq v2, v3, :cond_3

    .line 654
    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/camera/ui/FocusView$ExposureView;->setCurrentItem(IZ)V

    .line 657
    :cond_3
    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTimeout:Z

    if-eqz v3, :cond_4

    .line 658
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 659
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 662
    :cond_4
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    rem-int/lit8 v3, v3, 0x3c

    iput v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    .line 663
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    add-int v1, v3, p1

    .line 664
    .local v1, "orientation":I
    iget v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    if-eq v1, v3, :cond_0

    .line 665
    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    .line 666
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v3}, Lcom/android/camera/ui/FocusView;->invalidate()V

    goto :goto_0

    .line 649
    .end local v1    # "orientation":I
    :cond_5
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v3

    if-lt v2, v3, :cond_2

    .line 650
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    goto :goto_1
.end method

.method private removeMessages()V
    .locals 2

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 638
    return-void
.end method

.method private scrollToItem(I)V
    .locals 6
    .param p1, "index"    # I

    .prologue
    .line 724
    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    sub-int v1, p1, v1

    invoke-static {v1}, Ljava/lang/Math;->abs(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x32

    const/16 v2, 0xfa

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 725
    .local v0, "time":I
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->getOffsetAngleByIndex(I)I

    move-result v2

    int-to-long v4, v0

    invoke-virtual {v1, v2, v4, v5}, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->scroll(IJ)V

    .line 726
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 727
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 584
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 585
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 586
    return-void
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x2

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 825
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-nez v3, :cond_1

    .line 868
    :cond_0
    :goto_0
    return v1

    .line 828
    :cond_1
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 830
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z

    .line 831
    .local v0, "oldDown":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_2

    .line 832
    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z

    if-eqz v3, :cond_2

    .line 833
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z

    .line 834
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView$ExposureView;->justify()V

    .line 838
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v2, v3, :cond_3

    const/4 v3, 0x3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v4

    if-ne v3, v4, :cond_8

    .line 840
    :cond_3
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOutOfRange:Z

    .line 841
    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScrolled:Z

    if-eqz v3, :cond_4

    .line 842
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v3

    const-string v4, "pref_camera_exposure_key"

    invoke-virtual {v3, v4}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 843
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScrolled:Z

    .line 844
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScrolledDoneTime:J

    .line 846
    :cond_4
    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptured:Z

    if-eqz v3, :cond_5

    .line 847
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCaptured:Z

    .line 850
    :cond_5
    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    if-eqz v3, :cond_a

    .line 851
    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z

    if-eqz v3, :cond_7

    .line 852
    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTimeout:Z

    if-eqz v3, :cond_6

    .line 853
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v6}, Landroid/os/Handler;->removeMessages(I)V

    .line 854
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x7d0

    invoke-virtual {v3, v6, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 856
    :cond_6
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z

    .line 858
    :cond_7
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v3

    if-nez v3, :cond_8

    .line 859
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView$ExposureView;->justify()V

    .line 868
    :cond_8
    :goto_1
    if-nez v0, :cond_9

    iget-boolean v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mIsDown:Z

    if-eqz v3, :cond_0

    :cond_9
    move v1, v2

    goto :goto_0

    .line 862
    :cond_a
    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    goto :goto_1
.end method

.method public getDecelerate(F)F
    .locals 3
    .param p1, "t"    # F

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    .line 971
    sub-float v0, v2, p1

    sub-float v1, v2, p1

    mul-float/2addr v0, v1

    sub-float v0, v2, v0

    return v0
.end method

.method public getLinear(F)F
    .locals 0
    .param p1, "t"    # F

    .prologue
    .line 975
    return p1
.end method

.method public isDraw()Z
    .locals 1

    .prologue
    .line 580
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    return v0
.end method

.method public onCameraOpen()V
    .locals 6

    .prologue
    .line 522
    invoke-static {}, Lcom/android/camera/CameraManager;->instance()Lcom/android/camera/CameraManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/camera/CameraManager;->getStashParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v2

    .line 523
    .local v2, "parameter":Landroid/hardware/Camera$Parameters;
    if-nez v2, :cond_1

    .line 531
    :cond_0
    :goto_0
    return-void

    .line 524
    :cond_1
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMinExposureCompensation()I

    move-result v1

    .line 525
    .local v1, "min":I
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getMaxExposureCompensation()I

    move-result v0

    .line 526
    .local v0, "max":I
    invoke-virtual {v2}, Landroid/hardware/Camera$Parameters;->getExposureCompensationStep()F

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mExposureStep:F

    .line 527
    if-eqz v0, :cond_0

    if-eq v0, v1, :cond_0

    .line 528
    new-instance v3, Lcom/android/camera/ui/FloatRollAdapter;

    sub-int v4, v0, v1

    int-to-float v4, v4

    iget v5, p0, Lcom/android/camera/ui/FocusView$ExposureView;->GAPS:F

    div-float/2addr v4, v5

    invoke-direct {v3, v1, v0, v4}, Lcom/android/camera/ui/FloatRollAdapter;-><init>(IIF)V

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v4

    invoke-static {v4}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v4

    invoke-virtual {p0, v3, v4}, Lcom/android/camera/ui/FocusView$ExposureView;->setAdapter(Lcom/android/camera/ui/RollAdapter;I)V

    .line 530
    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;
    invoke-static {v3}, Lcom/android/camera/ui/FocusView;->access$2700(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;

    move-result-object v3

    const/4 v4, 0x6

    invoke-virtual {v3, v4}, Lcom/android/camera/Camera;->loadCameraSound(I)V

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 872
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    if-nez v0, :cond_1

    .line 889
    :cond_0
    :goto_0
    return-void

    .line 876
    :cond_1
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRotation:I

    if-eqz v0, :cond_2

    .line 877
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 878
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 879
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRotation:I

    neg-int v0, v0

    int-to-float v0, v0

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->rotate(F)V

    .line 880
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    neg-int v0, v0

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    neg-int v1, v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 883
    :cond_2
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->drawGraduation(Landroid/graphics/Canvas;)V

    .line 886
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRotation:I

    if-eqz v0, :cond_0

    .line 887
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 542
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FocusView$ExposureView;->setDraw(Z)V

    .line 543
    invoke-static {}, Lcom/android/camera/CameraSettings;->resetExposure()V

    .line 544
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 534
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/FocusView$ExposureView;->setDraw(Z)V

    .line 535
    return-void
.end method

.method public reload()V
    .locals 3

    .prologue
    .line 562
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v1, :cond_0

    .line 563
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    .line 564
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/camera/ui/FocusView$ExposureView;->getOffsetAngleByIndex(I)I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    .line 565
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {}, Lcom/android/camera/preferences/CameraSettingPreferences;->instance()Lcom/android/camera/preferences/CameraSettingPreferences;

    move-result-object v2

    invoke-static {v2}, Lcom/android/camera/CameraSettings;->readExposure(Lcom/android/camera/preferences/CameraSettingPreferences;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    .line 567
    .local v0, "index":I
    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView$ExposureView;->getOffsetAngleByIndex(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    .line 568
    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    .line 570
    .end local v0    # "index":I
    :cond_0
    return-void
.end method

.method public scrollToOffset(I)V
    .locals 2
    .param p1, "offset"    # I

    .prologue
    .line 742
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    add-int/2addr v0, p1

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/ui/FocusView$ExposureView;->setCurrentItem(IZ)V

    .line 743
    return-void
.end method

.method public setAdapter(Lcom/android/camera/ui/RollAdapter;I)V
    .locals 3
    .param p1, "adapter"    # Lcom/android/camera/ui/RollAdapter;
    .param p2, "value"    # I

    .prologue
    .line 547
    if-eqz p1, :cond_0

    .line 548
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    .line 549
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    .line 550
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/camera/ui/RollAdapter;->getItemIndexByValue(Ljava/lang/Object;)I

    move-result v0

    .line 551
    .local v0, "index":I
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    invoke-direct {p0, v1}, Lcom/android/camera/ui/FocusView$ExposureView;->getOffsetAngleByIndex(I)I

    move-result v1

    neg-int v1, v1

    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    .line 552
    if-gez v0, :cond_1

    .line 553
    iget-object v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v1}, Lcom/android/camera/ui/RollAdapter;->getItemsCount()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    .line 559
    .end local v0    # "index":I
    :cond_0
    :goto_0
    return-void

    .line 555
    .restart local v0    # "index":I
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FocusView$ExposureView;->getOffsetAngleByIndex(I)I

    move-result v2

    add-int/2addr v1, v2

    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mOrientation:I

    .line 556
    iput v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    goto :goto_0
.end method

.method public setCurrentItem(IZ)V
    .locals 7
    .param p1, "index"    # I
    .param p2, "animated"    # Z

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x1

    .line 688
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    if-eq p1, v0, :cond_0

    .line 689
    if-eqz p2, :cond_1

    .line 690
    invoke-direct {p0, p1}, Lcom/android/camera/ui/FocusView$ExposureView;->scrollToItem(I)V

    .line 721
    :cond_0
    :goto_0
    return-void

    .line 692
    :cond_1
    iput p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    .line 693
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_4

    .line 694
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isNeedMute()Z

    move-result v0

    if-nez v0, :cond_2

    .line 695
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    # getter for: Lcom/android/camera/ui/FocusView;->mActivity:Lcom/android/camera/Camera;
    invoke-static {v0}, Lcom/android/camera/ui/FocusView;->access$2700(Lcom/android/camera/ui/FocusView;)Lcom/android/camera/Camera;

    move-result-object v0

    const/4 v2, 0x6

    invoke-virtual {v0, v2}, Lcom/android/camera/Camera;->playCameraSound(I)V

    .line 696
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mExposureViewListener:Lcom/android/camera/ui/FocusView$ExposureViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/FocusView$ExposureViewListener;->isNeedHapticFeedback()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 697
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    if-ne v0, v2, :cond_5

    .line 698
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/android/camera/ui/FocusView;->performHapticFeedback(I)Z

    .line 703
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mEvChanged:Z

    .line 704
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    if-eqz v0, :cond_4

    .line 705
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    const v2, 0x7f0c0082

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v4, p1}, Lcom/android/camera/ui/RollAdapter;->getItemValue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 713
    :cond_4
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    # getter for: Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mMode:I
    invoke-static {v0}, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->access$3500(Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 714
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v0}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v0

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mStartFlingIndex:I

    sub-int/2addr v0, v2

    iget v2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCurrentItem:I

    iget-object v3, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mAdapter:Lcom/android/camera/ui/RollAdapter;

    invoke-interface {v3}, Lcom/android/camera/ui/RollAdapter;->getCenterIndex()I

    move-result v3

    sub-int/2addr v2, v3

    mul-int/2addr v0, v2

    if-lez v0, :cond_0

    .line 715
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mScroller:Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;

    # setter for: Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->mFinished:Z
    invoke-static {v0, v1}, Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;->access$3602(Lcom/android/camera/ui/FocusView$ExposureView$RollScroller;Z)Z

    .line 716
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    .line 700
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0, v6}, Lcom/android/camera/ui/FocusView;->performHapticFeedback(I)Z

    goto :goto_1
.end method

.method public setDraw(Z)V
    .locals 5
    .param p1, "draw"    # Z

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x0

    .line 589
    if-eqz p1, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    if-eq v0, p1, :cond_0

    .line 590
    iput v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRollingDelta:I

    .line 591
    invoke-virtual {p0}, Lcom/android/camera/ui/FocusView$ExposureView;->reload()V

    .line 593
    :cond_0
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    .line 594
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    if-eqz v0, :cond_1

    .line 595
    iput-boolean v1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mEvChanged:Z

    .line 596
    iget-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTimeout:Z

    if-eqz v0, :cond_1

    .line 597
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 598
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 601
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 602
    return-void
.end method

.method public setMessageDispacher(Lcom/android/camera/ui/MessageDispacher;)V
    .locals 0
    .param p1, "p"    # Lcom/android/camera/ui/MessageDispacher;

    .prologue
    .line 514
    iput-object p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 515
    return-void
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 926
    iget v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRotation:I

    if-eq v0, p1, :cond_0

    .line 927
    iput p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mRotation:I

    .line 928
    iget-object v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->this$0:Lcom/android/camera/ui/FocusView;

    invoke-virtual {v0}, Lcom/android/camera/ui/FocusView;->invalidate()V

    .line 930
    :cond_0
    return-void
.end method

.method public setPosition(II)V
    .locals 1
    .param p1, "cx"    # I
    .param p2, "cy"    # I

    .prologue
    .line 573
    iput p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterX:I

    .line 574
    iput p2, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mCenterY:I

    .line 575
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mDraw:Z

    .line 576
    invoke-direct {p0}, Lcom/android/camera/ui/FocusView$ExposureView;->removeMessages()V

    .line 577
    return-void
.end method

.method public setTimeout(Z)V
    .locals 0
    .param p1, "timeout"    # Z

    .prologue
    .line 538
    iput-boolean p1, p0, Lcom/android/camera/ui/FocusView$ExposureView;->mTimeout:Z

    .line 539
    return-void
.end method
