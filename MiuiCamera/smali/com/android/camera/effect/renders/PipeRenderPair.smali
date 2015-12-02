.class public final Lcom/android/camera/effect/renders/PipeRenderPair;
.super Lcom/android/camera/effect/renders/RenderGroup;
.source "PipeRenderPair.java"


# instance fields
.field private mBasicTexureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

.field private mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field private mBufferHeight:I

.field private mBufferWidth:I

.field private mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

.field private mFirstRender:Lcom/android/camera/effect/renders/Render;

.field private mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field private mFrameBuffers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/FrameBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

.field private mSecondRender:Lcom/android/camera/effect/renders/Render;

.field private mTextureFilled:Z

.field private mUseMiddleBuffer:Z


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 3
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 35
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 22
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 23
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTexureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    .line 26
    iput-boolean v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    .line 27
    iput v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 28
    iput v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    .line 30
    iput-boolean v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    .line 36
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;Z)V
    .locals 3
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "first"    # Lcom/android/camera/effect/renders/Render;
    .param p3, "second"    # Lcom/android/camera/effect/renders/Render;
    .param p4, "useMiddleBuffer"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 39
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 22
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 23
    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    invoke-direct {v0}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTexureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 25
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    .line 26
    iput-boolean v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    .line 27
    iput v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 28
    iput v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    .line 30
    iput-boolean v2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    .line 40
    invoke-virtual {p0, p2, p3}, Lcom/android/camera/effect/renders/PipeRenderPair;->setRenderPairs(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;)V

    .line 41
    iput-boolean p4, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    .line 42
    return-void
.end method

.method private getEffectBufferRatio()I
    .locals 1

    .prologue
    .line 96
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isDisplayShow()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public addRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 2
    .param p1, "render"    # Lcom/android/camera/effect/renders/Render;

    .prologue
    .line 92
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Not supportted addRender in PipeRenderPair !"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public copyBlurTexture(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 7
    .param p1, "ext"    # Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .prologue
    .line 100
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    if-eqz v0, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 101
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-nez v0, :cond_2

    .line 102
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    iget v4, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mParentFrameBufferId:I

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 104
    :cond_2
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 105
    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTexureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-boolean v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    :goto_1
    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mX:I

    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mY:I

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 111
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->endBindFrameBuffer()V

    .line 112
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    goto :goto_0

    .line 105
    :cond_3
    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    goto :goto_1
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 12
    .param p1, "attri"    # Lcom/android/camera/effect/draw_mode/DrawAttribute;

    .prologue
    const/4 v10, 0x1

    const/4 v3, 0x0

    .line 127
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    .line 205
    :cond_0
    :goto_0
    return v3

    .line 131
    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eq v0, v10, :cond_2

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    if-ne v0, v1, :cond_3

    .line 132
    :cond_2
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result v3

    goto :goto_0

    .line 135
    :cond_3
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/16 v1, 0x8

    if-ne v0, v1, :cond_8

    move-object v8, p1

    .line 136
    check-cast v8, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .line 137
    .local v8, "ext":Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;
    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewWidth:I

    invoke-direct {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->getEffectBufferRatio()I

    move-result v1

    div-int/2addr v0, v1

    iget v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewHeight:I

    invoke-direct {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->getEffectBufferRatio()I

    move-result v2

    div-int/2addr v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 139
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 140
    iget-object v11, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, v8, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, v8, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    iget-object v4, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v4}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/RawTexture;->getTextureWidth()I

    move-result v5

    iget-object v4, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v4}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/RawTexture;->getTextureHeight()I

    move-result v6

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 144
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->endBindFrameBuffer()V

    .line 146
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v0, :cond_4

    .line 147
    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->updateMiddleBuffer(II)V

    .line 148
    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 149
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 150
    iget-object v11, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mExtTexture:Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    iget-object v1, v8, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mExtTexture:Lcom/android/gallery3d/ui/ExtTexture;

    iget-object v2, v8, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mTextureTransform:[F

    iget v5, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    iget v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    move v4, v3

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->init(Lcom/android/gallery3d/ui/ExtTexture;[FIIII)Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 152
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->endBindFrameBuffer()V

    .line 155
    :cond_4
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isMainFrameDisplay()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 156
    invoke-static {}, Lcom/android/camera/Device;->isHoldBlurBackground()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 157
    invoke-virtual {p0, v8}, Lcom/android/camera/effect/renders/PipeRenderPair;->copyBlurTexture(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    .line 158
    invoke-virtual {p0, v8}, Lcom/android/camera/effect/renders/PipeRenderPair;->drawBlurTexture(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V

    :cond_5
    :goto_1
    move v3, v10

    .line 167
    goto/16 :goto_0

    .line 160
    :cond_6
    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTexureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-boolean v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v1, :cond_7

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mMiddleFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    :goto_2
    iget v2, v8, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mX:I

    iget v3, v8, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mY:I

    iget v4, v8, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    iget v5, v8, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    goto :goto_1

    :cond_7
    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    goto :goto_2

    .line 168
    .end local v8    # "ext":Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;
    :cond_8
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_9

    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/16 v1, 0xa

    if-ne v0, v1, :cond_a

    :cond_9
    move-object v7, p1

    .line 170
    check-cast v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    .line 171
    .local v7, "basic":Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    iget v0, v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    iget v1, v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->updateMiddleBuffer(II)V

    .line 172
    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 173
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 174
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTexureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v2, v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mBasicTexture:Lcom/android/gallery3d/ui/BasicTexture;

    iget-object v4, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v4}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/RawTexture;->getTextureWidth()I

    move-result v5

    iget-object v4, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v4}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/gallery3d/ui/RawTexture;->getTextureHeight()I

    move-result v6

    move v4, v3

    invoke-virtual/range {v1 .. v6}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 179
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->endBindFrameBuffer()V

    .line 180
    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTexureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    iget v2, v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mX:I

    iget v3, v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mY:I

    iget v4, v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mWidth:I

    iget v5, v7, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->mHeight:I

    invoke-virtual/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIII)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object v0

    invoke-virtual {v6, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move v3, v10

    .line 185
    goto/16 :goto_0

    .line 186
    .end local v7    # "basic":Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;
    :cond_a
    invoke-virtual {p1}, Lcom/android/camera/effect/draw_mode/DrawAttribute;->getTarget()I

    move-result v0

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    move-object v9, p1

    .line 187
    check-cast v9, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    .line 188
    .local v9, "intTex":Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;
    iget v0, v9, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mWidth:I

    iget v1, v9, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/PipeRenderPair;->getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    .line 189
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/PipeRenderPair;->beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V

    .line 190
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    new-instance v1, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;

    iget v2, v9, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mTexId:I

    iget v5, v9, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mWidth:I

    iget v6, v9, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mHeight:I

    move v4, v3

    invoke-direct/range {v1 .. v6}, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;-><init>(IIIII)V

    invoke-virtual {v0, v1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    .line 195
    invoke-virtual {p0}, Lcom/android/camera/effect/renders/PipeRenderPair;->endBindFrameBuffer()V

    .line 197
    iget-object v11, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBasicTexureAttri:Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    iget v2, v9, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mX:I

    iget v3, v9, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mY:I

    iget v4, v9, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mWidth:I

    iget v5, v9, Lcom/android/camera/effect/draw_mode/DrawIntTexAttribute;->mHeight:I

    move v6, v10

    invoke-virtual/range {v0 .. v6}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;->init(Lcom/android/gallery3d/ui/BasicTexture;IIIIZ)Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    move-result-object v0

    invoke-virtual {v11, v0}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move v3, v10

    .line 203
    goto/16 :goto_0
.end method

.method public drawBlurTexture(Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;)V
    .locals 7
    .param p1, "ext"    # Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;

    .prologue
    .line 116
    invoke-static {}, Lcom/android/camera/effect/EffectController;->getInstance()Lcom/android/camera/effect/EffectController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/EffectController;->isBackGroundBlur()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    if-eqz v0, :cond_0

    .line 117
    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    new-instance v0, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBlurFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v1}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v1

    iget v2, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mX:I

    iget v3, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mY:I

    iget v4, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mWidth:I

    iget v5, p1, Lcom/android/camera/effect/draw_mode/DrawExtTexAttribute;->mHeight:I

    invoke-direct/range {v0 .. v5}, Lcom/android/camera/effect/draw_mode/DrawBasicTexAttribute;-><init>(Lcom/android/gallery3d/ui/BasicTexture;IIII)V

    invoke-interface {v6, v0}, Lcom/android/gallery3d/ui/GLCanvas;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)V

    .line 123
    :cond_0
    return-void
.end method

.method public getFrameBuffer(II)Lcom/android/camera/effect/FrameBuffer;
    .locals 12
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 223
    const/4 v0, 0x0

    .line 224
    .local v0, "buffer":Lcom/android/camera/effect/FrameBuffer;
    const/4 v2, 0x0

    .line 225
    .local v2, "bufferW":I
    const/4 v1, 0x0

    .line 226
    .local v1, "bufferH":I
    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    .line 227
    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    add-int/lit8 v3, v6, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_3

    .line 228
    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v6}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v2

    .line 229
    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v6}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v1

    .line 230
    if-ge p1, p2, :cond_1

    int-to-double v6, v1

    int-to-double v8, v2

    div-double/2addr v6, v8

    int-to-double v8, p2

    int-to-double v10, p1

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    .line 232
    .local v4, "ratio":D
    :goto_1
    const-wide v6, 0x3fb999999999999aL    # 0.1

    cmpl-double v6, v4, v6

    if-lez v6, :cond_2

    .line 227
    :cond_0
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 230
    .end local v4    # "ratio":D
    :cond_1
    int-to-double v6, v2

    int-to-double v8, v1

    div-double/2addr v6, v8

    int-to-double v8, p1

    int-to-double v10, p2

    div-double/2addr v8, v10

    sub-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    goto :goto_1

    .line 235
    .restart local v4    # "ratio":D
    :cond_2
    invoke-static {v2}, Lcom/android/gallery3d/ui/Utils;->nextPowerOf2(I)I

    move-result v6

    invoke-static {p1}, Lcom/android/gallery3d/ui/Utils;->nextPowerOf2(I)I

    move-result v7

    if-ne v6, v7, :cond_0

    invoke-static {v1}, Lcom/android/gallery3d/ui/Utils;->nextPowerOf2(I)I

    move-result v6

    invoke-static {p2}, Lcom/android/gallery3d/ui/Utils;->nextPowerOf2(I)I

    move-result v7

    if-ne v6, v7, :cond_0

    .line 237
    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "buffer":Lcom/android/camera/effect/FrameBuffer;
    check-cast v0, Lcom/android/camera/effect/FrameBuffer;

    .line 243
    .end local v3    # "i":I
    .end local v4    # "ratio":D
    .restart local v0    # "buffer":Lcom/android/camera/effect/FrameBuffer;
    :cond_3
    if-nez v0, :cond_5

    .line 244
    new-instance v0, Lcom/android/camera/effect/FrameBuffer;

    .end local v0    # "buffer":Lcom/android/camera/effect/FrameBuffer;
    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    iget v7, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mParentFrameBufferId:I

    invoke-direct {v0, v6, p1, p2, v7}, Lcom/android/camera/effect/FrameBuffer;-><init>(Lcom/android/gallery3d/ui/GLCanvas;III)V

    .line 245
    .restart local v0    # "buffer":Lcom/android/camera/effect/FrameBuffer;
    const-string v6, "PipeRenderPair"

    const-string v7, "Camera new framebuffer thread = %d  w = %d, h= %d"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getId()J

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x5

    if-le v6, v7, :cond_4

    .line 248
    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    iget-object v7, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 250
    :cond_4
    iget-object v6, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffers:Ljava/util/ArrayList;

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 252
    :cond_5
    return-object v0
.end method

.method public getTexture()Lcom/android/gallery3d/ui/RawTexture;
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 211
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFrameBuffer:Lcom/android/camera/effect/FrameBuffer;

    invoke-virtual {v0}, Lcom/android/camera/effect/FrameBuffer;->getTexture()Lcom/android/gallery3d/ui/RawTexture;

    move-result-object v0

    goto :goto_0
.end method

.method public prepareCopyBlurTexture()V
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mTextureFilled:Z

    .line 272
    return-void
.end method

.method public setFirstRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 2
    .param p1, "first"    # Lcom/android/camera/effect/renders/Render;

    .prologue
    .line 67
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 68
    if-eqz p1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    .line 74
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_1

    .line 75
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    :cond_1
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 61
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/RenderGroup;->setPreviewSize(II)V

    .line 62
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewWidth:I

    div-int/lit8 v0, v0, 0x8

    :goto_0
    iput v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 63
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewHeight:I

    div-int/lit8 v0, v0, 0x8

    :goto_1
    iput v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    .line 64
    return-void

    .line 62
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewWidth:I

    goto :goto_0

    .line 63
    :cond_1
    iget v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mPreviewHeight:I

    goto :goto_1
.end method

.method public setRenderPairs(Lcom/android/camera/effect/renders/Render;Lcom/android/camera/effect/renders/Render;)V
    .locals 1
    .param p1, "first"    # Lcom/android/camera/effect/renders/Render;
    .param p2, "second"    # Lcom/android/camera/effect/renders/Render;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    if-ne p1, v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    if-ne p2, v0, :cond_0

    .line 57
    :goto_0
    return-void

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 47
    if-eqz p1, :cond_1

    .line 48
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    :cond_1
    if-eqz p2, :cond_2

    .line 52
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_2
    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    .line 56
    iput-object p2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    goto :goto_0
.end method

.method public setSecondRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 2
    .param p1, "second"    # Lcom/android/camera/effect/renders/Render;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 81
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    if-eqz v0, :cond_0

    .line 82
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mFirstRender:Lcom/android/camera/effect/renders/Render;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_0
    if-eqz p1, :cond_1

    .line 85
    iget-object v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 87
    :cond_1
    iput-object p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mSecondRender:Lcom/android/camera/effect/renders/Render;

    .line 88
    return-void
.end method

.method public setUsedMiddleBuffer(Z)V
    .locals 0
    .param p1, "useMiddleBuffer"    # Z

    .prologue
    .line 257
    iput-boolean p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    .line 258
    return-void
.end method

.method public updateMiddleBuffer(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 261
    iget-boolean v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mUseMiddleBuffer:Z

    if-eqz v0, :cond_0

    .line 262
    div-int/lit8 v0, p1, 0x8

    iput v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 263
    div-int/lit8 v0, p2, 0x8

    iput v0, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    .line 268
    :goto_0
    return-void

    .line 265
    :cond_0
    iput p1, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferWidth:I

    .line 266
    iput p2, p0, Lcom/android/camera/effect/renders/PipeRenderPair;->mBufferHeight:I

    goto :goto_0
.end method
