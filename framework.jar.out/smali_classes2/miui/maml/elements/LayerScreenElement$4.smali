.class Lmiui/maml/elements/LayerScreenElement$4;
.super Ljava/lang/Object;
.source "LayerScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/LayerScreenElement;->finishView()V
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
    .line 129
    iput-object p1, p0, Lmiui/maml/elements/LayerScreenElement$4;->this$0:Lmiui/maml/elements/LayerScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 131
    iget-object v1, p0, Lmiui/maml/elements/LayerScreenElement$4;->this$0:Lmiui/maml/elements/LayerScreenElement;

    iget-object v1, v1, Lmiui/maml/elements/LayerScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-virtual {v1}, Lmiui/maml/ScreenElementRoot;->getViewManager()Landroid/view/ViewManager;

    move-result-object v0

    .line 132
    .local v0, "vm":Landroid/view/ViewManager;
    if-eqz v0, :cond_0

    .line 133
    iget-object v1, p0, Lmiui/maml/elements/LayerScreenElement$4;->this$0:Lmiui/maml/elements/LayerScreenElement;

    # getter for: Lmiui/maml/elements/LayerScreenElement;->mView:Lmiui/maml/elements/LayerScreenElement$LayerView;
    invoke-static {v1}, Lmiui/maml/elements/LayerScreenElement;->access$000(Lmiui/maml/elements/LayerScreenElement;)Lmiui/maml/elements/LayerScreenElement$LayerView;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/view/ViewManager;->removeView(Landroid/view/View;)V

    .line 134
    iget-object v1, p0, Lmiui/maml/elements/LayerScreenElement$4;->this$0:Lmiui/maml/elements/LayerScreenElement;

    const/4 v2, 0x0

    # setter for: Lmiui/maml/elements/LayerScreenElement;->mViewAdded:Z
    invoke-static {v1, v2}, Lmiui/maml/elements/LayerScreenElement;->access$202(Lmiui/maml/elements/LayerScreenElement;Z)Z

    .line 136
    :cond_0
    return-void
.end method
