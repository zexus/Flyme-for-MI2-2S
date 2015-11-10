.class public Lmiui/maml/elements/LayerScreenElement;
.super Lmiui/maml/elements/ElementGroupRC;
.source "LayerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/LayerScreenElement$ProxyListener;,
        Lmiui/maml/elements/LayerScreenElement$LayerView;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "MAML LayerScreenElement"

.field public static final TAG_NAME:Ljava/lang/String; = "Layer"


# instance fields
.field private mHardware:Z

.field private mLayoutParams:Landroid/view/WindowManager$LayoutParams;

.field private mView:Lmiui/maml/elements/LayerScreenElement$LayerView;

.field private mViewAdded:Z

.field private mWindowContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroupRC;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 31
    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v0

    iget-object v0, v0, Lmiui/maml/ScreenContext;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mWindowContext:Landroid/content/Context;

    .line 33
    new-instance v0, Lmiui/maml/elements/LayerScreenElement$LayerView;

    iget-object v1, p0, Lmiui/maml/elements/LayerScreenElement;->mWindowContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/LayerScreenElement$LayerView;-><init>(Lmiui/maml/elements/LayerScreenElement;Landroid/content/Context;)V

    iput-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mView:Lmiui/maml/elements/LayerScreenElement$LayerView;

    .line 34
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getWidth()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p2}, Lmiui/maml/ScreenElementRoot;->getHeight()F

    move-result v2

    float-to-int v2, v2

    invoke-direct {v0, v1, v2}, Landroid/view/WindowManager$LayoutParams;-><init>(II)V

    iput-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 35
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, 0x1

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 36
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x100

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 37
    invoke-direct {p0, p1}, Lmiui/maml/elements/LayerScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 38
    return-void
.end method

.method static synthetic access$000(Lmiui/maml/elements/LayerScreenElement;)Lmiui/maml/elements/LayerScreenElement$LayerView;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/LayerScreenElement;

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mView:Lmiui/maml/elements/LayerScreenElement$LayerView;

    return-object v0
.end method

.method static synthetic access$100(Lmiui/maml/elements/LayerScreenElement;)V
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/LayerScreenElement;

    .prologue
    .line 19
    invoke-direct {p0}, Lmiui/maml/elements/LayerScreenElement;->updateView()V

    return-void
.end method

.method static synthetic access$200(Lmiui/maml/elements/LayerScreenElement;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/LayerScreenElement;

    .prologue
    .line 19
    iget-boolean v0, p0, Lmiui/maml/elements/LayerScreenElement;->mViewAdded:Z

    return v0
.end method

.method static synthetic access$202(Lmiui/maml/elements/LayerScreenElement;Z)Z
    .locals 0
    .param p0, "x0"    # Lmiui/maml/elements/LayerScreenElement;
    .param p1, "x1"    # Z

    .prologue
    .line 19
    iput-boolean p1, p0, Lmiui/maml/elements/LayerScreenElement;->mViewAdded:Z

    return p1
.end method

.method static synthetic access$300(Lmiui/maml/elements/LayerScreenElement;)Landroid/view/WindowManager$LayoutParams;
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/LayerScreenElement;

    .prologue
    .line 19
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method static synthetic access$400(Lmiui/maml/elements/LayerScreenElement;Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/LayerScreenElement;
    .param p1, "x1"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 19
    invoke-direct {p0, p1}, Lmiui/maml/elements/LayerScreenElement;->updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lmiui/maml/elements/LayerScreenElement;)Z
    .locals 1
    .param p0, "x0"    # Lmiui/maml/elements/LayerScreenElement;

    .prologue
    .line 19
    iget-boolean v0, p0, Lmiui/maml/elements/LayerScreenElement;->mHardware:Z

    return v0
.end method

.method private final finishView()V
    .locals 1

    .prologue
    .line 128
    iget-boolean v0, p0, Lmiui/maml/elements/LayerScreenElement;->mViewAdded:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getViewManager()Landroid/view/ViewManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    new-instance v0, Lmiui/maml/elements/LayerScreenElement$4;

    invoke-direct {v0, p0}, Lmiui/maml/elements/LayerScreenElement$4;-><init>(Lmiui/maml/elements/LayerScreenElement;)V

    invoke-virtual {p0, v0}, Lmiui/maml/elements/LayerScreenElement;->postInMainThread(Ljava/lang/Runnable;)V

    .line 139
    :cond_0
    return-void
.end method

.method private final initView()V
    .locals 1

    .prologue
    .line 110
    iget-boolean v0, p0, Lmiui/maml/elements/LayerScreenElement;->mViewAdded:Z

    if-nez v0, :cond_0

    .line 111
    new-instance v0, Lmiui/maml/elements/LayerScreenElement$3;

    invoke-direct {v0, p0}, Lmiui/maml/elements/LayerScreenElement$3;-><init>(Lmiui/maml/elements/LayerScreenElement;)V

    invoke-virtual {p0, v0}, Lmiui/maml/elements/LayerScreenElement;->postInMainThread(Ljava/lang/Runnable;)V

    .line 125
    :cond_0
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 41
    const-string v0, "hardware"

    invoke-virtual {p0, p1, v0}, Lmiui/maml/elements/LayerScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lmiui/maml/elements/LayerScreenElement;->mHardware:Z

    .line 42
    return-void
.end method

.method private updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    .locals 4
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 142
    const/4 v0, 0x0

    .line 143
    .local v0, "changed":Z
    invoke-virtual {p0}, Lmiui/maml/elements/LayerScreenElement;->getWidth()F

    move-result v3

    float-to-int v2, v3

    .line 144
    .local v2, "width":I
    iget v3, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    if-eq v3, v2, :cond_0

    .line 145
    iput v2, p1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 146
    const/4 v0, 0x1

    .line 148
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/LayerScreenElement;->getHeight()F

    move-result v3

    float-to-int v1, v3

    .line 149
    .local v1, "height":I
    iget v3, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-eq v3, v1, :cond_1

    .line 150
    iput v1, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 151
    const/4 v0, 0x1

    .line 153
    :cond_1
    return v0
.end method

.method private final updateView()V
    .locals 3

    .prologue
    .line 92
    iget-boolean v0, p0, Lmiui/maml/elements/LayerScreenElement;->mViewAdded:Z

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mView:Lmiui/maml/elements/LayerScreenElement$LayerView;

    invoke-virtual {p0}, Lmiui/maml/elements/LayerScreenElement;->getAbsoluteLeft()F

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/LayerScreenElement$LayerView;->setX(F)V

    .line 94
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mView:Lmiui/maml/elements/LayerScreenElement$LayerView;

    invoke-virtual {p0}, Lmiui/maml/elements/LayerScreenElement;->getAbsoluteTop()F

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/LayerScreenElement$LayerView;->setY(F)V

    .line 95
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mView:Lmiui/maml/elements/LayerScreenElement$LayerView;

    invoke-virtual {p0}, Lmiui/maml/elements/LayerScreenElement;->getPivotX()F

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/LayerScreenElement$LayerView;->setPivotX(F)V

    .line 96
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mView:Lmiui/maml/elements/LayerScreenElement$LayerView;

    invoke-virtual {p0}, Lmiui/maml/elements/LayerScreenElement;->getPivotY()F

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/LayerScreenElement$LayerView;->setPivotY(F)V

    .line 97
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mView:Lmiui/maml/elements/LayerScreenElement$LayerView;

    invoke-virtual {p0}, Lmiui/maml/elements/LayerScreenElement;->getRotation()F

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/LayerScreenElement$LayerView;->setRotation(F)V

    .line 98
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mView:Lmiui/maml/elements/LayerScreenElement$LayerView;

    invoke-virtual {p0}, Lmiui/maml/elements/LayerScreenElement;->getRotationX()F

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/LayerScreenElement$LayerView;->setRotationX(F)V

    .line 99
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mView:Lmiui/maml/elements/LayerScreenElement$LayerView;

    invoke-virtual {p0}, Lmiui/maml/elements/LayerScreenElement;->getRotationY()F

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/LayerScreenElement$LayerView;->setRotationY(F)V

    .line 100
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mView:Lmiui/maml/elements/LayerScreenElement$LayerView;

    invoke-virtual {p0}, Lmiui/maml/elements/LayerScreenElement;->getAlpha()I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    invoke-virtual {v0, v1}, Lmiui/maml/elements/LayerScreenElement$LayerView;->setAlpha(F)V

    .line 101
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mView:Lmiui/maml/elements/LayerScreenElement$LayerView;

    invoke-virtual {p0}, Lmiui/maml/elements/LayerScreenElement;->getScaleX()F

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/LayerScreenElement$LayerView;->setScaleX(F)V

    .line 102
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mView:Lmiui/maml/elements/LayerScreenElement$LayerView;

    invoke-virtual {p0}, Lmiui/maml/elements/LayerScreenElement;->getScaleY()F

    move-result v1

    invoke-virtual {v0, v1}, Lmiui/maml/elements/LayerScreenElement$LayerView;->setScaleY(F)V

    .line 103
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-direct {p0, v0}, Lmiui/maml/elements/LayerScreenElement;->updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mView:Lmiui/maml/elements/LayerScreenElement$LayerView;

    iget-object v1, p0, Lmiui/maml/elements/LayerScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/LayerScreenElement$LayerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 107
    :cond_0
    return-void
.end method


# virtual methods
.method protected doTick(J)V
    .locals 3
    .param p1, "currentTime"    # J

    .prologue
    .line 76
    iget-object v2, p0, Lmiui/maml/elements/LayerScreenElement;->mAnimations:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 77
    iget-object v2, p0, Lmiui/maml/elements/LayerScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 78
    .local v0, "N":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 79
    iget-object v2, p0, Lmiui/maml/elements/LayerScreenElement;->mAnimations:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/maml/animation/BaseAnimation;

    invoke-virtual {v2, p1, p2}, Lmiui/maml/animation/BaseAnimation;->tick(J)V

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 82
    .end local v0    # "N":I
    .end local v1    # "i":I
    :cond_0
    invoke-virtual {p0}, Lmiui/maml/elements/LayerScreenElement;->evaluateAlpha()I

    move-result v2

    iput v2, p0, Lmiui/maml/elements/LayerScreenElement;->mAlpha:I

    .line 83
    iget v2, p0, Lmiui/maml/elements/LayerScreenElement;->mAlpha:I

    if-gez v2, :cond_1

    const/4 v2, 0x0

    :goto_1
    iput v2, p0, Lmiui/maml/elements/LayerScreenElement;->mAlpha:I

    .line 84
    new-instance v2, Lmiui/maml/elements/LayerScreenElement$2;

    invoke-direct {v2, p0}, Lmiui/maml/elements/LayerScreenElement$2;-><init>(Lmiui/maml/elements/LayerScreenElement;)V

    invoke-virtual {p0, v2}, Lmiui/maml/elements/LayerScreenElement;->postInMainThread(Ljava/lang/Runnable;)V

    .line 89
    return-void

    .line 83
    :cond_1
    iget v2, p0, Lmiui/maml/elements/LayerScreenElement;->mAlpha:I

    goto :goto_1
.end method

.method public finish()V
    .locals 0

    .prologue
    .line 57
    invoke-super {p0}, Lmiui/maml/elements/ElementGroupRC;->finish()V

    .line 58
    invoke-direct {p0}, Lmiui/maml/elements/LayerScreenElement;->finishView()V

    .line 59
    return-void
.end method

.method public init()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Lmiui/maml/elements/ElementGroupRC;->init()V

    .line 48
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getViewManager()Landroid/view/ViewManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 49
    invoke-direct {p0}, Lmiui/maml/elements/LayerScreenElement;->initView()V

    .line 53
    :goto_0
    return-void

    .line 51
    :cond_0
    const-string v0, "MAML LayerScreenElement"

    const-string v1, "ViewManager must be set before init"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected onControllerCreated(Lmiui/maml/RendererController;)V
    .locals 2
    .param p1, "c"    # Lmiui/maml/RendererController;

    .prologue
    .line 199
    new-instance v0, Lmiui/maml/elements/LayerScreenElement$ProxyListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lmiui/maml/elements/LayerScreenElement$ProxyListener;-><init>(Lmiui/maml/elements/LayerScreenElement;Lmiui/maml/elements/LayerScreenElement$1;)V

    invoke-virtual {p1, v0}, Lmiui/maml/RendererController;->setListener(Lmiui/maml/RendererController$Listener;)V

    .line 200
    return-void
.end method

.method protected onVisibilityChange(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    .line 158
    move v0, p1

    .line 159
    .local v0, "_v":Z
    new-instance v1, Lmiui/maml/elements/LayerScreenElement$5;

    invoke-direct {v1, p0, v0}, Lmiui/maml/elements/LayerScreenElement$5;-><init>(Lmiui/maml/elements/LayerScreenElement;Z)V

    invoke-virtual {p0, v1}, Lmiui/maml/elements/LayerScreenElement;->postInMainThread(Ljava/lang/Runnable;)V

    .line 164
    return-void
.end method

.method public render(Landroid/graphics/Canvas;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 63
    return-void
.end method

.method public setHardwareLayer(Z)V
    .locals 1
    .param p1, "b"    # Z

    .prologue
    .line 66
    new-instance v0, Lmiui/maml/elements/LayerScreenElement$1;

    invoke-direct {v0, p0, p1}, Lmiui/maml/elements/LayerScreenElement$1;-><init>(Lmiui/maml/elements/LayerScreenElement;Z)V

    invoke-virtual {p0, v0}, Lmiui/maml/elements/LayerScreenElement;->postInMainThread(Ljava/lang/Runnable;)V

    .line 71
    return-void
.end method
