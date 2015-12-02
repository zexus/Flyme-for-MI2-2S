.class public abstract Lcom/android/camera/SurfaceTextureScreenNail;
.super Ljava/lang/Object;
.source "SurfaceTextureScreenNail.java"

# interfaces
.implements Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;
.implements Lcom/android/camera/ui/Rotatable;


# static fields
.field private static final MOVIE_SOLID_CROPPED_X:F

.field private static final MOVIE_SOLID_CROPPED_Y:F

.field private static sFrameListener:Landroid/os/HandlerThread;

.field private static sMaxHightProrityFrameCount:I


# instance fields
.field private currentFrameCount:I

.field protected mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

.field protected mBitmapTexture:Lcom/android/gallery3d/ui/BitmapTexture;

.field private mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field protected mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

.field protected mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field protected mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

.field private mHasTexture:Z

.field private mHeight:I

.field private mIsFullScreen:Z

.field protected mIsRatio16_9:Z

.field protected mModuleSwitching:Z

.field private mNeedCropped:Z

.field private mRenderHeight:I

.field private mRenderWidth:I

.field private mScaleX:F

.field private mScaleY:F

.field protected mSkipFirstFrame:Z

.field protected mSurfaceHeight:I

.field private mSurfaceTexture:Landroid/graphics/SurfaceTexture;

.field protected mSurfaceWidth:I

.field private mTransform:[F

.field private mUncroppedRenderHeight:I

.field private mUncroppedRenderWidth:I

.field private mVideoStabilizationCropped:Z

.field private mWidth:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const v1, 0x3f666666    # 0.9f

    const v2, 0x3f4ccccd    # 0.8f

    .line 43
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    sput v0, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_X:F

    .line 44
    invoke-static {}, Lcom/android/camera/Device;->isNvPlatform()Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    sput v1, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_Y:F

    .line 68
    const/16 v0, 0x8

    sput v0, Lcom/android/camera/SurfaceTextureScreenNail;->sMaxHightProrityFrameCount:I

    .line 70
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "FrameListener"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    return-void

    :cond_0
    move v0, v2

    .line 43
    goto :goto_0

    :cond_1
    move v1, v2

    .line 44
    goto :goto_1
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    new-instance v0, Lcom/android/camera/GLSurfaceStatusBar;

    invoke-direct {v0}, Lcom/android/camera/GLSurfaceStatusBar;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

    .line 59
    const/16 v0, 0x10

    new-array v0, v0, [F

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    .line 60
    iput-boolean v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 61
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 63
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 64
    iput v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    .line 69
    iput v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    .line 71
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 75
    return-void
.end method

.method private checkThreadPriority()V
    .locals 2

    .prologue
    .line 164
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    sget v1, Lcom/android/camera/SurfaceTextureScreenNail;->sMaxHightProrityFrameCount:I

    if-ne v0, v1, :cond_1

    .line 165
    const-string v0, "Camera/SurfaceTextureScreenNail"

    const-string v1, "normalHandlerCapacity:set normal"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    sget-object v0, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/Process;->setThreadPriority(II)V

    .line 167
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    .line 171
    :cond_0
    :goto_0
    return-void

    .line 168
    :cond_1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    sget v1, Lcom/android/camera/SurfaceTextureScreenNail;->sMaxHightProrityFrameCount:I

    if-ge v0, v1, :cond_0

    .line 169
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I

    goto :goto_0
.end method

.method private initializeTexture()V
    .locals 9

    .prologue
    const/16 v6, 0x15

    .line 92
    invoke-static {}, Lcom/android/camera/Device;->isSubthreadFrameListerner()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 93
    sget-object v3, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    .line 94
    sget-object v3, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->start()V

    .line 97
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v6, :cond_1

    .line 99
    :try_start_0
    const-class v3, Landroid/graphics/SurfaceTexture;

    const-string v4, "(ILandroid/os/Looper;)V"

    invoke-static {v3, v4}, Lmiui/reflect/Constructor;->of(Ljava/lang/Class;Ljava/lang/String;)Lmiui/reflect/Constructor;

    move-result-object v0

    .line 101
    .local v0, "con":Lmiui/reflect/Constructor;
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v5}, Lcom/android/gallery3d/ui/ExtTexture;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    sget-object v5, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v5}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v0, v3}, Lmiui/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/SurfaceTexture;

    iput-object v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 104
    const-string v3, "Camera/SurfaceTextureScreenNail"

    const-string v4, "fullHandlerCapacity:set urgent display"

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    sget-object v3, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v3}, Landroid/os/HandlerThread;->getThreadId()I

    move-result v3

    const/4 v4, -0x8

    invoke-static {v3, v4}, Landroid/os/Process;->setThreadPriority(II)V

    .line 106
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->currentFrameCount:I
    :try_end_0
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 114
    .end local v0    # "con":Lmiui/reflect/Constructor;
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-nez v3, :cond_2

    .line 115
    new-instance v3, Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/ExtTexture;->getId()I

    move-result v4

    invoke-direct {v3, v4}, Landroid/graphics/SurfaceTexture;-><init>(I)V

    iput-object v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 119
    :cond_2
    iget-object v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v3, v4, v5}, Landroid/graphics/SurfaceTexture;->setDefaultBufferSize(II)V

    .line 122
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v6, :cond_3

    invoke-static {}, Lcom/android/camera/Device;->isSubthreadFrameListerner()Z

    move-result v3

    if-nez v3, :cond_4

    .line 123
    :cond_3
    iget-object v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v3, p0}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 135
    :goto_1
    return-void

    .line 107
    :catch_0
    move-exception v1

    .line 108
    .local v1, "e":Lmiui/reflect/NoSuchMethodException;
    const-string v3, "Camera/SurfaceTextureScreenNail"

    const-string v4, "SurfaceTexture Constructor NoSuchMethodException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 109
    .end local v1    # "e":Lmiui/reflect/NoSuchMethodException;
    :catch_1
    move-exception v1

    .line 110
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Camera/SurfaceTextureScreenNail"

    const-string v4, "SurfaceTexture Constructor IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 126
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    :try_start_1
    const-class v3, Landroid/graphics/SurfaceTexture;

    const-string v4, "setOnFrameAvailableListener"

    const-string v5, "(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;Landroid/os/Handler;)V"

    invoke-static {v3, v4, v5}, Lmiui/reflect/Method;->of(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;)Lmiui/reflect/Method;

    move-result-object v2

    .line 128
    .local v2, "m":Lmiui/reflect/Method;
    const-class v3, Landroid/graphics/SurfaceTexture;

    iget-object v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p0, v5, v6

    const/4 v6, 0x1

    new-instance v7, Landroid/os/Handler;

    sget-object v8, Lcom/android/camera/SurfaceTextureScreenNail;->sFrameListener:Landroid/os/HandlerThread;

    invoke-virtual {v8}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    aput-object v7, v5, v6

    invoke-virtual {v2, v3, v4, v5}, Lmiui/reflect/Method;->invoke(Ljava/lang/Class;Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_1
    .catch Lmiui/reflect/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 129
    .end local v2    # "m":Lmiui/reflect/Method;
    :catch_2
    move-exception v1

    .line 130
    .local v1, "e":Lmiui/reflect/NoSuchMethodException;
    const-string v3, "Camera/SurfaceTextureScreenNail"

    const-string v4, "SurfaceTexture setOnFrameAvailableListener NoSuchMethodException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 131
    .end local v1    # "e":Lmiui/reflect/NoSuchMethodException;
    :catch_3
    move-exception v1

    .line 132
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    const-string v3, "Camera/SurfaceTextureScreenNail"

    const-string v4, "SurfaceTexture setOnFrameAvailableListener IllegalArgumentException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private updateRenderSize()V
    .locals 2

    .prologue
    .line 248
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    .line 249
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    .line 250
    return-void
.end method


# virtual methods
.method public acquireSurfaceTexture()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 78
    new-instance v0, Lcom/android/gallery3d/ui/ExtTexture;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/ExtTexture;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 79
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/gallery3d/ui/ExtTexture;->setSize(II)V

    .line 80
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->initializeTexture()V

    .line 81
    new-instance v0, Lcom/android/gallery3d/ui/RawTexture;

    const/16 v1, 0x2d0

    iget v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    mul-int/lit16 v2, v2, 0x2d0

    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    div-int/2addr v2, v3

    invoke-direct {v0, v1, v2, v4}, Lcom/android/gallery3d/ui/RawTexture;-><init>(IIZ)V

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 83
    monitor-enter p0

    .line 84
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mModuleSwitching:Z

    .line 86
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    .line 87
    monitor-exit p0

    .line 88
    return-void

    .line 87
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 6
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;

    .prologue
    const/4 v2, 0x0

    .line 271
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mModuleSwitching:Z

    if-eqz v0, :cond_2

    .line 272
    :cond_0
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    if-eqz v0, :cond_1

    .line 273
    iput-boolean v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSkipFirstFrame:Z

    .line 274
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 285
    :cond_1
    :goto_0
    return-void

    .line 279
    :cond_2
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->clearBuffer()V

    .line 280
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    if-eqz v0, :cond_3

    .line 281
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0

    .line 283
    :cond_3
    iget v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceWidth:I

    iget v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceHeight:I

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/SurfaceTextureScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V

    goto :goto_0
.end method

.method public draw(Lcom/android/gallery3d/ui/GLCanvas;IIII)V
    .locals 7
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "width"    # I
    .param p5, "height"    # I

    .prologue
    .line 289
    monitor-enter p0

    .line 290
    :try_start_0
    iget-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    if-nez v0, :cond_0

    monitor-exit p0

    .line 301
    :goto_0
    return-void

    .line 291
    :cond_0
    invoke-static {}, Lcom/android/camera/Device;->isSubthreadFrameListerner()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->checkThreadPriority()V

    .line 292
    :cond_1
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    iget v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    invoke-interface {p1, v0, v1}, Lcom/android/gallery3d/ui/GLCanvas;->setPreviewSize(II)V

    .line 293
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->updateTexImage()V

    .line 294
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->getTransformMatrix([F)V

    .line 295
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 296
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    invoke-virtual {p0, v0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateTransformMatrix([F)V

    .line 297
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mDrawAttribute:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mTransform:[F

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v0

    invoke-interface {p1, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 298
    invoke-interface {p1}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 300
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 267
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    return v0
.end method

.method public getRenderHeight()I
    .locals 1

    .prologue
    .line 257
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderHeight:I

    return v0
.end method

.method public getRenderWidth()I
    .locals 1

    .prologue
    .line 253
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mUncroppedRenderWidth:I

    return v0
.end method

.method public getSurfaceTexture()Landroid/graphics/SurfaceTexture;
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 262
    iget v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    return v0
.end method

.method public abstract releaseBitmapIfNeeded()V
.end method

.method public releaseSurfaceTexture()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 142
    monitor-enter p0

    .line 143
    const/4 v0, 0x0

    :try_start_0
    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHasTexture:Z

    .line 144
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    if-eqz v0, :cond_0

    .line 146
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/ExtTexture;->recycle()V

    .line 147
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    .line 149
    :cond_0
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_1

    .line 150
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0}, Landroid/graphics/SurfaceTexture;->release()V

    .line 151
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    invoke-virtual {v0, v1}, Landroid/graphics/SurfaceTexture;->setOnFrameAvailableListener(Landroid/graphics/SurfaceTexture$OnFrameAvailableListener;)V

    .line 152
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mSurfaceTexture:Landroid/graphics/SurfaceTexture;

    .line 154
    :cond_1
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    if-eqz v0, :cond_2

    .line 155
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/RawTexture;->recycle()V

    .line 156
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mAnimTexture:Lcom/android/gallery3d/ui/RawTexture;

    .line 158
    :cond_2
    iput-object v1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 159
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

    invoke-virtual {v0}, Lcom/android/camera/GLSurfaceStatusBar;->release()V

    .line 160
    invoke-virtual {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->releaseBitmapIfNeeded()V

    .line 161
    return-void

    .line 144
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public setOrientation(IZ)V
    .locals 1
    .param p1, "orientation"    # I
    .param p2, "animation"    # Z

    .prologue
    .line 309
    iget-object v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mGLSurfaceStatusBar:Lcom/android/camera/GLSurfaceStatusBar;

    invoke-virtual {v0, p1}, Lcom/android/camera/GLSurfaceStatusBar;->setOrientation(I)V

    .line 310
    return-void
.end method

.method public setRenderSize(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 242
    iput p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderWidth:I

    .line 243
    iput p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mRenderHeight:I

    .line 244
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateRenderSize()V

    .line 245
    return-void
.end method

.method public setSize(II)V
    .locals 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/high16 v8, 0x41100000    # 9.0f

    const/high16 v4, 0x3f800000    # 1.0f

    const/high16 v7, 0x3f400000    # 0.75f

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 174
    if-le p1, p2, :cond_0

    .line 175
    move v2, p1

    .line 176
    .local v2, "tmp":I
    move p1, p2

    .line 177
    move p2, v2

    .line 179
    .end local v2    # "tmp":I
    :cond_0
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->isNearRatio16_9(II)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 180
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 181
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 182
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->isAspectRatio16_9(II)Z

    move-result v3

    if-nez v3, :cond_3

    .line 183
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 184
    mul-int/lit8 v3, p1, 0x10

    mul-int/lit8 v4, p2, 0x9

    if-le v3, v4, :cond_2

    .line 185
    move v1, p1

    .line 186
    .local v1, "oldWidth":I
    int-to-float v3, p2

    mul-float/2addr v3, v8

    const/high16 v4, 0x41800000    # 16.0f

    div-float/2addr v3, v4

    float-to-int p1, v3

    .line 187
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 198
    .end local v1    # "oldWidth":I
    :goto_0
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 199
    iput-boolean v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 200
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 201
    int-to-float v3, p2

    mul-float/2addr v3, v7

    float-to-int p2, v3

    .line 202
    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    mul-float/2addr v3, v7

    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    .line 236
    :cond_1
    :goto_1
    iput p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mWidth:I

    .line 237
    iput p2, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mHeight:I

    .line 238
    invoke-direct {p0}, Lcom/android/camera/SurfaceTextureScreenNail;->updateRenderSize()V

    .line 239
    return-void

    .line 189
    :cond_2
    move v0, p2

    .line 190
    .local v0, "oldHeight":I
    int-to-float v3, p1

    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, v8

    float-to-int p2, v3

    .line 191
    int-to-float v3, p2

    int-to-float v4, v0

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_0

    .line 194
    .end local v0    # "oldHeight":I
    :cond_3
    iput-boolean v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 195
    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 196
    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_0

    .line 205
    :cond_4
    iput-boolean v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 206
    iput-boolean v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 207
    invoke-static {p1, p2}, Lcom/android/camera/CameraSettings;->isAspectRatio4_3(II)Z

    move-result v3

    if-nez v3, :cond_7

    .line 208
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 209
    mul-int/lit8 v3, p1, 0x4

    mul-int/lit8 v4, p2, 0x3

    if-le v3, v4, :cond_6

    .line 210
    move v1, p1

    .line 211
    .restart local v1    # "oldWidth":I
    int-to-float v3, p2

    mul-float/2addr v3, v7

    float-to-int p1, v3

    .line 212
    int-to-float v3, p1

    int-to-float v4, v1

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 224
    .end local v1    # "oldWidth":I
    :goto_2
    sget-boolean v3, Lcom/android/camera/CameraSettings;->sCroppedIfNeeded:Z

    if-eqz v3, :cond_5

    .line 225
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    .line 226
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 227
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsRatio16_9:Z

    .line 228
    int-to-float v3, p1

    const/high16 v4, 0x41800000    # 16.0f

    mul-float/2addr v3, v4

    div-float/2addr v3, v8

    float-to-int p2, v3

    .line 229
    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    mul-float/2addr v3, v7

    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 232
    :cond_5
    invoke-static {}, Lcom/android/camera/Device;->isPad()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 233
    iput-boolean v5, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mIsFullScreen:Z

    goto :goto_1

    .line 214
    :cond_6
    move v0, p2

    .line 215
    .restart local v0    # "oldHeight":I
    int-to-float v3, p1

    const/high16 v4, 0x40800000    # 4.0f

    mul-float/2addr v3, v4

    const/high16 v4, 0x40400000    # 3.0f

    div-float/2addr v3, v4

    float-to-int p2, v3

    .line 216
    int-to-float v3, p2

    int-to-float v4, v0

    div-float/2addr v3, v4

    iput v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_2

    .line 219
    .end local v0    # "oldHeight":I
    :cond_7
    iput-boolean v6, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    .line 220
    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    .line 221
    iput v4, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    goto :goto_2
.end method

.method public setVideoStabilizationCropped(Z)V
    .locals 1
    .param p1, "cropped"    # Z

    .prologue
    .line 313
    invoke-static {}, Lcom/android/camera/Device;->isSupportedMovieSolid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 314
    iput-boolean p1, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoStabilizationCropped:Z

    .line 318
    :goto_0
    return-void

    .line 316
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoStabilizationCropped:Z

    goto :goto_0
.end method

.method protected updateTransformMatrix([F)V
    .locals 8
    .param p1, "matrix"    # [F

    .prologue
    const/high16 v7, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    const/high16 v5, -0x41000000    # -0.5f

    const/4 v4, 0x0

    .line 321
    const/high16 v1, 0x3f800000    # 1.0f

    .line 322
    .local v1, "scaleX":F
    const/high16 v2, 0x3f800000    # 1.0f

    .line 323
    .local v2, "scaleY":F
    const/4 v0, 0x0

    .line 324
    .local v0, "change":Z
    iget-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mVideoStabilizationCropped:Z

    if-eqz v3, :cond_0

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isVideoModule()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 325
    sget v3, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_X:F

    mul-float/2addr v1, v3

    .line 326
    sget v3, Lcom/android/camera/SurfaceTextureScreenNail;->MOVIE_SOLID_CROPPED_Y:F

    mul-float/2addr v2, v3

    .line 327
    const/4 v0, 0x1

    .line 329
    :cond_0
    iget-boolean v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mNeedCropped:Z

    if-eqz v3, :cond_1

    .line 330
    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleX:F

    mul-float/2addr v1, v3

    .line 331
    iget v3, p0, Lcom/android/camera/SurfaceTextureScreenNail;->mScaleY:F

    mul-float/2addr v2, v3

    .line 332
    const/4 v0, 0x1

    .line 334
    :cond_1
    if-eqz v0, :cond_2

    .line 335
    invoke-static {p1, v4, v7, v7, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 336
    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {p1, v4, v1, v2, v3}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 337
    invoke-static {p1, v4, v5, v5, v6}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 339
    :cond_2
    return-void
.end method
