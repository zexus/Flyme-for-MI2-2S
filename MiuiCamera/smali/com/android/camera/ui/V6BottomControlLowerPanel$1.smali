.class Lcom/android/camera/ui/V6BottomControlLowerPanel$1;
.super Ljava/lang/Object;
.source "V6BottomControlLowerPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/V6BottomControlLowerPanel;->animateOut(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6BottomControlLowerPanel;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6BottomControlLowerPanel;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 127
    iput-object p1, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel$1;->this$0:Lcom/android/camera/ui/V6BottomControlLowerPanel;

    iput-object p2, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 130
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 133
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel$1;->this$0:Lcom/android/camera/ui/V6BottomControlLowerPanel;

    # getter for: Lcom/android/camera/ui/V6BottomControlLowerPanel;->mControlVisible:Z
    invoke-static {v0}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->access$000(Lcom/android/camera/ui/V6BottomControlLowerPanel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 134
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlLowerPanel$1;->this$0:Lcom/android/camera/ui/V6BottomControlLowerPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6BottomControlLowerPanel;->setVisibility(I)V

    .line 136
    :cond_1
    return-void
.end method
