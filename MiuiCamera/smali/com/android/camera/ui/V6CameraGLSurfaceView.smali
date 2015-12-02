.class public Lcom/android/camera/ui/V6CameraGLSurfaceView;
.super Landroid/opengl/GLSurfaceView;
.source "V6CameraGLSurfaceView.java"

# interfaces
.implements Landroid/opengl/GLSurfaceView$Renderer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/ui/V6CameraGLSurfaceView$1;,
        Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;
    }
.end annotation


# instance fields
.field private final mActivity:Lcom/android/camera/ActivityBase;

.field private mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

.field private final mEglConfigChooser:Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;

.field private mFrameCount:I

.field private mFrameCountingStart:J

.field private mGL:Ljavax/microedition/khronos/opengles/GL11;

.field protected mHeight:I

.field private final mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private volatile mRenderRequested:Z

.field protected mWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 53
    invoke-direct {p0, p1, p2}, Landroid/opengl/GLSurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 32
    iput v2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mFrameCount:I

    .line 33
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mFrameCountingStart:J

    .line 41
    iput-boolean v2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderRequested:Z

    .line 42
    new-instance v0, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;-><init>(Lcom/android/camera/ui/V6CameraGLSurfaceView;Lcom/android/camera/ui/V6CameraGLSurfaceView$1;)V

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mEglConfigChooser:Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;

    .line 45
    new-instance v0, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v0}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 54
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setEGLContextClientVersion(I)V

    .line 55
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mEglConfigChooser:Lcom/android/camera/ui/V6CameraGLSurfaceView$MyEGLConfigChooser;

    invoke-virtual {p0, v0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setEGLConfigChooser(Landroid/opengl/GLSurfaceView$EGLConfigChooser;)V

    .line 56
    invoke-virtual {p0, p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setRenderer(Landroid/opengl/GLSurfaceView$Renderer;)V

    .line 57
    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setRenderMode(I)V

    .line 58
    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setFormat(I)V

    .line 59
    invoke-static {}, Lcom/android/camera/Device;->isSurfaceSizeLimited()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/16 v1, 0x2d0

    sget v2, Lcom/android/camera/Util;->sWindowHeight:I

    mul-int/lit16 v2, v2, 0x2d0

    sget v3, Lcom/android/camera/Util;->sWindowWidth:I

    div-int/2addr v2, v3

    invoke-interface {v0, v1, v2}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 63
    :cond_0
    check-cast p1, Lcom/android/camera/ActivityBase;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/ActivityBase;

    .line 64
    return-void
.end method


# virtual methods
.method public isBusy()Z
    .locals 1

    .prologue
    .line 79
    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderRequested:Z

    return v0
.end method

.method public onDrawFrame(Ljavax/microedition/khronos/opengles/GL10;)V
    .locals 2
    .param p1, "gl"    # Ljavax/microedition/khronos/opengles/GL10;

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->recycledResources()V

    .line 138
    invoke-static {}, Lcom/android/gallery3d/ui/UploadedTexture;->resetUploadLimit()V

    .line 140
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderRequested:Z

    .line 142
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 143
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mActivity:Lcom/android/camera/ActivityBase;

    invoke-virtual {v0}, Lcom/android/camera/ActivityBase;->getCameraScreenNail()Lcom/android/camera/CameraScreenNail;

    move-result-object v0

    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-virtual {v0, v1}, Lcom/android/camera/CameraScreenNail;->draw(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 146
    invoke-static {}, Lcom/android/gallery3d/ui/UploadedTexture;->uploadLimitReached()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->requestRender()V

    .line 150
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->recycledResources()V

    .line 151
    return-void
.end method

.method public onSurfaceChanged(Ljavax/microedition/khronos/opengles/GL10;II)V
    .locals 4
    .param p1, "gl1"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "width"    # I
    .param p3, "height"    # I

    .prologue
    .line 107
    const-string v1, "GLRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onSurfaceChanged: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", gl10: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 109
    const/4 v1, -0x4

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    move-object v0, p1

    .line 110
    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 111
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-ne v1, v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    .line 112
    iput p2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mWidth:I

    .line 113
    iput p3, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mHeight:I

    .line 114
    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v1, p2, p3}, Lcom/android/gallery3d/ui/GLCanvas;->setSize(II)V

    .line 115
    return-void

    .line 111
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onSurfaceCreated(Ljavax/microedition/khronos/opengles/GL10;Ljavax/microedition/khronos/egl/EGLConfig;)V
    .locals 4
    .param p1, "gl1"    # Ljavax/microedition/khronos/opengles/GL10;
    .param p2, "config"    # Ljavax/microedition/khronos/egl/EGLConfig;

    .prologue
    .line 84
    move-object v0, p1

    check-cast v0, Ljavax/microedition/khronos/opengles/GL11;

    .line 85
    .local v0, "gl":Ljavax/microedition/khronos/opengles/GL11;
    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    if-eqz v1, :cond_0

    .line 87
    const-string v1, "GLRootView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GLObject has changed from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    :cond_0
    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 91
    :try_start_0
    iput-object v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mGL:Ljavax/microedition/khronos/opengles/GL11;

    .line 92
    new-instance v1, Lcom/android/gallery3d/ui/GLCanvasImpl;

    invoke-direct {v1}, Lcom/android/gallery3d/ui/GLCanvasImpl;-><init>()V

    iput-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    .line 93
    invoke-static {}, Lcom/android/gallery3d/ui/BasicTexture;->invalidateAllTextures()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 95
    iget-object v1, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 101
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6CameraGLSurfaceView;->setRenderMode(I)V

    .line 103
    return-void

    .line 95
    :catchall_0
    move-exception v1

    iget-object v2, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v1
.end method

.method public requestRender()V
    .locals 1

    .prologue
    .line 73
    iget-boolean v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderRequested:Z

    if-eqz v0, :cond_0

    .line 76
    :goto_0
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/ui/V6CameraGLSurfaceView;->mRenderRequested:Z

    .line 75
    invoke-super {p0}, Landroid/opengl/GLSurfaceView;->requestRender()V

    goto :goto_0
.end method
