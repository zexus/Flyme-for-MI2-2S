.class public Lcom/android/gallery3d/ui/GLCanvasImpl;
.super Ljava/lang/Object;
.source "GLCanvasImpl.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLCanvas;


# static fields
.field private static final PRELOAD_UPPER_BOUND:I

.field public static sMaxTextureSize:I


# instance fields
.field private final mDeleteBuffers:Lcom/android/gallery3d/ui/IntArray;

.field private final mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

.field private final mDeletePrograms:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

.field private mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

.field private mPreloadedRenders:I

.field private mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

.field private mState:Lcom/android/camera/effect/GLCanvasState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 40
    invoke-static {}, Lcom/android/camera/Device;->isSupportedTiltShift()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    add-int/lit8 v3, v0, 0x11

    invoke-static {}, Lcom/android/camera/Device;->isSupportedFishEyeMode()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x3

    :goto_1
    add-int/2addr v0, v3

    invoke-static {}, Lcom/android/camera/Device;->isSupportedPeakingMF()Z

    move-result v3

    if-eqz v3, :cond_2

    :goto_2
    add-int/2addr v0, v1

    sput v0, Lcom/android/gallery3d/ui/GLCanvasImpl;->PRELOAD_UPPER_BOUND:I

    .line 44
    const/16 v0, 0x1000

    sput v0, Lcom/android/gallery3d/ui/GLCanvasImpl;->sMaxTextureSize:I

    return-void

    :cond_0
    move v0, v2

    .line 40
    goto :goto_0

    :cond_1
    move v0, v2

    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    new-instance v0, Lcom/android/gallery3d/ui/IntArray;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    .line 34
    new-instance v0, Lcom/android/gallery3d/ui/IntArray;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteBuffers:Lcom/android/gallery3d/ui/IntArray;

    .line 35
    new-instance v0, Lcom/android/gallery3d/ui/IntArray;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeletePrograms:Ljava/util/ArrayList;

    .line 45
    new-instance v0, Lcom/android/camera/effect/GLCanvasState;

    invoke-direct {v0}, Lcom/android/camera/effect/GLCanvasState;-><init>()V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mState:Lcom/android/camera/effect/GLCanvasState;

    .line 48
    iput v3, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mPreloadedRenders:I

    .line 51
    const/4 v0, 0x1

    new-array v6, v0, [I

    .line 52
    .local v6, "size":[I
    const/16 v0, 0xd33

    invoke-static {v0, v6, v3}, Landroid/opengl/GLES20;->glGetIntegerv(I[II)V

    .line 53
    aget v0, v6, v3

    sput v0, Lcom/android/gallery3d/ui/GLCanvasImpl;->sMaxTextureSize:I

    .line 55
    new-instance v0, Lcom/android/camera/effect/renders/RenderGroup;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    .line 56
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, -0x1

    move-object v1, p0

    move v4, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/effect/EffectController;->getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    .line 57
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    new-instance v1, Lcom/android/camera/effect/renders/EffectRenderGroup;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/renders/EffectRenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 58
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    new-instance v1, Lcom/android/camera/effect/renders/BasicRender;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/renders/BasicRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 59
    invoke-direct {p0}, Lcom/android/gallery3d/ui/GLCanvasImpl;->initialize()V

    .line 60
    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 63
    const/16 v0, 0xbd0

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 64
    invoke-static {v1, v1, v1, v1}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 65
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glClearStencil(I)V

    .line 66
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {v0}, Landroid/opengl/GLES20;->glLineWidth(F)V

    .line 67
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 68
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 69
    const/16 v0, 0xcf5

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 70
    const/16 v0, 0xd05

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 71
    return-void
.end method


# virtual methods
.method public beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V
    .locals 1
    .param p1, "frameBuffer"    # Lcom/android/camera/effect/FrameBuffer;

    .prologue
    .line 98
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 99
    return-void
.end method

.method public clearBuffer()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 122
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 123
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 124
    return-void
.end method

.method public deleteFrameBuffer(I)V
    .locals 2
    .param p1, "frameBufferId"    # I

    .prologue
    .line 149
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

    monitor-enter v1

    .line 150
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/IntArray;->add(I)V

    .line 151
    monitor-exit v1

    .line 152
    return-void

    .line 151
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteProgram(I)V
    .locals 3
    .param p1, "programId"    # I

    .prologue
    .line 156
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeletePrograms:Ljava/util/ArrayList;

    monitor-enter v1

    .line 157
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeletePrograms:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 158
    monitor-exit v1

    .line 159
    return-void

    .line 158
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteTexture(I)Z
    .locals 2
    .param p1, "textureId"    # I

    .prologue
    .line 135
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    monitor-enter v1

    .line 136
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    monitor-exit v1

    .line 138
    :goto_0
    return v0

    .line 137
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/IntArray;->add(I)V

    .line 138
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 139
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public deleteTexture(Lcom/android/gallery3d/ui/BasicTexture;)Z
    .locals 3
    .param p1, "t"    # Lcom/android/gallery3d/ui/BasicTexture;

    .prologue
    .line 127
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    monitor-enter v1

    .line 128
    :try_start_0
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 130
    :goto_0
    return v0

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    iget v2, p1, Lcom/android/gallery3d/ui/BasicTexture;->mId:I

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/IntArray;->add(I)V

    .line 130
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 131
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 2
    .param p1, "attri"    # Lcom/android/camera/effect/draw_mode/DrawAttribute;

    .prologue
    .line 114
    iget v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mPreloadedRenders:I

    sget v1, Lcom/android/gallery3d/ui/GLCanvasImpl;->PRELOAD_UPPER_BOUND:I

    if-ge v0, v1, :cond_0

    .line 115
    const/4 v0, 0x0

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/gallery3d/ui/GLCanvasImpl;->prepareEffectRenders(ZI)V

    .line 116
    iget v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mPreloadedRenders:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mPreloadedRenders:I

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 119
    return-void
.end method

.method public endBindFrameBuffer()V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->endBindFrameBuffer()V

    .line 104
    return-void
.end method

.method public getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    return-object v0
.end method

.method public getState()Lcom/android/camera/effect/GLCanvasState;
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mState:Lcom/android/camera/effect/GLCanvasState;

    return-object v0
.end method

.method public prepareBlurRenders()V
    .locals 3

    .prologue
    const/16 v2, 0xc

    .line 197
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    if-nez v0, :cond_0

    .line 199
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v2}, Lcom/android/gallery3d/ui/GLCanvasImpl;->prepareEffectRenders(ZI)V

    .line 201
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v1, v2}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 203
    :cond_1
    return-void
.end method

.method public prepareEffectRenders(ZI)V
    .locals 6
    .param p1, "whole"    # Z
    .param p2, "index"    # I

    .prologue
    .line 190
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p2}, Lcom/android/camera/effect/renders/RenderGroup;->isNeedInit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 191
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    const/4 v4, 0x0

    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/effect/EffectController;->getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    .line 193
    :cond_0
    return-void
.end method

.method public recycledResources()V
    .locals 5

    .prologue
    .line 162
    iget-object v2, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    monitor-enter v2

    .line 163
    :try_start_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    .line 164
    .local v0, "ids":Lcom/android/gallery3d/ui/IntArray;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 165
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->getInternalArray()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/gallery3d/ui/GLId;->glDeleteTextures(I[II)V

    .line 166
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->clear()V

    .line 169
    :cond_0
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteBuffers:Lcom/android/gallery3d/ui/IntArray;

    .line 170
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 171
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->getInternalArray()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/gallery3d/ui/GLId;->glDeleteBuffers(I[II)V

    .line 172
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->clear()V

    .line 175
    :cond_1
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

    .line 176
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 177
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->getInternalArray()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/gallery3d/ui/GLId;->glDeleteFrameBuffers(I[II)V

    .line 178
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->clear()V

    .line 181
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeletePrograms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 182
    iget-object v1, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mDeletePrograms:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    .line 184
    .end local v0    # "ids":Lcom/android/gallery3d/ui/IntArray;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .restart local v0    # "ids":Lcom/android/gallery3d/ui/IntArray;
    :cond_3
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 185
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    .line 89
    return-void
.end method

.method public setSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 74
    if-ltz p1, :cond_0

    if-ltz p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/android/gallery3d/ui/Utils;->assertTrue(Z)V

    .line 76
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setViewportSize(II)V

    .line 77
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    .line 78
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mState:Lcom/android/camera/effect/GLCanvasState;

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->indentityAllM()V

    .line 79
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mState:Lcom/android/camera/effect/GLCanvasState;

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    .line 81
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mState:Lcom/android/camera/effect/GLCanvasState;

    int-to-float v1, p2

    invoke-virtual {v0, v3, v1, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 82
    iget-object v0, p0, Lcom/android/gallery3d/ui/GLCanvasImpl;->mState:Lcom/android/camera/effect/GLCanvasState;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 83
    return-void

    .line 74
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
