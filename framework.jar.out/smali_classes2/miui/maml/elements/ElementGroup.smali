.class public Lmiui/maml/elements/ElementGroup;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "ElementGroup.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ElementGroup$1;,
        Lmiui/maml/elements/ElementGroup$LinearDirection;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MAML_ElementGroup"

.field public static final TAG_NAME:Ljava/lang/String; = "ElementGroup"

.field public static final TAG_NAME1:Ljava/lang/String; = "Group"


# instance fields
.field protected mClip:Z

.field protected mElements:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation
.end field

.field private mIndexVar:Lmiui/maml/data/IndexedVariable;

.field private mLayered:Z

.field private mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;


# direct methods
.method private constructor <init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/IndexedVariable;)V
    .locals 1
    .param p1, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p2, "indexVar"    # Lmiui/maml/data/IndexedVariable;

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 29
    sget-object v0, Lmiui/maml/elements/ElementGroup$LinearDirection;->None:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    .line 45
    iput-object p2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    .line 46
    return-void
.end method

.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 39
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    .line 29
    sget-object v0, Lmiui/maml/elements/ElementGroup$LinearDirection;->None:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object v0, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    .line 40
    invoke-direct {p0, p1}, Lmiui/maml/elements/ElementGroup;->load(Lorg/w3c/dom/Element;)V

    .line 41
    return-void
.end method

.method public static createArrayGroup(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/IndexedVariable;)Lmiui/maml/elements/ElementGroup;
    .locals 1
    .param p0, "root"    # Lmiui/maml/ScreenElementRoot;
    .param p1, "indexVar"    # Lmiui/maml/data/IndexedVariable;

    .prologue
    .line 49
    new-instance v0, Lmiui/maml/elements/ElementGroup;

    invoke-direct {v0, p0, p1}, Lmiui/maml/elements/ElementGroup;-><init>(Lmiui/maml/ScreenElementRoot;Lmiui/maml/data/IndexedVariable;)V

    return-object v0
.end method

.method public static isArrayGroup(Lmiui/maml/elements/ScreenElement;)Z
    .locals 1
    .param p0, "se"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 53
    instance-of v0, p0, Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    check-cast p0, Lmiui/maml/elements/ElementGroup;

    .end local p0    # "se":Lmiui/maml/elements/ScreenElement;
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 7
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 61
    if-nez p1, :cond_1

    .line 81
    :cond_0
    return-void

    .line 63
    :cond_1
    const-string v5, "clip"

    invoke-virtual {p0, p1, v5}, Lmiui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    .line 64
    const-string v5, "layered"

    invoke-virtual {p0, p1, v5}, Lmiui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    iput-boolean v5, p0, Lmiui/maml/elements/ElementGroup;->mLayered:Z

    .line 66
    const-string v5, "linear"

    invoke-virtual {p0, p1, v5}, Lmiui/maml/elements/ElementGroup;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 67
    .local v4, "linear":Ljava/lang/String;
    const-string v5, "h"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 68
    sget-object v5, Lmiui/maml/elements/ElementGroup$LinearDirection;->Horizontal:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object v5, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    .line 73
    :cond_2
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 74
    .local v1, "children":Lorg/w3c/dom/NodeList;
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    .line 75
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_0

    .line 76
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v5}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_3

    .line 77
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 78
    .local v3, "item":Lorg/w3c/dom/Element;
    invoke-virtual {p0, v3}, Lmiui/maml/elements/ElementGroup;->onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;

    move-result-object v5

    invoke-virtual {p0, v5}, Lmiui/maml/elements/ElementGroup;->addElement(Lmiui/maml/elements/ScreenElement;)V

    .line 75
    .end local v3    # "item":Lorg/w3c/dom/Element;
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 69
    .end local v0    # "N":I
    .end local v1    # "children":Lorg/w3c/dom/NodeList;
    .end local v2    # "i":I
    :cond_4
    const-string v5, "v"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 70
    sget-object v5, Lmiui/maml/elements/ElementGroup$LinearDirection;->Vertical:Lmiui/maml/elements/ElementGroup$LinearDirection;

    iput-object v5, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    goto :goto_0
.end method


# virtual methods
.method public acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V
    .locals 3
    .param p1, "v"    # Lmiui/maml/elements/ScreenElementVisitor;

    .prologue
    .line 413
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    .line 414
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 415
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 416
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V

    .line 415
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 418
    :cond_0
    return-void
.end method

.method public addElement(Lmiui/maml/elements/ScreenElement;)V
    .locals 1
    .param p1, "newElement"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 84
    if-eqz p1, :cond_0

    .line 85
    invoke-virtual {p1, p0}, Lmiui/maml/elements/ScreenElement;->setParent(Lmiui/maml/elements/ElementGroup;)V

    .line 86
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    :cond_0
    return-void
.end method

.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v10, 0x0

    .line 208
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getWidth()F

    move-result v9

    .line 209
    .local v9, "w":F
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getHeight()F

    move-result v7

    .line 210
    .local v7, "h":F
    invoke-virtual {p0, v10, v9}, Lmiui/maml/elements/ElementGroup;->getLeft(FF)F

    move-result v1

    .line 211
    .local v1, "x":F
    invoke-virtual {p0, v10, v7}, Lmiui/maml/elements/ElementGroup;->getTop(FF)F

    move-result v2

    .line 212
    .local v2, "y":F
    const/4 v8, 0x0

    .line 213
    .local v8, "rs":I
    iget-boolean v0, p0, Lmiui/maml/elements/ElementGroup;->mLayered:Z

    if-eqz v0, :cond_1

    cmpl-float v0, v9, v10

    if-lez v0, :cond_1

    cmpl-float v0, v7, v10

    if-lez v0, :cond_1

    .line 214
    add-float v3, v1, v9

    add-float v4, v2, v7

    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getAlpha()I

    move-result v5

    const/16 v6, 0x1f

    move-object v0, p1

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Canvas;->saveLayerAlpha(FFFFII)I

    move-result v8

    .line 218
    :goto_0
    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 219
    cmpl-float v0, v9, v10

    if-lez v0, :cond_0

    cmpl-float v0, v7, v10

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v0, :cond_0

    .line 220
    invoke-virtual {p1, v10, v10, v9, v7}, Landroid/graphics/Canvas;->clipRect(FFFF)Z

    .line 223
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/maml/elements/ElementGroup;->doRenderChildren(Landroid/graphics/Canvas;)V

    .line 224
    invoke-virtual {p1, v8}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 225
    return-void

    .line 216
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v8

    goto :goto_0
.end method

.method protected doRenderChildren(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 228
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 229
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 230
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ScreenElement;

    .line 231
    .local v1, "element":Lmiui/maml/elements/ScreenElement;
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v3, :cond_0

    .line 232
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v2

    invoke-virtual {v3, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 233
    :cond_0
    invoke-virtual {v1, p1}, Lmiui/maml/elements/ScreenElement;->render(Landroid/graphics/Canvas;)V

    .line 229
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 235
    .end local v1    # "element":Lmiui/maml/elements/ScreenElement;
    :cond_1
    return-void
.end method

.method protected doTick(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 239
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 240
    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;->doTickChildren(J)V

    .line 241
    return-void
.end method

.method protected doTickChildren(J)V
    .locals 13
    .param p1, "currentTime"    # J

    .prologue
    .line 244
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 245
    .local v0, "N":I
    const/4 v2, 0x0

    .line 246
    .local v2, "currentPos":F
    const/4 v6, 0x0

    .line 247
    .local v6, "maxSize":F
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    if-ge v5, v0, :cond_2

    .line 248
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v8, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ScreenElement;

    .line 249
    .local v3, "element":Lmiui/maml/elements/ScreenElement;
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v8, :cond_0

    .line 250
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v10, v5

    invoke-virtual {v8, v10, v11}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 251
    :cond_0
    invoke-virtual {v3, p1, p2}, Lmiui/maml/elements/ScreenElement;->tick(J)V

    .line 253
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    sget-object v9, Lmiui/maml/elements/ElementGroup$LinearDirection;->None:Lmiui/maml/elements/ElementGroup$LinearDirection;

    if-eq v8, v9, :cond_1

    instance-of v8, v3, Lmiui/maml/elements/AnimatedScreenElement;

    if-eqz v8, :cond_1

    invoke-virtual {v3}, Lmiui/maml/elements/ScreenElement;->isVisible()Z

    move-result v8

    if-eqz v8, :cond_1

    move-object v1, v3

    .line 256
    check-cast v1, Lmiui/maml/elements/AnimatedScreenElement;

    .line 257
    .local v1, "ae":Lmiui/maml/elements/AnimatedScreenElement;
    sget-object v8, Lmiui/maml/elements/ElementGroup$1;->$SwitchMap$miui$maml$elements$ElementGroup$LinearDirection:[I

    iget-object v9, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    invoke-virtual {v9}, Lmiui/maml/elements/ElementGroup$LinearDirection;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_0

    .line 247
    .end local v1    # "ae":Lmiui/maml/elements/AnimatedScreenElement;
    :cond_1
    :goto_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 259
    .restart local v1    # "ae":Lmiui/maml/elements/AnimatedScreenElement;
    :pswitch_0
    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getMarginLeft()F

    move-result v8

    add-float/2addr v2, v8

    .line 260
    float-to-double v8, v2

    invoke-virtual {v1, v8, v9}, Lmiui/maml/elements/AnimatedScreenElement;->setX(D)V

    .line 261
    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v8

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getMarginRight()F

    move-result v9

    add-float/2addr v8, v9

    add-float/2addr v2, v8

    .line 262
    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v4

    .line 263
    .local v4, "h":F
    cmpg-float v8, v6, v4

    if-gez v8, :cond_1

    .line 264
    move v6, v4

    goto :goto_1

    .line 267
    .end local v4    # "h":F
    :pswitch_1
    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getMarginTop()F

    move-result v8

    add-float/2addr v2, v8

    .line 268
    float-to-double v8, v2

    invoke-virtual {v1, v8, v9}, Lmiui/maml/elements/AnimatedScreenElement;->setY(D)V

    .line 269
    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v8

    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getMarginBottom()F

    move-result v9

    add-float/2addr v8, v9

    add-float/2addr v2, v8

    .line 270
    invoke-virtual {v1}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v7

    .line 271
    .local v7, "w":F
    cmpg-float v8, v6, v7

    if-gez v8, :cond_1

    .line 272
    move v6, v7

    goto :goto_1

    .line 278
    .end local v1    # "ae":Lmiui/maml/elements/AnimatedScreenElement;
    .end local v3    # "element":Lmiui/maml/elements/ScreenElement;
    .end local v7    # "w":F
    :cond_2
    sget-object v8, Lmiui/maml/elements/ElementGroup$1;->$SwitchMap$miui$maml$elements$ElementGroup$LinearDirection:[I

    iget-object v9, p0, Lmiui/maml/elements/ElementGroup;->mLinearDirection:Lmiui/maml/elements/ElementGroup$LinearDirection;

    invoke-virtual {v9}, Lmiui/maml/elements/ElementGroup$LinearDirection;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 292
    :goto_2
    return-void

    .line 280
    :pswitch_2
    float-to-double v8, v2

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setW(D)V

    .line 281
    float-to-double v8, v6

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setH(D)V

    .line 282
    float-to-double v8, v2

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setActualWidth(D)V

    .line 283
    float-to-double v8, v6

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setActualHeight(D)V

    goto :goto_2

    .line 286
    :pswitch_3
    float-to-double v8, v2

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setH(D)V

    .line 287
    float-to-double v8, v6

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setW(D)V

    .line 288
    float-to-double v8, v2

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setActualHeight(D)V

    .line 289
    float-to-double v8, v6

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->descale(D)D

    move-result-wide v8

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->setActualWidth(D)V

    goto :goto_2

    .line 257
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 278
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 393
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    .line 394
    .local v1, "ele":Lmiui/maml/elements/ScreenElement;
    if-eqz v1, :cond_0

    move-object v3, v1

    .line 404
    :goto_0
    return-object v3

    .line 397
    :cond_0
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 398
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v0, :cond_2

    .line 399
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v3, p1}, Lmiui/maml/elements/ScreenElement;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    .line 400
    if-eqz v1, :cond_1

    move-object v3, v1

    .line 401
    goto :goto_0

    .line 398
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 404
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 5

    .prologue
    .line 367
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    .line 369
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 370
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 373
    :try_start_0
    iget-object v3, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v3}, Lmiui/maml/elements/ScreenElement;->finish()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 370
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 374
    :catch_0
    move-exception v1

    .line 375
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "MAML_ElementGroup"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 376
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 379
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    return-void
.end method

.method public getChild(I)Lmiui/maml/elements/ScreenElement;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 192
    if-ltz p1, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p1, v0, :cond_1

    .line 193
    :cond_0
    const/4 v0, 0x0

    .line 195
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/maml/elements/ScreenElement;

    goto :goto_0
.end method

.method public getElements()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ScreenElement;",
            ">;"
        }
    .end annotation

    .prologue
    .line 408
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    return-object v0
.end method

.method protected getParentLeft()F
    .locals 2

    .prologue
    .line 357
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getLeft()F

    move-result v1

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getParentLeft()F

    move-result v0

    goto :goto_0
.end method

.method protected getParentTop()F
    .locals 2

    .prologue
    .line 362
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getTop()F

    move-result v1

    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    add-float/2addr v0, v1

    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getParentTop()F

    move-result v0

    goto :goto_0
.end method

.method public getSize()I
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public init()V
    .locals 6

    .prologue
    .line 107
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    .line 109
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 110
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 111
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v2, :cond_0

    .line 112
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 113
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->init()V

    .line 110
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_1
    return-void
.end method

.method public isArray()Z
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isLayered()Z
    .locals 1

    .prologue
    .line 203
    iget-boolean v0, p0, Lmiui/maml/elements/ElementGroup;->mLayered:Z

    return v0
.end method

.method protected onCreateChild(Lorg/w3c/dom/Element;)Lmiui/maml/elements/ScreenElement;
    .locals 2
    .param p1, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 102
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mFactory:Lmiui/maml/elements/ScreenElementFactory;

    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0, p1, v1}, Lmiui/maml/elements/ScreenElementFactory;->createInstance(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/ScreenElement;

    move-result-object v0

    return-object v0
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 337
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->isVisible()Z

    move-result v4

    if-nez v4, :cond_0

    .line 338
    const/4 v4, 0x0

    .line 352
    :goto_0
    return v4

    .line 340
    :cond_0
    const/4 v3, 0x0

    .line 341
    .local v3, "ret":Z
    iget-object v4, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 342
    .local v0, "N":I
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_1
    if-ltz v2, :cond_2

    .line 343
    iget-object v4, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ScreenElement;

    .line 344
    .local v1, "element":Lmiui/maml/elements/ScreenElement;
    iget-object v4, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v4, :cond_1

    .line 345
    iget-object v4, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v6, v2

    invoke-virtual {v4, v6, v7}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 346
    :cond_1
    invoke-virtual {v1, p1}, Lmiui/maml/elements/ScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 347
    const/4 v3, 0x1

    .line 352
    .end local v1    # "element":Lmiui/maml/elements/ScreenElement;
    :cond_2
    if-eqz v3, :cond_4

    const/4 v4, 0x1

    goto :goto_0

    .line 342
    .restart local v1    # "element":Lmiui/maml/elements/ScreenElement;
    :cond_3
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 352
    .end local v1    # "element":Lmiui/maml/elements/ScreenElement;
    :cond_4
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onHover(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 296
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->isVisible()Z

    move-result v8

    if-nez v8, :cond_1

    move v6, v7

    .line 332
    :cond_0
    :goto_0
    return v6

    .line 299
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    .line 300
    .local v1, "action":I
    iget-boolean v8, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    if-eqz v8, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v8

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v9

    invoke-virtual {p0, v8, v9}, Lmiui/maml/elements/ElementGroup;->touched(FF)Z

    move-result v8

    if-nez v8, :cond_2

    .line 301
    const/4 v8, 0x3

    invoke-virtual {p1, v8}, Landroid/view/MotionEvent;->setAction(I)V

    .line 303
    :cond_2
    const/4 v4, 0x0

    .line 304
    .local v4, "ret":Z
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 307
    .local v0, "N":I
    iget-object v8, p0, Lmiui/maml/elements/ElementGroup;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v8}, Lmiui/maml/ScreenElementRoot;->version()I

    move-result v8

    const/4 v9, 0x2

    if-lt v8, v9, :cond_5

    move v5, v6

    .line 308
    .local v5, "reverse":Z
    :goto_1
    if-eqz v5, :cond_7

    .line 310
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_2
    if-ltz v3, :cond_4

    .line 311
    iget-object v7, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    .line 312
    .local v2, "element":Lmiui/maml/elements/ScreenElement;
    iget-object v7, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v7, :cond_3

    .line 313
    iget-object v7, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v8, v3

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 314
    :cond_3
    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_6

    .line 315
    const/4 v4, 0x1

    .line 330
    .end local v2    # "element":Lmiui/maml/elements/ScreenElement;
    :cond_4
    :goto_3
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->setAction(I)V

    .line 332
    if-nez v4, :cond_0

    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0

    .end local v3    # "i":I
    .end local v5    # "reverse":Z
    :cond_5
    move v5, v7

    .line 307
    goto :goto_1

    .line 310
    .restart local v2    # "element":Lmiui/maml/elements/ScreenElement;
    .restart local v3    # "i":I
    .restart local v5    # "reverse":Z
    :cond_6
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 320
    .end local v2    # "element":Lmiui/maml/elements/ScreenElement;
    .end local v3    # "i":I
    :cond_7
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_4
    if-ge v3, v0, :cond_4

    .line 321
    iget-object v7, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v7, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    .line 322
    .restart local v2    # "element":Lmiui/maml/elements/ScreenElement;
    iget-object v7, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v7, :cond_8

    .line 323
    iget-object v7, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v8, v3

    invoke-virtual {v7, v8, v9}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 324
    :cond_8
    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->onTouch(Landroid/view/MotionEvent;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 325
    const/4 v4, 0x1

    .line 326
    goto :goto_3

    .line 320
    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto :goto_4
.end method

.method protected onVisibilityChange(Z)V
    .locals 3
    .param p1, "visible"    # Z

    .prologue
    .line 422
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 423
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 424
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 425
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    .line 424
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 427
    :cond_0
    return-void
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 173
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->pause()V

    .line 175
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 176
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 177
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->pause()V

    .line 176
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 179
    :cond_0
    return-void
.end method

.method public pauseAnim(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 143
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->pauseAnim(J)V

    .line 145
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 146
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 147
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 149
    :cond_0
    return-void
.end method

.method public playAnim(JJJZZ)V
    .locals 11
    .param p1, "time"    # J
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "isLoop"    # Z
    .param p8, "isDelay"    # Z

    .prologue
    .line 131
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/AnimatedScreenElement;->playAnim(JJJZZ)V

    .line 133
    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 134
    .local v0, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v0, :cond_1

    .line 135
    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v1, :cond_0

    .line 136
    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v2, v10

    invoke-virtual {v1, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 137
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ScreenElement;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 134
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 139
    :cond_1
    return-void
.end method

.method public removeAllElements()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 97
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->requestUpdate()V

    .line 98
    return-void
.end method

.method public removeElement(Lmiui/maml/elements/ScreenElement;)V
    .locals 1
    .param p1, "element"    # Lmiui/maml/elements/ScreenElement;

    .prologue
    .line 91
    iget-object v0, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 92
    invoke-virtual {p0}, Lmiui/maml/elements/ElementGroup;->requestUpdate()V

    .line 93
    return-void
.end method

.method public reset(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 163
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->reset(J)V

    .line 165
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 166
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 167
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 169
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 183
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->resume()V

    .line 185
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 186
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 187
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement;->resume()V

    .line 186
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 189
    :cond_0
    return-void
.end method

.method public resumeAnim(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 153
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->resumeAnim(J)V

    .line 155
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 156
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 157
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 156
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 159
    :cond_0
    return-void
.end method

.method public setAnim([Ljava/lang/String;)V
    .locals 6
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 119
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->setAnim([Ljava/lang/String;)V

    .line 121
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 122
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 123
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    if-eqz v2, :cond_0

    .line 124
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mIndexVar:Lmiui/maml/data/IndexedVariable;

    int-to-double v4, v1

    invoke-virtual {v2, v4, v5}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 125
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1}, Lmiui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    .line 122
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 127
    :cond_1
    return-void
.end method

.method public setClip(Z)V
    .locals 0
    .param p1, "clip"    # Z

    .prologue
    .line 430
    iput-boolean p1, p0, Lmiui/maml/elements/ElementGroup;->mClip:Z

    .line 431
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "show"    # Z

    .prologue
    .line 383
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->showCategory(Ljava/lang/String;Z)V

    .line 385
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 386
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 387
    iget-object v2, p0, Lmiui/maml/elements/ElementGroup;->mElements:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/elements/ScreenElement;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/elements/ScreenElement;->showCategory(Ljava/lang/String;Z)V

    .line 386
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 389
    :cond_0
    return-void
.end method
