.class Lmiui/maml/elements/LayerScreenElement$3;
.super Ljava/lang/Object;
.source "LayerScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/LayerScreenElement;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/LayerScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/LayerScreenElement;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lmiui/maml/elements/LayerScreenElement$3;->this$0:Lmiui/maml/elements/LayerScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 113
    iget-object v1, p0, Lmiui/maml/elements/LayerScreenElement$3;->this$0:Lmiui/maml/elements/LayerScreenElement;

    iget-object v1, v1, Lmiui/maml/elements/LayerScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getViewManager()Landroid/view/ViewManager;

    move-result-object v0

    .line 114
    .local v0, "vm":Landroid/view/ViewManager;
    iget-object v1, p0, Lmiui/maml/elements/LayerScreenElement$3;->this$0:Lmiui/maml/elements/LayerScreenElement;

    # getter for: Lmiui/maml/elements/LayerScreenElement;->mViewAdded:Z
    invoke-static {v1}, Lmiui/maml/elements/LayerScreenElement;->access$200(Lmiui/maml/elements/LayerScreenElement;)Z

    move-result v1

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 115
    iget-object v1, p0, Lmiui/maml/elements/LayerScreenElement$3;->this$0:Lmiui/maml/elements/LayerScreenElement;

    iget-object v2, p0, Lmiui/maml/elements/LayerScreenElement$3;->this$0:Lmiui/maml/elements/LayerScreenElement;

    # getter for: Lmiui/maml/elements/LayerScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lmiui/maml/elements/LayerScreenElement;->access$300(Lmiui/maml/elements/LayerScreenElement;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    # invokes: Lmiui/maml/elements/LayerScreenElement;->updateLayoutParams(Landroid/view/ViewGroup$LayoutParams;)Z
    invoke-static {v1, v2}, Lmiui/maml/elements/LayerScreenElement;->access$400(Lmiui/maml/elements/LayerScreenElement;Landroid/view/ViewGroup$LayoutParams;)Z

    .line 116
    iget-object v1, p0, Lmiui/maml/elements/LayerScreenElement$3;->this$0:Lmiui/maml/elements/LayerScreenElement;

    # getter for: Lmiui/maml/elements/LayerScreenElement;->mView:Lmiui/maml/elements/LayerScreenElement$LayerView;
    invoke-static {v1}, Lmiui/maml/elements/LayerScreenElement;->access$000(Lmiui/maml/elements/LayerScreenElement;)Lmiui/maml/elements/LayerScreenElement$LayerView;

    move-result-object v1

    iget-object v2, p0, Lmiui/maml/elements/LayerScreenElement$3;->this$0:Lmiui/maml/elements/LayerScreenElement;

    # getter for: Lmiui/maml/elements/LayerScreenElement;->mLayoutParams:Landroid/view/WindowManager$LayoutParams;
    invoke-static {v2}, Lmiui/maml/elements/LayerScreenElement;->access$300(Lmiui/maml/elements/LayerScreenElement;)Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/view/ViewManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 117
    iget-object v1, p0, Lmiui/maml/elements/LayerScreenElement$3;->this$0:Lmiui/maml/elements/LayerScreenElement;

    # getter for: Lmiui/maml/elements/LayerScreenElement;->mHardware:Z
    invoke-static {v1}, Lmiui/maml/elements/LayerScreenElement;->access$500(Lmiui/maml/elements/LayerScreenElement;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 118
    iget-object v1, p0, Lmiui/maml/elements/LayerScreenElement$3;->this$0:Lmiui/maml/elements/LayerScreenElement;

    # getter for: Lmiui/maml/elements/LayerScreenElement;->mView:Lmiui/maml/elements/LayerScreenElement$LayerView;
    invoke-static {v1}, Lmiui/maml/elements/LayerScreenElement;->access$000(Lmiui/maml/elements/LayerScreenElement;)Lmiui/maml/elements/LayerScreenElement$LayerView;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lmiui/maml/elements/LayerScreenElement$LayerView;->setLayerType(ILandroid/graphics/Paint;)V

    .line 120
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/LayerScreenElement$3;->this$0:Lmiui/maml/elements/LayerScreenElement;

    const/4 v2, 0x1

    # setter for: Lmiui/maml/elements/LayerScreenElement;->mViewAdded:Z
    invoke-static {v1, v2}, Lmiui/maml/elements/LayerScreenElement;->access$202(Lmiui/maml/elements/LayerScreenElement;Z)Z

    .line 122
    :cond_1
    return-void
.end method
