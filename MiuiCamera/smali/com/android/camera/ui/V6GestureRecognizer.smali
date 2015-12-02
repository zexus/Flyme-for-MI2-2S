.class public Lcom/android/camera/ui/V6GestureRecognizer;
.super Ljava/lang/Object;
.source "V6GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6GestureRecognizer$1;,
        Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;,
        Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;,
        Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;,
        Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;
    }
.end annotation


# static fields
.field public static final GESTURE_DETECT_DISTANCE:I

.field public static final SWITCH_CAMERA_IGNORE_DISTANCE:I

.field private static sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;


# instance fields
.field private final mActivity:Lcom/android/camera/Camera;

.field private final mCameraGestureDetector:Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

.field private mEdgeGesture:I

.field private final mEdgeGestureDetector:Lcom/android/camera/ui/EdgeGestureDetector;

.field private mGesture:I

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mMaxVelocity:I

.field private mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

.field private mMultiTouch:Z

.field private final mScaleDetector:Landroid/view/ScaleGestureDetector;

.field private mSwitchGestureEnable:Z

.field private mTouchDown:Z

.field private mVelocityTracker:Landroid/view/VelocityTracker;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const/high16 v0, 0x42480000    # 50.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6GestureRecognizer;->GESTURE_DETECT_DISTANCE:I

    .line 36
    const/high16 v0, 0x41f00000    # 30.0f

    invoke-static {v0}, Lcom/android/camera/Util;->dpToPixel(F)I

    move-result v0

    sput v0, Lcom/android/camera/ui/V6GestureRecognizer;->SWITCH_CAMERA_IGNORE_DISTANCE:I

    return-void
.end method

.method private constructor <init>(Lcom/android/camera/ActivityBase;)V
    .locals 4
    .param p1, "activity"    # Lcom/android/camera/ActivityBase;

    .prologue
    const/4 v0, 0x0

    const/4 v3, 0x0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    .line 40
    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mEdgeGesture:I

    move-object v0, p1

    .line 55
    check-cast v0, Lcom/android/camera/Camera;

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    .line 56
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$1;)V

    const/4 v2, 0x1

    invoke-direct {v0, p1, v1, v3, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;Landroid/os/Handler;Z)V

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    .line 57
    new-instance v0, Lcom/android/camera/ui/EdgeGestureDetector;

    new-instance v1, Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/ui/V6GestureRecognizer$MyEdgeGestureListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$1;)V

    invoke-direct {v0, v1}, Lcom/android/camera/ui/EdgeGestureDetector;-><init>(Lcom/android/camera/ui/EdgeGestureDetector$EdgeGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mEdgeGestureDetector:Lcom/android/camera/ui/EdgeGestureDetector;

    .line 58
    new-instance v0, Landroid/view/ScaleGestureDetector;

    new-instance v1, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;

    invoke-direct {v1, p0, v3}, Lcom/android/camera/ui/V6GestureRecognizer$MyScaleListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$1;)V

    invoke-direct {v0, p1, v1}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    .line 59
    invoke-direct {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    .line 60
    new-instance v0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCameraGestureDetector:Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

    .line 61
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v0

    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mMaxVelocity:I

    .line 62
    return-void
.end method

.method static synthetic access$1000(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/MessageDispacher;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6GestureRecognizer;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/camera/ui/V6GestureRecognizer;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6GestureRecognizer;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->clearVelocityTracker()V

    return-void
.end method

.method static synthetic access$1200(Lcom/android/camera/ui/V6GestureRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6GestureRecognizer;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mSwitchGestureEnable:Z

    return v0
.end method

.method static synthetic access$1300(Lcom/android/camera/ui/V6GestureRecognizer;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6GestureRecognizer;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mMultiTouch:Z

    return v0
.end method

.method static synthetic access$300(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6GestureRecognizer;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/camera/ui/V6GestureRecognizer;Landroid/view/MotionEvent;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/ui/V6GestureRecognizer;
    .param p1, "x1"    # Landroid/view/MotionEvent;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->acquireVelocityTracker(Landroid/view/MotionEvent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/ui/V6GestureRecognizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6GestureRecognizer;

    .prologue
    .line 19
    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    return v0
.end method

.method static synthetic access$512(Lcom/android/camera/ui/V6GestureRecognizer;I)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6GestureRecognizer;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    return v0
.end method

.method static synthetic access$600(Lcom/android/camera/ui/V6GestureRecognizer;IIII)Landroid/graphics/Point;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6GestureRecognizer;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 19
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/camera/ui/V6GestureRecognizer;->getMoveVector(IIII)Landroid/graphics/Point;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6GestureRecognizer;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->couldNotifyGesture(Z)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/UIController;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6GestureRecognizer;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/camera/ui/V6GestureRecognizer;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/ui/V6GestureRecognizer;

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->computeVelocity()I

    move-result v0

    return v0
.end method

.method private acquireVelocityTracker(Landroid/view/MotionEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 416
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v0, :cond_0

    .line 417
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 419
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 420
    return-void
.end method

.method private checkControlView(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v3, 0x0

    .line 132
    invoke-direct {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 133
    invoke-direct {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getFocusView()Lcom/android/camera/ui/FocusView;

    move-result-object v2

    .line 134
    .local v2, "focusView":Lcom/android/camera/ui/FocusView;
    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->isEvAdjusted()Z

    move-result v0

    .line 135
    .local v0, "adjustEv":Z
    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-virtual {v2, p1}, Lcom/android/camera/ui/FocusView;->onViewTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 136
    invoke-virtual {v2}, Lcom/android/camera/ui/FocusView;->isEvTouchDown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 137
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    add-int/lit8 v4, v4, 0x7

    iput v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    .line 159
    .end local v0    # "adjustEv":Z
    .end local v2    # "focusView":Lcom/android/camera/ui/FocusView;
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result v4

    if-nez v4, :cond_1

    const/4 v3, 0x1

    :cond_1
    return v3

    .line 138
    .restart local v0    # "adjustEv":Z
    .restart local v2    # "focusView":Lcom/android/camera/ui/FocusView;
    :cond_2
    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v4

    const/4 v5, 0x7

    if-ne v4, v5, :cond_0

    .line 141
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/V6GestureRecognizer;->setGesture(I)V

    goto :goto_0

    .line 145
    :cond_3
    invoke-direct {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v1

    .line 146
    .local v1, "cropVew":Lcom/android/camera/ui/V6EffectCropView;
    invoke-virtual {v1}, Lcom/android/camera/ui/V6EffectCropView;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 147
    invoke-virtual {v1, p1}, Lcom/android/camera/ui/V6EffectCropView;->onViewTouchEvent(Landroid/view/MotionEvent;)Z

    .line 148
    invoke-virtual {v1}, Lcom/android/camera/ui/V6EffectCropView;->isMovingEdges()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 149
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result v4

    if-eqz v4, :cond_0

    iget v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    add-int/lit8 v4, v4, 0x6

    iput v4, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    goto :goto_0

    .line 151
    :cond_4
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_0

    .line 154
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/V6GestureRecognizer;->setGesture(I)V

    goto :goto_0
.end method

.method private clearVelocityTracker()V
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 424
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 426
    :cond_0
    return-void
.end method

.method private computeVelocity()I
    .locals 3

    .prologue
    .line 430
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mVelocityTracker:Landroid/view/VelocityTracker;

    const/16 v1, 0x96

    iget v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mMaxVelocity:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 432
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    float-to-int v0, v0

    .line 434
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private couldNotifyGesture(Z)Z
    .locals 1
    .param p1, "isEdge"    # Z

    .prologue
    .line 277
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/camera/module/Module;->IsIgnoreTouchEvent()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Lcom/android/camera/ActivityBase;)Lcom/android/camera/ui/V6GestureRecognizer;
    .locals 2
    .param p0, "activity"    # Lcom/android/camera/ActivityBase;

    .prologue
    .line 65
    const-class v1, Lcom/android/camera/ui/V6GestureRecognizer;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    iget-object v0, v0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    if-eq p0, v0, :cond_1

    .line 66
    :cond_0
    new-instance v0, Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-direct {v0, p0}, Lcom/android/camera/ui/V6GestureRecognizer;-><init>(Lcom/android/camera/ActivityBase;)V

    sput-object v0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;

    .line 68
    :cond_1
    sget-object v0, Lcom/android/camera/ui/V6GestureRecognizer;->sV6GestureRecognizer:Lcom/android/camera/ui/V6GestureRecognizer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 65
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getMoveVector(IIII)Landroid/graphics/Point;
    .locals 2
    .param p1, "e1x"    # I
    .param p2, "e1y"    # I
    .param p3, "e2x"    # I
    .param p4, "e2y"    # I

    .prologue
    .line 252
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 257
    .local v0, "vector":Landroid/graphics/Point;
    sub-int v1, p1, p3

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 258
    sub-int v1, p2, p4

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 273
    return-object v0
.end method

.method private getUIController()Lcom/android/camera/ui/UIController;
    .locals 1

    .prologue
    .line 72
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getUIController()Lcom/android/camera/ui/UIController;

    move-result-object v0

    return-object v0
.end method

.method private isGestureDetecting(Z)Z
    .locals 1
    .param p1, "isEdge"    # Z

    .prologue
    .line 374
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mEdgeGesture:I

    :goto_0
    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_0
    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public static needToHandleGesture(I)Z
    .locals 1
    .param p0, "gesture"    # I

    .prologue
    .line 76
    if-lez p0, :cond_0

    const/16 v0, 0x12c

    if-ge p0, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private releaseVelocityTracker()V
    .locals 1

    .prologue
    .line 438
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-eqz v0, :cond_0

    .line 439
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    .line 440
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->recycle()V

    .line 441
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 443
    :cond_0
    return-void
.end method


# virtual methods
.method public getCurrentGesture()I
    .locals 1

    .prologue
    .line 386
    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    rem-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public getGestureOrientation()I
    .locals 1

    .prologue
    .line 382
    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    return v0
.end method

.method public isGestureDetecting()Z
    .locals 1

    .prologue
    .line 378
    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    rem-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 446
    invoke-direct {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->releaseVelocityTracker()V

    .line 447
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x3

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 86
    const-string v3, "CameraGestureRecognizer"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onTouchEvent mGesture="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " action="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_0

    .line 91
    iput v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    .line 97
    :cond_0
    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;

    invoke-virtual {v3}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v3

    invoke-interface {v3}, Lcom/android/camera/module/Module;->IsIgnoreTouchEvent()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v1, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v6, :cond_2

    .line 128
    :cond_1
    :goto_0
    return v2

    .line 102
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_7

    .line 103
    iput-boolean v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mTouchDown:Z

    .line 111
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->checkControlView(Landroid/view/MotionEvent;)Z

    .line 113
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-nez v3, :cond_9

    .line 114
    iput-boolean v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mMultiTouch:Z

    .line 118
    :cond_4
    :goto_2
    const-string v3, "CameraGestureRecognizer"

    const-string v4, "set to detector"

    invoke-static {v3, v4}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mCameraGestureDetector:Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;

    invoke-virtual {v3, p1}, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)V

    .line 120
    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 121
    iget-object v3, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mScaleDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v3, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 123
    invoke-virtual {p0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result v3

    if-nez v3, :cond_a

    move v0, v1

    .line 124
    .local v0, "result":Z
    :goto_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v3

    if-eq v3, v1, :cond_5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-ne v1, v6, :cond_6

    .line 126
    :cond_5
    iput v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    :cond_6
    move v2, v0

    .line 128
    goto :goto_0

    .line 104
    .end local v0    # "result":Z
    :cond_7
    iget-boolean v3, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mTouchDown:Z

    if-eqz v3, :cond_1

    .line 106
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-eq v3, v6, :cond_8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    if-ne v3, v1, :cond_3

    .line 108
    :cond_8
    iput-boolean v2, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mTouchDown:Z

    goto :goto_1

    .line 115
    :cond_9
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_4

    .line 116
    iput-boolean v1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mMultiTouch:Z

    goto :goto_2

    :cond_a
    move v0, v2

    .line 123
    goto :goto_3
.end method

.method public setGesture(I)V
    .locals 1
    .param p1, "gesture"    # I

    .prologue
    .line 163
    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    div-int/lit8 v0, v0, 0x64

    mul-int/lit8 v0, v0, 0x64

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I

    .line 164
    return-void
.end method

.method public setSwitchPageEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 167
    iput-boolean p1, p0, Lcom/android/camera/ui/V6GestureRecognizer;->mSwitchGestureEnable:Z

    .line 168
    return-void
.end method
