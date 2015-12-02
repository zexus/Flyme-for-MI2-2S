.class public Lcom/android/camera/ui/ObjectView;
.super Lcom/android/camera/ui/FrameView;
.source "ObjectView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/ObjectView$EndAction;,
        Lcom/android/camera/ui/ObjectView$StartAction;,
        Lcom/android/camera/ui/ObjectView$Filter;,
        Lcom/android/camera/ui/ObjectView$ObjectViewListener;
    }
.end annotation


# static fields
.field private static final NEAR_EDGE:I

.field private static final OBJECT_TRACKING_ICON:[I

.field private static final RECT_EDGE_WIDTH:I

.field private static final TOUCH_TOLERANCE:I

.field private static final VERTEXS_TOUCH_TOLERANCE:I


# instance fields
.field private final mDisplayBounds:Landroid/graphics/RectF;

.field private mEndAction:Ljava/lang/Runnable;

.field protected mFace:Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

.field private mFace2UIMatrix:Landroid/graphics/Matrix;

.field private mFilter:Lcom/android/camera/ui/ObjectView$Filter;

.field private mHandler:Landroid/os/Handler;

.field private mLastX:F

.field private mLastY:F

.field private mListener:Lcom/android/camera/ui/ObjectView$ObjectViewListener;

.field private mLostTrackThreshold:I

.field private mLostTrackingNum:I

.field private mMovingMode:I

.field protected mObjectRect:Landroid/graphics/RectF;

.field protected mOldObjectRect:Landroid/graphics/RectF;

.field private mPreviewHeight:I

.field private mPreviewWidth:I

.field private mStartAction:Ljava/lang/Runnable;

.field protected mTrackIndicator:Landroid/graphics/drawable/Drawable;

.field private mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

.field private mZoomAnimaState:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/high16 v1, 0x420c0000    # 35.0f

    .line 62
    const/high16 v0, 0x41c80000    # 25.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/ObjectView;->TOUCH_TOLERANCE:I

    .line 63
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/ObjectView;->VERTEXS_TOUCH_TOLERANCE:I

    .line 64
    invoke-static {v1}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/ObjectView;->NEAR_EDGE:I

    .line 67
    const/high16 v0, 0x41200000    # 10.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/ObjectView;->RECT_EDGE_WIDTH:I

    .line 68
    const/4 v0, 0x3

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/camera/ui/ObjectView;->OBJECT_TRACKING_ICON:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x7f02004f
        0x7f020051
        0x7f020050
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attr"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    .line 130
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/FrameView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    new-instance v1, Lcom/android/camera/ui/ObjectView$StartAction;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/ObjectView$StartAction;-><init>(Lcom/android/camera/ui/ObjectView;Lcom/android/camera/ui/ObjectView$1;)V

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mStartAction:Ljava/lang/Runnable;

    .line 42
    new-instance v1, Lcom/android/camera/ui/ObjectView$EndAction;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/ObjectView$EndAction;-><init>(Lcom/android/camera/ui/ObjectView;Lcom/android/camera/ui/ObjectView$1;)V

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mEndAction:Ljava/lang/Runnable;

    .line 77
    sget-object v1, Lcom/android/camera/ui/ObjectView;->OBJECT_TRACKING_ICON:[I

    array-length v1, v1

    new-array v1, v1, [Landroid/graphics/drawable/Drawable;

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    .line 78
    iput v4, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    .line 81
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    .line 82
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mOldObjectRect:Landroid/graphics/RectF;

    .line 83
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    .line 86
    new-instance v1, Landroid/graphics/Matrix;

    invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mFace2UIMatrix:Landroid/graphics/Matrix;

    .line 93
    iput v4, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackingNum:I

    .line 96
    new-instance v1, Lcom/android/camera/ui/ObjectView$Filter;

    invoke-direct {v1, p0, v2}, Lcom/android/camera/ui/ObjectView$Filter;-><init>(Lcom/android/camera/ui/ObjectView;Lcom/android/camera/ui/ObjectView$1;)V

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mFilter:Lcom/android/camera/ui/ObjectView$Filter;

    .line 107
    new-instance v1, Lcom/android/camera/ui/ObjectView$1;

    invoke-direct {v1, p0}, Lcom/android/camera/ui/ObjectView$1;-><init>(Lcom/android/camera/ui/ObjectView;)V

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mHandler:Landroid/os/Handler;

    .line 131
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Lcom/android/camera/ui/ObjectView;->OBJECT_TRACKING_ICON:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 132
    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget-object v3, Lcom/android/camera/ui/ObjectView;->OBJECT_TRACKING_ICON:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    aput-object v2, v1, v0

    .line 131
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 135
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v4

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    .line 136
    check-cast p1, Lcom/android/camera/Camera;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/camera/ui/ObjectView;->mContext:Landroid/content/Context;

    .line 137
    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/ui/ObjectView;)Lcom/android/camera/ui/ObjectView$ObjectViewListener;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ObjectView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mListener:Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/ObjectView;)Lcom/android/camera/ui/ObjectView$Filter;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/ObjectView;

    .prologue
    .line 39
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mFilter:Lcom/android/camera/ui/ObjectView$Filter;

    return-object v0
.end method

.method static synthetic access$502(Lcom/android/camera/ui/ObjectView;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/ObjectView;
    .param p1, "x1"    # I

    .prologue
    .line 39
    iput p1, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    return p1
.end method

.method private detectMovingStyle(FFFF)V
    .locals 8
    .param p1, "x0"    # F
    .param p2, "y0"    # F
    .param p3, "x1"    # F
    .param p4, "y1"    # F

    .prologue
    const/4 v4, 0x1

    const/4 v7, 0x0

    const/4 v5, 0x0

    .line 374
    cmpg-float v6, p3, v7

    if-ltz v6, :cond_0

    cmpg-float v6, p4, v7

    if-gez v6, :cond_8

    .line 375
    :cond_0
    iput v5, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    .line 377
    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    sub-float v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 378
    .local v1, "left":F
    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    sub-float v6, p1, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v2

    .line 379
    .local v2, "right":F
    sget v6, Lcom/android/camera/ui/ObjectView;->TOUCH_TOLERANCE:I

    int-to-float v6, v6

    cmpg-float v6, v1, v6

    if-gtz v6, :cond_4

    cmpg-float v6, v1, v2

    if-gez v6, :cond_4

    .line 380
    iget v6, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    or-int/lit8 v6, v6, 0x1

    iput v6, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    .line 386
    :cond_1
    :goto_0
    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->top:F

    sub-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v3

    .line 387
    .local v3, "top":F
    iget-object v6, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->bottom:F

    sub-float v6, p2, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v0

    .line 388
    .local v0, "bottom":F
    sget v6, Lcom/android/camera/ui/ObjectView;->TOUCH_TOLERANCE:I

    int-to-float v6, v6

    cmpg-float v6, v3, v6

    if-gtz v6, :cond_5

    move v6, v4

    :goto_1
    cmpg-float v7, v3, v0

    if-gez v7, :cond_6

    :goto_2
    and-int/2addr v4, v6

    if-eqz v4, :cond_7

    .line 389
    iget v4, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    or-int/lit8 v4, v4, 0x2

    iput v4, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    .line 394
    :cond_2
    :goto_3
    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v4, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_3

    iget v4, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    if-nez v4, :cond_3

    .line 396
    const/16 v4, 0x10

    iput v4, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    .line 406
    .end local v0    # "bottom":F
    .end local v1    # "left":F
    .end local v2    # "right":F
    .end local v3    # "top":F
    :cond_3
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->invalidate()V

    .line 407
    return-void

    .line 381
    .restart local v1    # "left":F
    .restart local v2    # "right":F
    :cond_4
    sget v6, Lcom/android/camera/ui/ObjectView;->TOUCH_TOLERANCE:I

    int-to-float v6, v6

    cmpg-float v6, v2, v6

    if-gtz v6, :cond_1

    .line 382
    iget v6, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    or-int/lit8 v6, v6, 0x4

    iput v6, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    goto :goto_0

    .restart local v0    # "bottom":F
    .restart local v3    # "top":F
    :cond_5
    move v6, v5

    .line 388
    goto :goto_1

    :cond_6
    move v4, v5

    goto :goto_2

    .line 390
    :cond_7
    sget v4, Lcom/android/camera/ui/ObjectView;->TOUCH_TOLERANCE:I

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gtz v4, :cond_2

    .line 391
    iget v4, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    or-int/lit8 v4, v4, 0x8

    iput v4, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    goto :goto_3

    .line 399
    .end local v0    # "bottom":F
    .end local v1    # "left":F
    .end local v2    # "right":F
    .end local v3    # "top":F
    :cond_8
    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    invoke-static {p1, p3}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v5, Lcom/android/camera/ui/ObjectView;->VERTEXS_TOUCH_TOLERANCE:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->right:F

    invoke-static {p1, p3}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v5, Lcom/android/camera/ui/ObjectView;->VERTEXS_TOUCH_TOLERANCE:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    invoke-static {p2, p4}, Ljava/lang/Math;->min(FF)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v5, Lcom/android/camera/ui/ObjectView;->VERTEXS_TOUCH_TOLERANCE:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    invoke-static {p2, p4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    sub-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    sget v5, Lcom/android/camera/ui/ObjectView;->VERTEXS_TOUCH_TOLERANCE:I

    int-to-float v5, v5

    cmpg-float v4, v4, v5

    if-gtz v4, :cond_3

    .line 403
    const/16 v4, 0x20

    iput v4, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    goto :goto_4
.end method

.method private isInObjectViewArea(FF)Z
    .locals 2
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 299
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    sget v1, Lcom/android/camera/ui/ObjectView;->RECT_EDGE_WIDTH:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpl-float v0, p1, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    sget v1, Lcom/android/camera/ui/ObjectView;->RECT_EDGE_WIDTH:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    sget v1, Lcom/android/camera/ui/ObjectView;->RECT_EDGE_WIDTH:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    cmpl-float v0, p2, v0

    if-ltz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    sget v1, Lcom/android/camera/ui/ObjectView;->RECT_EDGE_WIDTH:I

    int-to-float v1, v1

    add-float/2addr v0, v1

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private mapRect(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;
    .locals 2
    .param p1, "rect"    # Landroid/graphics/RectF;
    .param p2, "uiToDevice"    # Z

    .prologue
    .line 584
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    .line 585
    .local v0, "result":Landroid/graphics/RectF;
    invoke-virtual {v0, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 586
    if-eqz p2, :cond_0

    .line 587
    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    .line 591
    :goto_0
    return-object v0

    .line 589
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mFace2UIMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v1, v0}, Landroid/graphics/Matrix;->mapRect(Landroid/graphics/RectF;)Z

    goto :goto_0
.end method

.method private moveObjectView(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    const/high16 v11, 0x43480000    # 200.0f

    const/4 v10, 0x0

    .line 410
    iget v8, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    const/16 v9, 0x20

    if-ne v8, v9, :cond_2

    .line 411
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    .line 412
    .local v4, "x0":F
    invoke-virtual {p1, v12}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 413
    .local v6, "y0":F
    invoke-virtual {p1, v13}, Landroid/view/MotionEvent;->getX(I)F

    move-result v5

    .line 414
    .local v5, "x1":F
    invoke-virtual {p1, v13}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    .line 415
    .local v7, "y1":F
    sub-float v8, v5, v4

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v11, v8

    if-gez v8, :cond_0

    .line 416
    iget-object v8, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-static {v4, v5}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v8, Landroid/graphics/RectF;->left:F

    .line 417
    iget-object v8, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v8, Landroid/graphics/RectF;->right:F

    .line 419
    :cond_0
    sub-float v8, v7, v6

    invoke-static {v8}, Ljava/lang/Math;->abs(F)F

    move-result v8

    cmpg-float v8, v11, v8

    if-gez v8, :cond_1

    .line 420
    iget-object v8, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v8, Landroid/graphics/RectF;->top:F

    .line 421
    iget-object v8, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-static {v6, v7}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v8, Landroid/graphics/RectF;->bottom:F

    .line 452
    .end local v4    # "x0":F
    .end local v5    # "x1":F
    .end local v6    # "y0":F
    .end local v7    # "y1":F
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->invalidate()V

    .line 453
    return-void

    .line 424
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    iget v9, p0, Lcom/android/camera/ui/ObjectView;->mLastX:F

    sub-float v0, v8, v9

    .line 425
    .local v0, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v8

    iget v9, p0, Lcom/android/camera/ui/ObjectView;->mLastY:F

    sub-float v1, v8, v9

    .line 426
    .local v1, "deltaY":F
    iget v8, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    const/16 v9, 0x10

    if-ne v8, v9, :cond_5

    .line 428
    cmpl-float v8, v0, v10

    if-lez v8, :cond_3

    iget-object v8, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    iget-object v9, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    sub-float/2addr v8, v9

    invoke-static {v8, v0}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 430
    :goto_1
    cmpl-float v8, v1, v10

    if-lez v8, :cond_4

    iget-object v8, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v9, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v8, v9

    invoke-static {v8, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    .line 432
    :goto_2
    iget-object v8, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v8, v0, v1}, Landroid/graphics/RectF;->offset(FF)V

    goto :goto_0

    .line 428
    :cond_3
    iget-object v8, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->left:F

    iget-object v9, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    sub-float/2addr v8, v9

    invoke-static {v8, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    goto :goto_1

    .line 430
    :cond_4
    iget-object v8, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->top:F

    iget-object v9, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    sub-float/2addr v8, v9

    invoke-static {v8, v1}, Ljava/lang/Math;->max(FF)F

    move-result v1

    goto :goto_2

    .line 435
    :cond_5
    const/high16 v3, 0x43480000    # 200.0f

    .line 436
    .local v3, "minWidth":F
    const/high16 v2, 0x43480000    # 200.0f

    .line 437
    .local v2, "minHeight":F
    iget v8, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    and-int/lit8 v8, v8, 0x1

    if-eqz v8, :cond_6

    .line 438
    iget-object v8, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->left:F

    add-float/2addr v9, v0

    iget-object v10, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->right:F

    sub-float/2addr v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v8, Landroid/graphics/RectF;->left:F

    .line 440
    :cond_6
    iget v8, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_7

    .line 441
    iget-object v8, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->top:F

    add-float/2addr v9, v1

    iget-object v10, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v10, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->min(FF)F

    move-result v9

    iput v9, v8, Landroid/graphics/RectF;->top:F

    .line 443
    :cond_7
    iget v8, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    and-int/lit8 v8, v8, 0x4

    if-eqz v8, :cond_8

    .line 444
    iget-object v8, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->right:F

    add-float/2addr v9, v0

    iget-object v10, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->left:F

    add-float/2addr v10, v3

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v8, Landroid/graphics/RectF;->right:F

    .line 446
    :cond_8
    iget v8, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    and-int/lit8 v8, v8, 0x8

    if-eqz v8, :cond_9

    .line 447
    iget-object v8, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v9, v1

    iget-object v10, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v10, v10, Landroid/graphics/RectF;->top:F

    add-float/2addr v10, v2

    invoke-static {v9, v10}, Ljava/lang/Math;->max(FF)F

    move-result v9

    iput v9, v8, Landroid/graphics/RectF;->bottom:F

    .line 449
    :cond_9
    iget-object v8, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget-object v9, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v8, v9}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    goto/16 :goto_0
.end method

.method private resetView()V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 543
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 544
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/ObjectView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 545
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 546
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ObjectView;->setScaleX(F)V

    .line 547
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/ObjectView;->setScaleY(F)V

    .line 548
    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 549
    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 550
    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 551
    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    aget-object v1, v1, v2

    iput-object v1, p0, Lcom/android/camera/ui/ObjectView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    .line 552
    return-void
.end method

.method private setMatrix()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 570
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mPreviewWidth:I

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mPreviewHeight:I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-eqz v0, :cond_0

    .line 572
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 573
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mMatrix:Landroid/graphics/Matrix;

    iget v1, p0, Lcom/android/camera/ui/ObjectView;->mPreviewWidth:I

    int-to-float v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v2

    div-float/2addr v1, v2

    iget v2, p0, Lcom/android/camera/ui/ObjectView;->mPreviewHeight:I

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    div-float/2addr v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 578
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mFace2UIMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0}, Landroid/graphics/Matrix;->reset()V

    .line 579
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mMatrix:Landroid/graphics/Matrix;

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mFace2UIMatrix:Landroid/graphics/Matrix;

    invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->invert(Landroid/graphics/Matrix;)Z

    .line 581
    :cond_0
    return-void
.end method

.method private updateAnimateView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 456
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 458
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 459
    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    float-to-int v1, v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 460
    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-int v1, v1

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V

    .line 461
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->requestLayout()V

    .line 462
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 493
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ObjectView;->mFace:Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    .line 494
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mOldObjectRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 495
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2, v2, v2, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 496
    invoke-direct {p0}, Lcom/android/camera/ui/ObjectView;->resetView()V

    .line 497
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    .line 498
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->invalidate()V

    .line 499
    return-void
.end method

.method public faceExists()Z
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mFace:Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->isAdjusting()Z

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

.method public getFocusRect()Landroid/graphics/RectF;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 209
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast v1, Lcom/android/camera/ActivityBase;

    invoke-virtual {v1}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    .line 210
    .local v0, "screenNail":Lcom/android/camera/CameraScreenNail;
    if-eqz v0, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/ui/ObjectView;->mPause:Z

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    .line 211
    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    .line 213
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getFocusRectInPreviewFrame()Landroid/graphics/RectF;
    .locals 2

    .prologue
    .line 261
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getFocusRect()Landroid/graphics/RectF;

    move-result-object v0

    .line 262
    .local v0, "rect":Landroid/graphics/RectF;
    if-eqz v0, :cond_0

    .line 263
    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ObjectView;->mapRect(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v1

    .line 265
    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public initializeTrackView(Landroid/graphics/RectF;Z)Z
    .locals 5
    .param p1, "rectF"    # Landroid/graphics/RectF;
    .param p2, "up"    # Z

    .prologue
    const/4 v0, 0x0

    const/high16 v4, 0x43480000    # 200.0f

    const/4 v1, 0x1

    .line 279
    if-eqz p1, :cond_3

    .line 280
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v2

    const-string v3, "t2t_times"

    invoke-virtual {v2, v3}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V

    .line 281
    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {p1, v2}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 282
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v2

    cmpg-float v2, v2, v4

    if-ltz v2, :cond_0

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v2

    cmpg-float v2, v2, v4

    if-gez v2, :cond_1

    .line 295
    :cond_0
    :goto_0
    return v0

    .line 283
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 284
    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mOldObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v2, p1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 288
    :goto_1
    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ObjectView;->setVisibility(I)V

    .line 289
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->resume()V

    .line 290
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->requestLayout()V

    .line 291
    if-eqz p2, :cond_2

    .line 292
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 293
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mHandler:Landroid/os/Handler;

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    :cond_2
    move v0, v1

    .line 295
    goto :goto_0

    .line 286
    :cond_3
    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mOldObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v2, v3}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_1
.end method

.method public isAdjusting()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 204
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTrackFailed()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 555
    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mFace:Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mFace:Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    iget v1, v1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->score:I

    if-le v0, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 503
    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_0

    .line 504
    const-string v0, "ObjectView"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDraw(), mZoomAnimaState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mPause="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/camera/ui/ObjectView;->mPause:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mObjectRect="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mFace="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mFace:Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mTrackIndicator="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getWidth="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getWidth()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", getheight="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getHeight()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mDisplayBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/ui/ObjectView;->mPause:Z

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mFace:Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    if-eqz v0, :cond_2

    .line 512
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 514
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    .line 516
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->right:F

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->left:F

    sub-float/2addr v1, v2

    neg-float v1, v1

    div-float/2addr v1, v6

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget-object v2, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v2, v3

    neg-float v2, v2

    div-float/2addr v2, v6

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->left:F

    sub-float/2addr v3, v4

    div-float/2addr v3, v6

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    iget-object v5, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->top:F

    sub-float/2addr v4, v5

    div-float/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 521
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 522
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 526
    :goto_0
    return-void

    .line 524
    :cond_2
    invoke-super {p0, p1}, Lcom/android/camera/ui/FrameView;->onDraw(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x2

    const/high16 v5, -0x40800000    # -1.0f

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 307
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 308
    .local v0, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 309
    .local v1, "y":F
    iget-boolean v4, p0, Lcom/android/camera/ui/ObjectView;->mPause:Z

    if-nez v4, :cond_1

    iget v4, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    if-nez v4, :cond_0

    invoke-direct {p0, v0, v1}, Lcom/android/camera/ui/ObjectView;->isInObjectViewArea(FF)Z

    move-result v4

    if-eqz v4, :cond_1

    :cond_0
    iget v4, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackingNum:I

    if-eqz v4, :cond_3

    :cond_1
    move v2, v3

    .line 370
    :cond_2
    :goto_0
    return v2

    .line 310
    :cond_3
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    .line 313
    :pswitch_1
    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v4, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_7

    .line 314
    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mListener:Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    if-eqz v4, :cond_6

    .line 315
    iget v4, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    if-eq v4, v9, :cond_4

    iget v4, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    if-ne v4, v8, :cond_5

    .line 317
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->clearAnimation()V

    .line 319
    :cond_5
    iput v3, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    .line 320
    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mListener:Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    invoke-interface {v4, v3}, Lcom/android/camera/ui/ObjectView$ObjectViewListener;->stopObjectTracking(Z)V

    .line 322
    :cond_6
    const/4 v4, 0x0

    invoke-virtual {p0, v4, v3}, Lcom/android/camera/ui/ObjectView;->initializeTrackView(Landroid/graphics/RectF;Z)Z

    .line 324
    :cond_7
    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v3, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 325
    invoke-direct {p0, v0, v1, v5, v5}, Lcom/android/camera/ui/ObjectView;->detectMovingStyle(FFFF)V

    .line 326
    iput v0, p0, Lcom/android/camera/ui/ObjectView;->mLastX:F

    .line 327
    iput v1, p0, Lcom/android/camera/ui/ObjectView;->mLastY:F

    goto :goto_0

    .line 331
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v4

    if-ne v4, v8, :cond_2

    .line 332
    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v4

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v5

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v6

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v7

    invoke-direct {p0, v4, v5, v6, v7}, Lcom/android/camera/ui/ObjectView;->detectMovingStyle(FFFF)V

    .line 334
    iget v4, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    const/16 v5, 0x20

    if-ne v4, v5, :cond_2

    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mListener:Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    if-eqz v4, :cond_2

    .line 335
    iget v4, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    if-eq v4, v9, :cond_8

    iget v4, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    if-ne v4, v8, :cond_9

    .line 337
    :cond_8
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->clearAnimation()V

    .line 339
    :cond_9
    iput v3, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    .line 340
    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mListener:Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    invoke-interface {v4, v3}, Lcom/android/camera/ui/ObjectView$ObjectViewListener;->stopObjectTracking(Z)V

    .line 341
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ObjectView;->moveObjectView(Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 347
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    if-ge v3, v8, :cond_2

    iget v3, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    const/16 v4, 0x20

    if-ne v3, v4, :cond_2

    .line 348
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getX(I)F

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ObjectView;->mLastX:F

    .line 349
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionIndex()I

    move-result v3

    rsub-int/lit8 v3, v3, 0x1

    invoke-virtual {p1, v3}, Landroid/view/MotionEvent;->getY(I)F

    move-result v3

    iput v3, p0, Lcom/android/camera/ui/ObjectView;->mLastY:F

    .line 350
    iget v3, p0, Lcom/android/camera/ui/ObjectView;->mLastX:F

    iget v4, p0, Lcom/android/camera/ui/ObjectView;->mLastY:F

    invoke-direct {p0, v3, v4, v5, v5}, Lcom/android/camera/ui/ObjectView;->detectMovingStyle(FFFF)V

    goto/16 :goto_0

    .line 355
    :pswitch_4
    iget v3, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    if-eqz v3, :cond_a

    .line 356
    invoke-direct {p0, p1}, Lcom/android/camera/ui/ObjectView;->moveObjectView(Landroid/view/MotionEvent;)V

    .line 358
    :cond_a
    iput v0, p0, Lcom/android/camera/ui/ObjectView;->mLastX:F

    .line 359
    iput v1, p0, Lcom/android/camera/ui/ObjectView;->mLastY:F

    goto/16 :goto_0

    .line 364
    :pswitch_5
    iput v3, p0, Lcom/android/camera/ui/ObjectView;->mMovingMode:I

    .line 365
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->invalidate()V

    .line 366
    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mHandler:Landroid/os/Handler;

    const-wide/16 v4, 0x0

    invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 311
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_5
        :pswitch_4
        :pswitch_5
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public setDisplaySize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    .line 559
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    int-to-float v1, p1

    int-to-float v2, p2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 560
    invoke-direct {p0}, Lcom/android/camera/ui/ObjectView;->setMatrix()V

    .line 561
    return-void
.end method

.method public setObject(Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;)V
    .locals 10
    .param p1, "face"    # Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    .prologue
    const/4 v5, 0x2

    const-wide v8, 0x3fd51eb851eb851fL    # 0.33

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 140
    sget-boolean v0, Lcom/android/camera/Util;->sIsDumpLog:Z

    if-eqz v0, :cond_0

    .line 141
    const-string v0, "ObjectView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "setObject(), mZoomAnimaState:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , face.rect:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , face.score:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->score:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , face.t2tStop:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->t2tStop:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , moving="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mFilter:Lcom/android/camera/ui/ObjectView$Filter;

    iget v4, v4, Lcom/android/camera/ui/ObjectView$Filter;->mCurrentValue:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , mPause="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Lcom/android/camera/ui/ObjectView;->mPause:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , visible="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getVisibility()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , getWidth()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getWidth()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,mDisplayBounds.width()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " , getHeight()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getHeight()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " ,mDisplayBounds.height()="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 148
    :cond_0
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    if-gt v0, v5, :cond_2

    .line 201
    :cond_1
    :goto_0
    return-void

    .line 151
    :cond_2
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    const/4 v3, 0x3

    if-ne v0, v3, :cond_3

    .line 152
    iget v0, p1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->score:I

    if-lt v0, v2, :cond_1

    .line 153
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v5}, Landroid/os/Handler;->removeMessages(I)V

    .line 154
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->showSuccess()V

    goto :goto_0

    .line 156
    :cond_3
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    const/4 v3, 0x5

    if-ne v0, v3, :cond_1

    iget-boolean v0, p0, Lcom/android/camera/ui/ObjectView;->mPause:Z

    if-nez v0, :cond_1

    .line 157
    iget v0, p1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->score:I

    if-ge v0, v2, :cond_d

    .line 158
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackThreshold:I

    if-nez v0, :cond_5

    .line 159
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v0, v3

    sget v3, Lcom/android/camera/ui/ObjectView;->NEAR_EDGE:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    sub-float/2addr v0, v3

    sget v3, Lcom/android/camera/ui/ObjectView;->NEAR_EDGE:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v3

    sget v3, Lcom/android/camera/ui/ObjectView;->NEAR_EDGE:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-ltz v0, :cond_4

    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v3

    sget v3, Lcom/android/camera/ui/ObjectView;->NEAR_EDGE:I

    int-to-float v3, v3

    cmpg-float v0, v0, v3

    if-gez v0, :cond_c

    .line 163
    :cond_4
    const/16 v0, 0x96

    iput v0, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackThreshold:I

    .line 168
    :cond_5
    :goto_1
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackingNum:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackingNum:I

    .line 169
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackingNum:I

    rem-int/lit8 v0, v0, 0x5

    if-eqz v0, :cond_6

    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackingNum:I

    iget v3, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackThreshold:I

    if-ne v0, v3, :cond_7

    .line 170
    :cond_6
    const-string v0, "ObjectView"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "lost "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackingNum:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " times"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 172
    :cond_7
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackThreshold:I

    iget v3, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackingNum:I

    if-gt v0, v3, :cond_8

    .line 173
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mListener:Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    invoke-interface {v0, v2}, Lcom/android/camera/ui/ObjectView$ObjectViewListener;->stopObjectTracking(Z)V

    .line 181
    :cond_8
    :goto_2
    iget-object v0, p1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-double v4, v0

    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mPreviewWidth:I

    int-to-double v6, v0

    div-double/2addr v4, v6

    cmpl-double v0, v4, v8

    if-gtz v0, :cond_9

    iget-object v0, p1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-double v4, v0

    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mPreviewHeight:I

    int-to-double v6, v0

    div-double/2addr v4, v6

    cmpl-double v0, v4, v8

    if-lez v0, :cond_e

    :cond_9
    move v0, v2

    :goto_3
    iput-boolean v0, p0, Lcom/android/camera/ui/ObjectView;->mIsBigEnoughRect:Z

    .line 184
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    cmpl-float v0, v0, v3

    if-nez v0, :cond_a

    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mDisplayBounds:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->height()F

    move-result v3

    cmpl-float v0, v0, v3

    if-eqz v0, :cond_f

    .line 185
    :cond_a
    invoke-direct {p0}, Lcom/android/camera/ui/ObjectView;->resetView()V

    .line 199
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->invalidate()V

    goto/16 :goto_0

    .line 165
    :cond_c
    const/16 v0, 0x32

    iput v0, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackThreshold:I

    goto/16 :goto_1

    .line 176
    :cond_d
    iput v1, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackThreshold:I

    .line 177
    iput v1, p0, Lcom/android/camera/ui/ObjectView;->mLostTrackingNum:I

    goto :goto_2

    :cond_e
    move v0, v1

    .line 181
    goto :goto_3

    .line 186
    :cond_f
    if-eqz p1, :cond_10

    iget v0, p1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->score:I

    if-lt v0, v2, :cond_10

    .line 187
    iput-object p1, p0, Lcom/android/camera/ui/ObjectView;->mFace:Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    .line 188
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    aget-object v0, v0, v2

    iput-object v0, p0, Lcom/android/camera/ui/ObjectView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    .line 189
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    new-instance v2, Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/android/camera/ui/ObjectView;->mFace:Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    iget-object v3, v3, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->rect:Landroid/graphics/Rect;

    invoke-direct {v2, v3}, Landroid/graphics/RectF;-><init>(Landroid/graphics/Rect;)V

    invoke-direct {p0, v2, v1}, Lcom/android/camera/ui/ObjectView;->mapRect(Landroid/graphics/RectF;Z)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 190
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mOldObjectRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mObjectRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 193
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mFilter:Lcom/android/camera/ui/ObjectView$Filter;

    iget v1, p1, Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;->t2tStop:I

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/ObjectView$Filter;->isBecomeStable(I)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 194
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mListener:Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    invoke-interface {v0}, Lcom/android/camera/ui/ObjectView$ObjectViewListener;->onObjectStable()V

    goto :goto_4

    .line 197
    :cond_10
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/ObjectView;->mFace:Lcom/android/camera/hardware/CameraHardware$CameraHardwareFace;

    goto :goto_4
.end method

.method public setObjectViewListener(Lcom/android/camera/ui/ObjectView$ObjectViewListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    .prologue
    .line 274
    iput-object p1, p0, Lcom/android/camera/ui/ObjectView;->mListener:Lcom/android/camera/ui/ObjectView$ObjectViewListener;

    .line 275
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 564
    iput p1, p0, Lcom/android/camera/ui/ObjectView;->mPreviewWidth:I

    .line 565
    iput p2, p0, Lcom/android/camera/ui/ObjectView;->mPreviewHeight:I

    .line 566
    invoke-direct {p0}, Lcom/android/camera/ui/ObjectView;->setMatrix()V

    .line 567
    return-void
.end method

.method public showFail()V
    .locals 0

    .prologue
    .line 489
    return-void
.end method

.method public showStart()V
    .locals 5

    .prologue
    const v4, 0x3f99999a    # 1.2f

    .line 466
    const-string v0, "ObjectView"

    const-string v1, "showStart()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    if-eqz v0, :cond_0

    .line 474
    :goto_0
    return-void

    .line 468
    :cond_0
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    .line 469
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/camera/ui/ObjectView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    .line 470
    invoke-direct {p0}, Lcom/android/camera/ui/ObjectView;->updateAnimateView()V

    .line 471
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ObjectView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 472
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x96

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mStartAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method public showSuccess()V
    .locals 5

    .prologue
    const v4, 0x3f333333    # 0.7f

    .line 478
    const-string v0, "ObjectView"

    const-string v1, "showSuccess()"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 479
    iget v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    .line 486
    :goto_0
    return-void

    .line 480
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/camera/ui/ObjectView;->mZoomAnimaState:I

    .line 481
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mTrackStatusIndicator:[Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    iput-object v0, p0, Lcom/android/camera/ui/ObjectView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    .line 482
    invoke-direct {p0}, Lcom/android/camera/ui/ObjectView;->updateAnimateView()V

    .line 483
    iget-object v0, p0, Lcom/android/camera/ui/ObjectView;->mTrackIndicator:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/ObjectView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 484
    invoke-virtual {p0}, Lcom/android/camera/ui/ObjectView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->withLayer()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0x50

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/ObjectView;->mEndAction:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method
