.class public Lcom/android/camera/effect/renders/RenderGroup;
.super Lcom/android/camera/effect/renders/Render;
.source "RenderGroup.java"


# instance fields
.field protected mParentFrameBufferIdOld:I

.field private mPartRenders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/renders/Render;",
            ">;"
        }
    .end annotation
.end field

.field protected mRenders:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/camera/effect/renders/Render;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;)V
    .locals 1
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/Render;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPartRenders:Ljava/util/ArrayList;

    .line 20
    return-void
.end method

.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 2
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "size"    # I

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/Render;-><init>(Lcom/android/gallery3d/ui/GLCanvas;)V

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPartRenders:Ljava/util/ArrayList;

    .line 24
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p2, :cond_0

    .line 25
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->addRender(Lcom/android/camera/effect/renders/Render;)V

    .line 24
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 27
    :cond_0
    return-void
.end method

.method private setSize(Lcom/android/camera/effect/renders/Render;)V
    .locals 2
    .param p1, "render"    # Lcom/android/camera/effect/renders/Render;

    .prologue
    .line 41
    if-eqz p1, :cond_3

    .line 42
    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPreviewWidth:I

    if-nez v0, :cond_0

    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPreviewHeight:I

    if-eqz v0, :cond_1

    .line 43
    :cond_0
    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPreviewWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPreviewHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    .line 45
    :cond_1
    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mViewportWidth:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mViewportHeight:I

    if-eqz v0, :cond_3

    .line 46
    :cond_2
    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mViewportWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mViewportHeight:I

    invoke-virtual {p1, v0, v1}, Lcom/android/camera/effect/renders/Render;->setViewportSize(II)V

    .line 49
    :cond_3
    return-void
.end method


# virtual methods
.method public addPartRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 1
    .param p1, "render"    # Lcom/android/camera/effect/renders/Render;

    .prologue
    .line 206
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPartRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 207
    return-void
.end method

.method public addRender(Lcom/android/camera/effect/renders/Render;)V
    .locals 1
    .param p1, "render"    # Lcom/android/camera/effect/renders/Render;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->setSize(Lcom/android/camera/effect/renders/Render;)V

    .line 32
    return-void
.end method

.method public beginBindFrameBuffer(Lcom/android/camera/effect/FrameBuffer;)V
    .locals 2
    .param p1, "frameBuffer"    # Lcom/android/camera/effect/FrameBuffer;

    .prologue
    .line 75
    const v0, 0x8d40

    invoke-virtual {p1}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v1

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 76
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->pushState()V

    .line 77
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->indentityAllM()V

    .line 78
    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mViewportWidth:I

    iput v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mOldViewportWidth:I

    .line 79
    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mViewportHeight:I

    iput v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mOldViewportHeight:I

    .line 80
    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mParentFrameBufferId:I

    iput v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mParentFrameBufferIdOld:I

    .line 81
    invoke-virtual {p1}, Lcom/android/camera/effect/FrameBuffer;->getId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->setParentFrameBufferId(I)V

    .line 82
    invoke-virtual {p1}, Lcom/android/camera/effect/FrameBuffer;->getWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/camera/effect/FrameBuffer;->getHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setViewportSize(II)V

    .line 83
    return-void
.end method

.method public clearPartRenders()V
    .locals 1

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPartRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 211
    return-void
.end method

.method public draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z
    .locals 4
    .param p1, "attri"    # Lcom/android/camera/effect/draw_mode/DrawAttribute;

    .prologue
    .line 58
    const/4 v2, 0x0

    .line 59
    .local v2, "result":Z
    iget-object v3, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 60
    iget-object v3, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/renders/Render;

    .line 61
    .local v1, "render":Lcom/android/camera/effect/renders/Render;
    invoke-virtual {v1, p1}, Lcom/android/camera/effect/renders/Render;->draw(Lcom/android/camera/effect/draw_mode/DrawAttribute;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 62
    const/4 v2, 0x1

    .line 67
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "render":Lcom/android/camera/effect/renders/Render;
    :cond_1
    return v2
.end method

.method public endBindFrameBuffer()V
    .locals 2

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mGLCanvas:Lcom/android/gallery3d/ui/GLCanvas;

    invoke-interface {v0}, Lcom/android/gallery3d/ui/GLCanvas;->getState()Lcom/android/camera/effect/GLCanvasState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/effect/GLCanvasState;->popState()V

    .line 87
    const v0, 0x8d40

    iget v1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mParentFrameBufferIdOld:I

    invoke-static {v0, v1}, Landroid/opengl/GLES20;->glBindFramebuffer(II)V

    .line 88
    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mOldViewportWidth:I

    iget v1, p0, Lcom/android/camera/effect/renders/RenderGroup;->mOldViewportHeight:I

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/RenderGroup;->setViewportSize(II)V

    .line 89
    iget v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mParentFrameBufferIdOld:I

    invoke-virtual {p0, v0}, Lcom/android/camera/effect/renders/RenderGroup;->setParentFrameBufferId(I)V

    .line 90
    return-void
.end method

.method public getPartRender(I)Lcom/android/camera/effect/renders/Render;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 214
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPartRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 215
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPartRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    goto :goto_0
.end method

.method public getRender(I)Lcom/android/camera/effect/renders/Render;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 52
    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 53
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    goto :goto_0
.end method

.method public isNeedInit(I)Z
    .locals 5
    .param p1, "index"    # I

    .prologue
    const/16 v4, 0xa

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 190
    const/4 v3, -0x1

    if-le p1, v3, :cond_2

    .line 191
    if-eq p1, v4, :cond_1

    iget-object v3, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, p1, :cond_0

    iget-object v3, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 200
    :cond_0
    :goto_0
    return v1

    :cond_1
    move v1, v2

    .line 191
    goto :goto_0

    .line 194
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v3, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 195
    iget-object v3, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_3

    if-eq v0, v4, :cond_3

    invoke-static {}, Lcom/android/camera/ui/V6ModulePicker;->isCameraModule()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0xc

    if-eq v0, v3, :cond_0

    .line 194
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_4
    move v1, v2

    .line 200
    goto :goto_0
.end method

.method public isPartComplete(I)Z
    .locals 1
    .param p1, "wholeSize"    # I

    .prologue
    .line 219
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mPartRenders:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V
    .locals 3
    .param p1, "attribute"    # Lcom/android/camera/effect/EffectController$EffectRectAttribute;

    .prologue
    .line 106
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    .line 107
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 108
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/renders/Render;

    .line 109
    .local v1, "render":Lcom/android/camera/effect/renders/Render;
    if-eqz v1, :cond_0

    .line 110
    invoke-virtual {v1, p1}, Lcom/android/camera/effect/renders/Render;->setEffectRangeAttribute(Lcom/android/camera/effect/EffectController$EffectRectAttribute;)V

    goto :goto_0

    .line 114
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "render":Lcom/android/camera/effect/renders/Render;
    :cond_1
    return-void
.end method

.method public setJpegOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 155
    iget v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mJpegOrientation:I

    if-ne v2, p1, :cond_1

    .line 164
    :cond_0
    return-void

    .line 156
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    .line 157
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 158
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/renders/Render;

    .line 159
    .local v1, "render":Lcom/android/camera/effect/renders/Render;
    if-eqz v1, :cond_2

    .line 160
    invoke-virtual {v1, p1}, Lcom/android/camera/effect/renders/Render;->setJpegOrientation(I)V

    goto :goto_0
.end method

.method public setMirror(Z)V
    .locals 3
    .param p1, "mirror"    # Z

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setMirror(Z)V

    .line 169
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 170
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/renders/Render;

    .line 171
    .local v1, "render":Lcom/android/camera/effect/renders/Render;
    if-eqz v1, :cond_0

    .line 172
    invoke-virtual {v1, p1}, Lcom/android/camera/effect/renders/Render;->setMirror(Z)V

    goto :goto_0

    .line 176
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "render":Lcom/android/camera/effect/renders/Render;
    :cond_1
    return-void
.end method

.method public setOrientation(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 142
    iget v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mOrientation:I

    if-ne v2, p1, :cond_1

    .line 151
    :cond_0
    return-void

    .line 143
    :cond_1
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    .line 144
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 145
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/renders/Render;

    .line 146
    .local v1, "render":Lcom/android/camera/effect/renders/Render;
    if-eqz v1, :cond_2

    .line 147
    invoke-virtual {v1, p1}, Lcom/android/camera/effect/renders/Render;->setOrientation(I)V

    goto :goto_0
.end method

.method protected setParentFrameBufferId(I)V
    .locals 3
    .param p1, "id"    # I

    .prologue
    .line 179
    invoke-super {p0, p1}, Lcom/android/camera/effect/renders/Render;->setParentFrameBufferId(I)V

    .line 180
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 181
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/effect/renders/Render;

    .line 182
    .local v0, "child":Lcom/android/camera/effect/renders/Render;
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {v0, p1}, Lcom/android/camera/effect/renders/Render;->setParentFrameBufferId(I)V

    goto :goto_0

    .line 187
    .end local v0    # "child":Lcom/android/camera/effect/renders/Render;
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    return-void
.end method

.method public setPreviewSize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 118
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    .line 119
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 120
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/renders/Render;

    .line 121
    .local v1, "render":Lcom/android/camera/effect/renders/Render;
    if-eqz v1, :cond_0

    .line 122
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/effect/renders/Render;->setPreviewSize(II)V

    goto :goto_0

    .line 126
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "render":Lcom/android/camera/effect/renders/Render;
    :cond_1
    return-void
.end method

.method public setRender(Lcom/android/camera/effect/renders/Render;I)V
    .locals 1
    .param p1, "render"    # Lcom/android/camera/effect/renders/Render;
    .param p2, "index"    # I

    .prologue
    .line 35
    iget-object v0, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 36
    invoke-direct {p0, p1}, Lcom/android/camera/effect/renders/RenderGroup;->setSize(Lcom/android/camera/effect/renders/Render;)V

    .line 37
    return-void
.end method

.method public setViewportSize(II)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 94
    invoke-super {p0, p1, p2}, Lcom/android/camera/effect/renders/Render;->setViewportSize(II)V

    .line 95
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 96
    iget-object v2, p0, Lcom/android/camera/effect/renders/RenderGroup;->mRenders:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/camera/effect/renders/Render;

    .line 97
    .local v1, "render":Lcom/android/camera/effect/renders/Render;
    if-eqz v1, :cond_0

    .line 98
    invoke-virtual {v1, p1, p2}, Lcom/android/camera/effect/renders/Render;->setViewportSize(II)V

    goto :goto_0

    .line 102
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "render":Lcom/android/camera/effect/renders/Render;
    :cond_1
    return-void
.end method
