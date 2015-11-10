.class Lmiui/maml/elements/LayerScreenElement$5;
.super Ljava/lang/Object;
.source "LayerScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/LayerScreenElement;->onVisibilityChange(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/maml/elements/LayerScreenElement;

.field final synthetic val$_v:Z


# direct methods
.method constructor <init>(Lmiui/maml/elements/LayerScreenElement;Z)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lmiui/maml/elements/LayerScreenElement$5;->this$0:Lmiui/maml/elements/LayerScreenElement;

    iput-boolean p2, p0, Lmiui/maml/elements/LayerScreenElement$5;->val$_v:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement$5;->this$0:Lmiui/maml/elements/LayerScreenElement;

    # getter for: Lmiui/maml/elements/LayerScreenElement;->mView:Lmiui/maml/elements/LayerScreenElement$LayerView;
    invoke-static {v0}, Lmiui/maml/elements/LayerScreenElement;->access$000(Lmiui/maml/elements/LayerScreenElement;)Lmiui/maml/elements/LayerScreenElement$LayerView;

    move-result-object v1

    iget-boolean v0, p0, Lmiui/maml/elements/LayerScreenElement$5;->val$_v:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lmiui/maml/elements/LayerScreenElement$LayerView;->setVisibility(I)V

    .line 162
    return-void

    .line 161
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method
