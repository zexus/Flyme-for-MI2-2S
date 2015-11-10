.class public abstract Lmiui/maml/elements/ElementGroupRC;
.super Lmiui/maml/elements/ElementGroup;
.source "ElementGroupRC.java"


# instance fields
.field protected mController:Lmiui/maml/RendererController;

.field private mFrameRate:F


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/ElementGroup;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 17
    new-instance v0, Lmiui/maml/RendererController;

    invoke-direct {v0}, Lmiui/maml/RendererController;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ElementGroupRC;->mController:Lmiui/maml/RendererController;

    .line 18
    iget-object v0, p0, Lmiui/maml/elements/ElementGroupRC;->mController:Lmiui/maml/RendererController;

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ElementGroupRC;->onControllerCreated(Lmiui/maml/RendererController;)V

    .line 19
    iget-object v0, p0, Lmiui/maml/elements/ElementGroupRC;->mController:Lmiui/maml/RendererController;

    invoke-virtual {v0}, Lmiui/maml/RendererController;->init()V

    .line 20
    const-string v0, "frameRate"

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lmiui/maml/util/Utils;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v0

    iput v0, p0, Lmiui/maml/elements/ElementGroupRC;->mFrameRate:F

    .line 21
    return-void
.end method


# virtual methods
.method public getRendererController()Lmiui/maml/RendererController;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lmiui/maml/elements/ElementGroupRC;->mController:Lmiui/maml/RendererController;

    return-object v0
.end method

.method public init()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lmiui/maml/elements/ElementGroup;->init()V

    .line 26
    iget v0, p0, Lmiui/maml/elements/ElementGroupRC;->mFrameRate:F

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ElementGroupRC;->requestFramerate(F)V

    .line 27
    return-void
.end method

.method protected abstract onControllerCreated(Lmiui/maml/RendererController;)V
.end method
