.class Lmiui/maml/elements/LayerScreenElement$ProxyListener;
.super Lmiui/maml/RendererController$EmptyListener;
.source "LayerScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/LayerScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ProxyListener"
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/LayerScreenElement;


# direct methods
.method private constructor <init>(Lmiui/maml/elements/LayerScreenElement;)V
    .locals 0

    .prologue
    .line 179
    iput-object p1, p0, Lmiui/maml/elements/LayerScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/LayerScreenElement;

    invoke-direct {p0}, Lmiui/maml/RendererController$EmptyListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiui/maml/elements/LayerScreenElement;Lmiui/maml/elements/LayerScreenElement$1;)V
    .locals 0
    .param p1, "x0"    # Lmiui/maml/elements/LayerScreenElement;
    .param p2, "x1"    # Lmiui/maml/elements/LayerScreenElement$1;

    .prologue
    .line 179
    invoke-direct {p0, p1}, Lmiui/maml/elements/LayerScreenElement$ProxyListener;-><init>(Lmiui/maml/elements/LayerScreenElement;)V

    return-void
.end method


# virtual methods
.method public doRender()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/LayerScreenElement;

    # getter for: Lmiui/maml/elements/LayerScreenElement;->mView:Lmiui/maml/elements/LayerScreenElement$LayerView;
    invoke-static {v0}, Lmiui/maml/elements/LayerScreenElement;->access$000(Lmiui/maml/elements/LayerScreenElement;)Lmiui/maml/elements/LayerScreenElement$LayerView;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/elements/LayerScreenElement$LayerView;->postInvalidate()V

    .line 189
    return-void
.end method

.method public tick(J)V
    .locals 1
    .param p1, "currentTime"    # J

    .prologue
    .line 183
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/LayerScreenElement;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/elements/LayerScreenElement;->doTickChildren(J)V

    .line 184
    return-void
.end method

.method public triggerUpdate()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement$ProxyListener;->this$0:Lmiui/maml/elements/LayerScreenElement;

    iget-object v0, v0, Lmiui/maml/elements/LayerScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v0}, Lmiui/maml/ScreenElementRoot;->getRendererController()Lmiui/maml/RendererController;

    move-result-object v0

    invoke-virtual {v0}, Lmiui/maml/RendererController;->triggerUpdate()V

    .line 194
    return-void
.end method
