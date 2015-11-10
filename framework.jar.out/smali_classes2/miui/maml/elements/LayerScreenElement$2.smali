.class Lmiui/maml/elements/LayerScreenElement$2;
.super Ljava/lang/Object;
.source "LayerScreenElement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/maml/elements/LayerScreenElement;->doTick(J)V
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
    .line 84
    iput-object p1, p0, Lmiui/maml/elements/LayerScreenElement$2;->this$0:Lmiui/maml/elements/LayerScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lmiui/maml/elements/LayerScreenElement$2;->this$0:Lmiui/maml/elements/LayerScreenElement;

    # invokes: Lmiui/maml/elements/LayerScreenElement;->updateView()V
    invoke-static {v0}, Lmiui/maml/elements/LayerScreenElement;->access$100(Lmiui/maml/elements/LayerScreenElement;)V

    .line 87
    return-void
.end method
