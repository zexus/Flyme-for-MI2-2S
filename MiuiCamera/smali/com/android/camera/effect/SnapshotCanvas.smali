.class public Lcom/android/camera/effect/SnapshotCanvas;
.super Ljava/lang/Object;
.source "SnapshotCanvas.java"

# interfaces
.implements Lcom/android/gallery3d/ui/GLCanvas;


# instance fields
.field private final BASIC_RENDER_INDEX:I

.field private final EFFECT_GROUP_INDEX:I

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

.field private mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

.field private mState:Lcom/android/camera/effect/GLCanvasState;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    new-instance v0, Lcom/android/gallery3d/ui/IntArray;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    .line 20
    new-instance v0, Lcom/android/gallery3d/ui/IntArray;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteBuffers:Lcom/android/gallery3d/ui/IntArray;

    .line 21
    new-instance v0, Lcom/android/gallery3d/ui/IntArray;

    invoke-direct {v0}, Lcom/android/gallery3d/ui/IntArray;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeletePrograms:Ljava/util/ArrayList;

    .line 23
    iput v3, p0, Lcom/android/camera/effect/SnapshotCanvas;->EFFECT_GROUP_INDEX:I

    .line 24
    iput v4, p0, Lcom/android/camera/effect/SnapshotCanvas;->BASIC_RENDER_INDEX:I

    .line 26
    new-instance v0, Lcom/android/camera/effect/GLCanvasState;

    invoke-direct {v0}, Lcom/android/camera/effect/GLCanvasState;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    .line 30
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v5, -0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/effect/EffectController;->getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    .line 31
    new-instance v0, Lcom/android/camera/effect/renders/RenderGroup;

    invoke-direct {v0, p0}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    iput-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    .line 32
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    iget-object v1, p0, Lcom/android/camera/effect/SnapshotCanvas;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 33
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    new-instance v1, Lcom/android/camera/effect/renders/BasicRender;

    invoke-direct {v1, p0}, Lcom/android/camera/effect/renders/BasicRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 34
    invoke-direct {p0}, Lcom/android/camera/effect/SnapshotCanvas;->initialize()V

    .line 35
    return-void
.end method

.method private initialize()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v0, 0x0

    .line 38
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 39
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/opengl/GLES20;->glClearStencil(I)V

    .line 40
    const/16 v0, 0xbe2

    invoke-static {v0}, Landroid/opengl/GLES20;->glEnable(I)V

    .line 41
    const/16 v0, 0x302

    const/16 v1, 0x303

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBlendFunc(II)V

    .line 42
    const/16 v0, 0xcf5

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 43
    const/16 v0, 0xd05

    invoke-static {v0, v2}, Landroid/opengl/GLES20;->glPixelStorei(II)V

    .line 44
    return-void
.end method


# virtual methods
.method public beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V
    .locals 1
    .param p1, "frameBuffer"    # Lcom/android/camera/effect/FrameBuffer;

    .prologue
    .line 69
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 70
    return-void
.end method

.method public clearBuffer()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 92
    invoke-static {v0, v0, v0, v0}, Landroid/opengl/GLES20;->glClearColor(FFFF)V

    .line 93
    const/16 v0, 0x4000

    invoke-static {v0}, Landroid/opengl/GLES20;->glClear(I)V

    .line 94
    return-void
.end method

.method public deleteFrameBuffer(I)V
    .locals 2
    .param p1, "frameBufferId"    # I

    .prologue
    .line 121
    iget-object v1, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

    monitor-enter v1

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/IntArray;->add(I)V

    .line 123
    monitor-exit v1

    .line 124
    return-void

    .line 123
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
    .line 128
    iget-object v1, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeletePrograms:Ljava/util/ArrayList;

    monitor-enter v1

    .line 129
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeletePrograms:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    monitor-exit v1

    .line 131
    return-void

    .line 130
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
    .line 107
    iget-object v1, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    monitor-enter v1

    .line 108
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :try_start_0
    monitor-exit v1

    .line 110
    :goto_0
    return v0

    .line 109
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    invoke-virtual {v0, p1}, Lcom/android/gallery3d/ui/IntArray;->add(I)V

    .line 110
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 111
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
    .line 99
    iget-object v1, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    monitor-enter v1

    .line 100
    :try_start_0
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->isLoaded()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    monitor-exit v1

    .line 102
    :goto_0
    return v0

    .line 101
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getId()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/gallery3d/ui/IntArray;->add(I)V

    .line 102
    const/4 v0, 0x1

    monitor-exit v1

    goto :goto_0

    .line 103
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V
    .locals 1
    .param p1, "attri"    # Lcom/android/camera/effect/draw_mode/DrawAttribute;

    .prologue
    .line 88
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 89
    return-void
.end method

.method public endBindFrameBuffer()V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0}, Lcom/android/camera/effect/renders/RenderGroup;->endBindFrameBuffer()V

    .line 75
    return-void
.end method

.method public getBasicRender()Lcom/android/camera/effect/renders/BasicRender;
    .locals 2

    .prologue
    .line 83
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/BasicRender;

    return-object v0
.end method

.method public getEffectRenderGroup()Lcom/android/camera/effect/renders/RenderGroup;
    .locals 2

    .prologue
    .line 79
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->getRender(I)Lcom/android/camera/effect/renders/Render;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/RenderGroup;

    return-object v0
.end method

.method public getState()Lcom/android/camera/effect/GLCanvasState;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    return-object v0
.end method

.method public prepareBlurRenders()V
    .locals 0

    .prologue
    .line 171
    return-void
.end method

.method public prepareEffectRenders(ZI)V
    .locals 6
    .param p1, "whole"    # Z
    .param p2, "index"    # I

    .prologue
    .line 162
    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p2}, Lcom/android/camera/effect/renders/RenderGroup;->isNeedInit(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/effect/SnapshotCanvas;->mEffectRenders:Lcom/android/camera/effect/renders/RenderGroup;

    const/4 v4, 0x1

    move-object v1, p0

    move v3, p1

    move v5, p2

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/effect/EffectController;->getEffectGroup(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/RenderGroup;ZZI)Lcom/android/camera/effect/renders/RenderGroup;

    .line 167
    :cond_0
    return-void
.end method

.method public recycledResources()V
    .locals 5

    .prologue
    .line 134
    iget-object v2, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    monitor-enter v2

    .line 135
    :try_start_0
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteTextures:Lcom/android/gallery3d/ui/IntArray;

    .line 136
    .local v0, "ids":Lcom/android/gallery3d/ui/IntArray;
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 137
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->getInternalArray()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/gallery3d/ui/GLId;->glDeleteTextures(I[II)V

    .line 138
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->clear()V

    .line 141
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteBuffers:Lcom/android/gallery3d/ui/IntArray;

    .line 142
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 143
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->getInternalArray()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/gallery3d/ui/GLId;->glDeleteBuffers(I[II)V

    .line 144
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->clear()V

    .line 147
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeleteFrameBuffers:Lcom/android/gallery3d/ui/IntArray;

    .line 148
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    if-lez v1, :cond_2

    .line 149
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->size()I

    move-result v1

    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->getInternalArray()[I

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v1, v3, v4}, Lcom/android/gallery3d/ui/GLId;->glDeleteFrameBuffers(I[II)V

    .line 150
    invoke-virtual {v0}, Lcom/android/gallery3d/ui/IntArray;->clear()V

    .line 153
    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeletePrograms:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_3

    .line 154
    iget-object v1, p0, Lcom/android/camera/effect/SnapshotCanvas;->mDeletePrograms:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-static {v1}, Landroid/opengl/GLES20;->glDeleteProgram(I)V

    goto :goto_0

    .line 156
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

    .line 157
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    .line 60
    return-void
.end method

.method public setSize(II)V
    .locals 4
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v3, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    .line 47
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setViewportSize(II)V

    .line 48
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mRenderGroup:Lcom/android/camera/effect/renders/RenderGroup;

    invoke-virtual {v0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    .line 50
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->indentityAllM()V

    .line 51
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    invoke-virtual {v0, v2}, Lcom/android/camera/effect/GLCanvasState;->setAlpha(F)V

    .line 53
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    int-to-float v1, p2

    invoke-virtual {v0, v3, v1, v3}, Lcom/android/camera/effect/GLCanvasState;->translate(FFF)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/effect/SnapshotCanvas;->mState:Lcom/android/camera/effect/GLCanvasState;

    const/high16 v1, -0x40800000    # -1.0f

    invoke-virtual {v0, v2, v1, v2}, Lcom/android/camera/effect/GLCanvasState;->scale(FFF)V

    .line 55
    return-void
.end method
