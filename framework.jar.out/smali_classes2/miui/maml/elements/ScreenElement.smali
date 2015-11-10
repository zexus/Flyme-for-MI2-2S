.class public abstract Lmiui/maml/elements/ScreenElement;
.super Ljava/lang/Object;
.source "ScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ScreenElement$2;,
        Lmiui/maml/elements/ScreenElement$Align;,
        Lmiui/maml/elements/ScreenElement$AlignV;
    }
.end annotation


# static fields
.field public static final ACTUAL_H:Ljava/lang/String; = "actual_h"

.field public static final ACTUAL_W:Ljava/lang/String; = "actual_w"

.field public static final ACTUAL_X:Ljava/lang/String; = "actual_x"

.field public static final ACTUAL_Y:Ljava/lang/String; = "actual_y"

.field private static final LOG_TAG:Ljava/lang/String; = "MAML ScreenElement"

.field public static final VISIBILITY:Ljava/lang/String; = "visibility"

.field public static final VISIBILITY_FALSE:I = 0x0

.field public static final VISIBILITY_TRUE:I = 0x1


# instance fields
.field private mActualHeightVar:Lmiui/maml/data/IndexedVariable;

.field private mActualWidthVar:Lmiui/maml/data/IndexedVariable;

.field protected mAlign:Lmiui/maml/elements/ScreenElement$Align;

.field protected mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

.field protected mAnimations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/animation/BaseAnimation;",
            ">;"
        }
    .end annotation
.end field

.field protected mAvailableController:Lmiui/maml/RendererController;

.field protected mCategory:Ljava/lang/String;

.field private mCurFramerate:F

.field private mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

.field protected mHasName:Z

.field private mInitShow:Z

.field private mIsVisible:Z

.field protected mName:Ljava/lang/String;

.field protected mParent:Lmiui/maml/elements/ElementGroup;

.field protected mRoot:Lmiui/maml/ScreenElementRoot;

.field private mShow:Z

.field protected mStyle:Lmiui/maml/StylesManager$Style;

.field private mTriggers:Lmiui/maml/CommandTriggers;

.field private mVisibilityExpression:Lmiui/maml/data/Expression;

.field private mVisibilityVar:Lmiui/maml/data/IndexedVariable;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v0, 0x1

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mInitShow:Z

    .line 59
    iput-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mShow:Z

    .line 72
    iput-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mIsVisible:Z

    .line 100
    iput-object p2, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    .line 101
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 102
    const-string v0, "style"

    invoke-interface {p1, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Lmiui/maml/ScreenElementRoot;->getStyle(Ljava/lang/String;)Lmiui/maml/StylesManager$Style;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ScreenElement;->mStyle:Lmiui/maml/StylesManager$Style;

    .line 104
    :cond_0
    invoke-direct {p0, p1}, Lmiui/maml/elements/ScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 105
    return-void
.end method

.method protected static isTagEnable([Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p0, "tags"    # [Ljava/lang/String;
    .param p1, "tag"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 377
    if-nez p0, :cond_1

    .line 378
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 384
    :cond_0
    :goto_0
    return v0

    .line 381
    :cond_1
    invoke-static {p0, p1}, Lmiui/maml/util/Utils;->arrayContains([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 384
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 108
    if-nez p1, :cond_0

    .line 154
    :goto_0
    return-void

    .line 111
    :cond_0
    const-string v3, "category"

    invoke-virtual {p0, p1, v3}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/ScreenElement;->mCategory:Ljava/lang/String;

    .line 112
    const-string v3, "name"

    invoke-virtual {p0, p1, v3}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 113
    iget-object v3, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    move v3, v4

    :goto_1
    iput-boolean v3, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    .line 114
    const-string v3, "visibility"

    invoke-virtual {p0, p1, v3}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 115
    .local v2, "vis":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 116
    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 117
    iput-boolean v5, p0, Lmiui/maml/elements/ScreenElement;->mInitShow:Z

    .line 124
    :cond_1
    :goto_2
    sget-object v3, Lmiui/maml/elements/ScreenElement$Align;->LEFT:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v3, p0, Lmiui/maml/elements/ScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    .line 125
    const-string v3, "align"

    invoke-virtual {p0, p1, v3}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 126
    .local v0, "align":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 127
    const-string v3, "alignH"

    invoke-virtual {p0, p1, v3}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 129
    :cond_2
    const-string v3, "right"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 130
    sget-object v3, Lmiui/maml/elements/ScreenElement$Align;->RIGHT:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v3, p0, Lmiui/maml/elements/ScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    .line 137
    :cond_3
    :goto_3
    sget-object v3, Lmiui/maml/elements/ScreenElement$AlignV;->TOP:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v3, p0, Lmiui/maml/elements/ScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    .line 138
    const-string v3, "alignV"

    invoke-virtual {p0, p1, v3}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    const-string v3, "bottom"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 140
    sget-object v3, Lmiui/maml/elements/ScreenElement$AlignV;->BOTTOM:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v3, p0, Lmiui/maml/elements/ScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    .line 148
    :cond_4
    :goto_4
    const-string v3, "Triggers"

    invoke-static {p1, v3}, Lmiui/maml/util/Utils;->getChild(Lorg/w3c/dom/Element;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v1

    .line 149
    .local v1, "triggers":Lorg/w3c/dom/Element;
    if-eqz v1, :cond_5

    .line 150
    new-instance v3, Lmiui/maml/CommandTriggers;

    invoke-direct {v3, v1, p0}, Lmiui/maml/CommandTriggers;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v3, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    .line 153
    :cond_5
    invoke-direct {p0, p1}, Lmiui/maml/elements/ScreenElement;->loadAnimations(Lorg/w3c/dom/Element;)V

    goto :goto_0

    .end local v0    # "align":Ljava/lang/String;
    .end local v1    # "triggers":Lorg/w3c/dom/Element;
    .end local v2    # "vis":Ljava/lang/String;
    :cond_6
    move v3, v5

    .line 113
    goto :goto_1

    .line 118
    .restart local v2    # "vis":Ljava/lang/String;
    :cond_7
    const-string v3, "true"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 119
    iput-boolean v4, p0, Lmiui/maml/elements/ScreenElement;->mInitShow:Z

    goto :goto_2

    .line 121
    :cond_8
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v3

    invoke-static {v3, v2}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    iput-object v3, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityExpression:Lmiui/maml/data/Expression;

    goto :goto_2

    .line 131
    .restart local v0    # "align":Ljava/lang/String;
    :cond_9
    const-string v3, "left"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 132
    sget-object v3, Lmiui/maml/elements/ScreenElement$Align;->LEFT:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v3, p0, Lmiui/maml/elements/ScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    goto :goto_3

    .line 133
    :cond_a
    const-string v3, "center"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 134
    sget-object v3, Lmiui/maml/elements/ScreenElement$Align;->CENTER:Lmiui/maml/elements/ScreenElement$Align;

    iput-object v3, p0, Lmiui/maml/elements/ScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    goto :goto_3

    .line 141
    :cond_b
    const-string v3, "top"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 142
    sget-object v3, Lmiui/maml/elements/ScreenElement$AlignV;->TOP:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v3, p0, Lmiui/maml/elements/ScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    goto :goto_4

    .line 143
    :cond_c
    const-string v3, "center"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 144
    sget-object v3, Lmiui/maml/elements/ScreenElement$AlignV;->CENTER:Lmiui/maml/elements/ScreenElement$AlignV;

    iput-object v3, p0, Lmiui/maml/elements/ScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    goto :goto_4
.end method

.method private loadAnimations(Lorg/w3c/dom/Element;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 157
    const/4 v0, 0x0

    new-instance v1, Lmiui/maml/elements/ScreenElement$1;

    invoke-direct {v1, p0}, Lmiui/maml/elements/ScreenElement$1;-><init>(Lmiui/maml/elements/ScreenElement;)V

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->traverseXmlElementChildren(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/util/Utils$XmlTraverseListener;)V

    .line 171
    return-void
.end method

.method private setVisibilityVar(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 283
    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    if-eqz v0, :cond_1

    .line 284
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityVar:Lmiui/maml/data/IndexedVariable;

    if-nez v0, :cond_0

    .line 285
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "visibility"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityVar:Lmiui/maml/data/IndexedVariable;

    .line 287
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityVar:Lmiui/maml/data/IndexedVariable;

    if-eqz p1, :cond_2

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 289
    :cond_1
    return-void

    .line 287
    :cond_2
    const-wide/16 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public acceptVisitor(Lmiui/maml/elements/ScreenElementVisitor;)V
    .locals 0
    .param p1, "v"    # Lmiui/maml/elements/ScreenElementVisitor;

    .prologue
    .line 582
    invoke-interface {p1, p0}, Lmiui/maml/elements/ScreenElementVisitor;->visit(Lmiui/maml/elements/ScreenElement;)V

    .line 583
    return-void
.end method

.method public createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 535
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lmiui/maml/RendererController;->createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;

    move-result-object v0

    return-object v0
.end method

.method protected final descale(D)D
    .locals 3
    .param p1, "v"    # D

    .prologue
    .line 556
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v0

    float-to-double v0, v0

    div-double v0, p1, v0

    return-wide v0
.end method

.method protected abstract doRender(Landroid/graphics/Canvas;)V
.end method

.method protected doTick(J)V
    .locals 3
    .param p1, "currentTime"    # J

    .prologue
    .line 444
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 445
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 446
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 447
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/animation/BaseAnimation;->tick(J)V

    .line 446
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 450
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected final evaluate(Lmiui/maml/data/Expression;)D
    .locals 2
    .param p1, "exp"    # Lmiui/maml/data/Expression;

    .prologue
    .line 596
    if-nez p1, :cond_0

    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0

    :cond_0
    invoke-virtual {p1}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    goto :goto_0
.end method

.method protected final evaluateStr(Lmiui/maml/data/Expression;)Ljava/lang/String;
    .locals 1
    .param p1, "exp"    # Lmiui/maml/data/Expression;

    .prologue
    .line 592
    if-nez p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p1}, Lmiui/maml/data/Expression;->evaluateStr()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 221
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .end local p0    # "this":Lmiui/maml/elements/ScreenElement;
    :goto_0
    return-object p0

    .restart local p0    # "this":Lmiui/maml/elements/ScreenElement;
    :cond_0
    const/4 p0, 0x0

    goto :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 316
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v2, :cond_0

    .line 317
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v2}, Lmiui/maml/CommandTriggers;->finish()V

    .line 319
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 320
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 321
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 322
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/BaseAnimation;->finish()V

    .line 321
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 325
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method protected getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "attrName"    # Ljava/lang/String;

    .prologue
    .line 178
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mStyle:Lmiui/maml/StylesManager$Style;

    invoke-static {p1, p2, v0}, Lmiui/maml/util/StyleHelper;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;Lmiui/maml/StylesManager$Style;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "def"    # F

    .prologue
    .line 199
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 201
    .end local p3    # "def":F
    :goto_0
    return p3

    .line 200
    .restart local p3    # "def":F
    :catch_0
    move-exception v0

    .line 201
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method protected getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "def"    # I

    .prologue
    .line 183
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p3

    .line 185
    .end local p3    # "def":I
    :goto_0
    return p3

    .line 184
    .restart local p3    # "def":I
    :catch_0
    move-exception v0

    .line 185
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method protected getAttrAsLong(Lorg/w3c/dom/Element;Ljava/lang/String;J)J
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "attrName"    # Ljava/lang/String;
    .param p3, "def"    # J

    .prologue
    .line 191
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide p3

    .line 193
    .end local p3    # "def":J
    :goto_0
    return-wide p3

    .line 192
    .restart local p3    # "def":J
    :catch_0
    move-exception v0

    .line 193
    .local v0, "e":Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public getContext()Lmiui/maml/ScreenContext;
    .locals 1

    .prologue
    .line 539
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    return-object v0
.end method

.method protected final getFramerate()F
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    invoke-virtual {v0}, Lmiui/maml/FramerateTokenList$FramerateToken;->getFramerate()F

    move-result v0

    goto :goto_0
.end method

.method protected getLeft(FF)F
    .locals 3
    .param p1, "pos"    # F
    .param p2, "width"    # F

    .prologue
    .line 514
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 525
    .end local p1    # "pos":F
    :goto_0
    return p1

    .line 516
    .restart local p1    # "pos":F
    :cond_0
    move v0, p1

    .line 517
    .local v0, "x":F
    sget-object v1, Lmiui/maml/elements/ScreenElement$2;->$SwitchMap$miui$maml$elements$ScreenElement$Align:[I

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlign:Lmiui/maml/elements/ScreenElement$Align;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement$Align;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    move p1, v0

    .line 525
    goto :goto_0

    .line 519
    :pswitch_0
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p2, v1

    sub-float/2addr v0, v1

    .line 520
    goto :goto_1

    .line 522
    :pswitch_1
    sub-float/2addr v0, p2

    goto :goto_1

    .line 517
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 229
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    return-object v0
.end method

.method protected final getNotifierManager()Lmiui/maml/NotifierManager;
    .locals 1

    .prologue
    .line 600
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiui/maml/NotifierManager;->getInstance(Landroid/content/Context;)Lmiui/maml/NotifierManager;

    move-result-object v0

    return-object v0
.end method

.method public getParent()Lmiui/maml/elements/ElementGroup;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    return-object v0
.end method

.method public getRendererController()Lmiui/maml/RendererController;
    .locals 1

    .prologue
    .line 564
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getRoot()Lmiui/maml/ScreenElementRoot;
    .locals 1

    .prologue
    .line 547
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    return-object v0
.end method

.method protected getTop(FF)F
    .locals 3
    .param p1, "pos"    # F
    .param p2, "height"    # F

    .prologue
    .line 499
    const/4 v1, 0x0

    cmpg-float v1, p2, v1

    if-gtz v1, :cond_0

    .line 510
    .end local p1    # "pos":F
    :goto_0
    return p1

    .line 501
    .restart local p1    # "pos":F
    :cond_0
    move v0, p1

    .line 502
    .local v0, "y":F
    sget-object v1, Lmiui/maml/elements/ScreenElement$2;->$SwitchMap$miui$maml$elements$ScreenElement$AlignV:[I

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAlignV:Lmiui/maml/elements/ScreenElement$AlignV;

    invoke-virtual {v2}, Lmiui/maml/elements/ScreenElement$AlignV;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    :goto_1
    move p1, v0

    .line 510
    goto :goto_0

    .line 504
    :pswitch_0
    const/high16 v1, 0x40000000    # 2.0f

    div-float v1, p2, v1

    sub-float/2addr v0, v1

    .line 505
    goto :goto_1

    .line 507
    :pswitch_1
    sub-float/2addr v0, p2

    goto :goto_1

    .line 502
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final getVariables()Lmiui/maml/data/Variables;
    .locals 1

    .prologue
    .line 543
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mVariables:Lmiui/maml/data/Variables;

    return-object v0
.end method

.method public init()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 241
    iget-boolean v2, p0, Lmiui/maml/elements/ScreenElement;->mInitShow:Z

    iput-boolean v2, p0, Lmiui/maml/elements/ScreenElement;->mShow:Z

    .line 243
    iput-object v3, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    .line 244
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v2, :cond_0

    .line 245
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v2}, Lmiui/maml/CommandTriggers;->init()V

    .line 247
    :cond_0
    invoke-virtual {p0, v3}, Lmiui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    .line 248
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 249
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 250
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 251
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/BaseAnimation;->init()V

    .line 250
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 255
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    .line 256
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->isVisible()Z

    move-result v2

    invoke-direct {p0, v2}, Lmiui/maml/elements/ScreenElement;->setVisibilityVar(Z)V

    .line 257
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 212
    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mIsVisible:Z

    return v0
.end method

.method protected isVisibleInner()Z
    .locals 4

    .prologue
    .line 453
    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mShow:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityExpression:Lmiui/maml/data/Expression;

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    if-nez v0, :cond_3

    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0

    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mVisibilityExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v0}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmpl-double v0, v0, v2

    if-gtz v0, :cond_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    invoke-virtual {v0}, Lmiui/maml/elements/ElementGroup;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0
.end method

.method protected onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 174
    const/4 v0, 0x0

    return-object v0
.end method

.method public onHover(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 474
    const/4 v0, 0x0

    return v0
.end method

.method protected onSetAnimBefore()V
    .locals 0

    .prologue
    .line 371
    return-void
.end method

.method protected onSetAnimEnable(Lmiui/maml/animation/BaseAnimation;)V
    .locals 0
    .param p1, "ani"    # Lmiui/maml/animation/BaseAnimation;

    .prologue
    .line 374
    return-void
.end method

.method public onTouch(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 470
    const/4 v0, 0x0

    return v0
.end method

.method protected onVisibilityChange(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 272
    invoke-direct {p0, p1}, Lmiui/maml/elements/ScreenElement;->setVisibilityVar(Z)V

    .line 273
    if-nez p1, :cond_0

    .line 274
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getFramerate()F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/ScreenElement;->mCurFramerate:F

    .line 275
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ScreenElement;->requestFramerate(F)V

    .line 280
    :goto_0
    return-void

    .line 278
    :cond_0
    iget v0, p0, Lmiui/maml/elements/ScreenElement;->mCurFramerate:F

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ScreenElement;->requestFramerate(F)V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 292
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v2, :cond_0

    .line 293
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v2}, Lmiui/maml/CommandTriggers;->pause()V

    .line 295
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 296
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 297
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 298
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/BaseAnimation;->pause()V

    .line 297
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 301
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final pauseAnim()V
    .locals 2

    .prologue
    .line 388
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 389
    .local v0, "elapsedRealtime":J
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->pauseAnim(J)V

    .line 390
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    .line 391
    return-void
.end method

.method protected pauseAnim(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 394
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 395
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 396
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 397
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/animation/BaseAnimation;->pauseAnim(J)V

    .line 396
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 400
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public performAction(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;

    .prologue
    .line 609
    if-nez p1, :cond_1

    .line 616
    :cond_0
    :goto_0
    return-void

    .line 611
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v0, :cond_0

    .line 612
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v0, p1}, Lmiui/maml/CommandTriggers;->onAction(Ljava/lang/String;)V

    .line 614
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->requestUpdate()V

    goto :goto_0
.end method

.method public final playAnim()V
    .locals 8

    .prologue
    const/4 v6, 0x1

    .line 328
    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    move-object v1, p0

    move v7, v6

    invoke-virtual/range {v1 .. v7}, Lmiui/maml/elements/ScreenElement;->playAnim(JJZZ)V

    .line 329
    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 11
    .param p1, "time"    # J
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "isLoop"    # Z
    .param p8, "isDelay"    # Z

    .prologue
    .line 338
    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    .line 339
    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 340
    .local v0, "N":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v0, :cond_0

    .line 341
    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/animation/BaseAnimation;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Lmiui/maml/animation/BaseAnimation;->playAnim(JJJZZ)V

    .line 340
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 344
    .end local v0    # "N":I
    .end local v10    # "i":I
    :cond_0
    return-void
.end method

.method public final playAnim(JJZZ)V
    .locals 11
    .param p1, "startTime"    # J
    .param p3, "endTime"    # J
    .param p5, "isLoop"    # Z
    .param p6, "isDelay"    # Z

    .prologue
    .line 332
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .local v2, "elapsedRealtime":J
    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    move/from16 v8, p5

    move/from16 v9, p6

    .line 333
    invoke-virtual/range {v1 .. v9}, Lmiui/maml/elements/ScreenElement;->playAnim(JJJZZ)V

    .line 334
    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    .line 335
    return-void
.end method

.method protected final postInMainThread(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 605
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/ScreenContext;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 606
    return-void
.end method

.method public postRunnable(Ljava/lang/Runnable;)V
    .locals 2
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 586
    iget-object v1, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    .line 587
    .local v0, "c":Lmiui/maml/RendererController;
    if-eqz v0, :cond_0

    .line 588
    invoke-virtual {v0, p1}, Lmiui/maml/RendererController;->postRunnable(Ljava/lang/Runnable;)V

    .line 589
    :cond_0
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 460
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    .line 461
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    :goto_0
    return-void

    .line 463
    :cond_0
    invoke-virtual {p0, p1}, Lmiui/maml/elements/ScreenElement;->doRender(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected final requestFramerate(F)V
    .locals 2
    .param p1, "f"    # F

    .prologue
    const/4 v1, 0x0

    .line 568
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    .line 579
    :cond_0
    :goto_0
    return-void

    .line 571
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    if-nez v0, :cond_2

    .line 573
    cmpl-float v0, p1, v1

    if-eqz v0, :cond_0

    .line 575
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ScreenElement;->createToken(Ljava/lang/String;)Lmiui/maml/FramerateTokenList$FramerateToken;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    .line 577
    :cond_2
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mFramerateToken:Lmiui/maml/FramerateTokenList$FramerateToken;

    invoke-virtual {v0, p1}, Lmiui/maml/FramerateTokenList$FramerateToken;->requestFramerate(F)V

    goto :goto_0
.end method

.method public requestUpdate()V
    .locals 1

    .prologue
    .line 529
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    .line 530
    .local v0, "c":Lmiui/maml/RendererController;
    if-eqz v0, :cond_0

    .line 531
    invoke-virtual {v0}, Lmiui/maml/RendererController;->requestUpdate()V

    .line 532
    :cond_0
    return-void
.end method

.method public final reset()V
    .locals 2

    .prologue
    .line 419
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 420
    .local v0, "elapsedRealtime":J
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->reset(J)V

    .line 422
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    .line 423
    return-void
.end method

.method public reset(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 426
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 427
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 428
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 429
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/animation/BaseAnimation;->reset(J)V

    .line 428
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 432
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 304
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    if-eqz v2, :cond_0

    .line 305
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mTriggers:Lmiui/maml/CommandTriggers;

    invoke-virtual {v2}, Lmiui/maml/CommandTriggers;->resume()V

    .line 307
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 308
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 309
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 310
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2}, Lmiui/maml/animation/BaseAnimation;->resume()V

    .line 309
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 313
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method

.method public final resumeAnim()V
    .locals 2

    .prologue
    .line 403
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 404
    .local v0, "elapsedRealtime":J
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->resumeAnim(J)V

    .line 405
    invoke-virtual {p0, v0, v1}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    .line 406
    return-void
.end method

.method protected resumeAnim(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 409
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 410
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 411
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 412
    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/animation/BaseAnimation;->resumeAnim(J)V

    .line 411
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 415
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method protected final scale(D)F
    .locals 3
    .param p1, "v"    # D

    .prologue
    .line 552
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getScale()F

    move-result v0

    float-to-double v0, v0

    mul-double/2addr v0, p1

    double-to-float v0, v0

    return v0
.end method

.method protected setActualHeight(D)V
    .locals 5
    .param p1, "value"    # D

    .prologue
    .line 488
    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    if-nez v0, :cond_0

    .line 496
    :goto_0
    return-void

    .line 491
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualHeightVar:Lmiui/maml/data/IndexedVariable;

    if-nez v0, :cond_1

    .line 492
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "actual_h"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualHeightVar:Lmiui/maml/data/IndexedVariable;

    .line 494
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualHeightVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    goto :goto_0
.end method

.method protected setActualWidth(D)V
    .locals 5
    .param p1, "value"    # D

    .prologue
    .line 478
    iget-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mHasName:Z

    if-nez v0, :cond_0

    .line 485
    :goto_0
    return-void

    .line 481
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualWidthVar:Lmiui/maml/data/IndexedVariable;

    if-nez v0, :cond_1

    .line 482
    new-instance v0, Lmiui/maml/data/IndexedVariable;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "actual_w"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    iput-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualWidthVar:Lmiui/maml/data/IndexedVariable;

    .line 484
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mActualWidthVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/IndexedVariable;->set(D)V

    goto :goto_0
.end method

.method public setAnim([Ljava/lang/String;)V
    .locals 5
    .param p1, "tags"    # [Ljava/lang/String;

    .prologue
    .line 354
    iget-object v4, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v4, :cond_2

    .line 355
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->onSetAnimBefore()V

    .line 357
    iget-object v4, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 358
    .local v0, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_2

    .line 359
    iget-object v4, p0, Lmiui/maml/elements/ScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/animation/BaseAnimation;

    .line 360
    .local v1, "ani":Lmiui/maml/animation/BaseAnimation;
    invoke-virtual {v1}, Lmiui/maml/animation/BaseAnimation;->getTag()Ljava/lang/String;

    move-result-object v4

    invoke-static {p1, v4}, Lmiui/maml/elements/ScreenElement;->isTagEnable([Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    .line 361
    .local v2, "enable":Z
    if-nez v2, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Lmiui/maml/animation/BaseAnimation;->setDisable(Z)V

    .line 363
    if-eqz v2, :cond_0

    .line 364
    invoke-virtual {p0, v1}, Lmiui/maml/elements/ScreenElement;->onSetAnimEnable(Lmiui/maml/animation/BaseAnimation;)V

    .line 358
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 361
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 368
    .end local v0    # "N":I
    .end local v1    # "ani":Lmiui/maml/animation/BaseAnimation;
    .end local v2    # "enable":Z
    .end local v3    # "i":I
    :cond_2
    return-void
.end method

.method public final setAnimations(Ljava/lang/String;)V
    .locals 1
    .param p1, "tags"    # Ljava/lang/String;

    .prologue
    .line 349
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "."

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lmiui/maml/elements/ScreenElement;->setAnim([Ljava/lang/String;)V

    .line 350
    return-void

    .line 349
    :cond_1
    const-string v0, ","

    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 225
    iput-object p1, p0, Lmiui/maml/elements/ScreenElement;->mName:Ljava/lang/String;

    .line 226
    return-void
.end method

.method public setParent(Lmiui/maml/elements/ElementGroup;)V
    .locals 0
    .param p1, "parent"    # Lmiui/maml/elements/ElementGroup;

    .prologue
    .line 233
    iput-object p1, p0, Lmiui/maml/elements/ScreenElement;->mParent:Lmiui/maml/elements/ElementGroup;

    .line 234
    return-void
.end method

.method public show(Z)V
    .locals 0
    .param p1, "show"    # Z

    .prologue
    .line 206
    iput-boolean p1, p0, Lmiui/maml/elements/ScreenElement;->mShow:Z

    .line 207
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    .line 208
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->requestUpdate()V

    .line 209
    return-void
.end method

.method public showCategory(Ljava/lang/String;Z)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "show"    # Z

    .prologue
    .line 216
    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mCategory:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/ScreenElement;->mCategory:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 217
    invoke-virtual {p0, p2}, Lmiui/maml/elements/ScreenElement;->show(Z)V

    .line 218
    :cond_0
    return-void
.end method

.method public tick(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 435
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->updateVisibility()V

    .line 436
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->isVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 441
    :goto_0
    return-void

    .line 440
    :cond_0
    invoke-virtual {p0, p1, p2}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    goto :goto_0
.end method

.method protected updateVisibility()V
    .locals 4

    .prologue
    .line 260
    invoke-virtual {p0}, Lmiui/maml/elements/ScreenElement;->isVisibleInner()Z

    move-result v0

    .line 262
    .local v0, "v":Z
    iget-boolean v1, p0, Lmiui/maml/elements/ScreenElement;->mIsVisible:Z

    if-eq v1, v0, :cond_0

    .line 263
    iput-boolean v0, p0, Lmiui/maml/elements/ScreenElement;->mIsVisible:Z

    .line 264
    iget-boolean v1, p0, Lmiui/maml/elements/ScreenElement;->mIsVisible:Z

    invoke-virtual {p0, v1}, Lmiui/maml/elements/ScreenElement;->onVisibilityChange(Z)V

    .line 265
    if-eqz v0, :cond_0

    .line 266
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/ScreenElement;->doTick(J)V

    .line 269
    :cond_0
    return-void
.end method
