.class Lcom/android/camera/ui/V6BottomControlUpperPanel$1;
.super Ljava/lang/Object;
.source "V6BottomControlUpperPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/ui/V6BottomControlUpperPanel;->animateOut(Ljava/lang/Runnable;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6BottomControlUpperPanel;

.field final synthetic val$callback:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/camera/ui/V6BottomControlUpperPanel;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel$1;->this$0:Lcom/android/camera/ui/V6BottomControlUpperPanel;

    iput-object p2, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel$1;->val$callback:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 144
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel$1;->val$callback:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 145
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel$1;->val$callback:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel$1;->this$0:Lcom/android/camera/ui/V6BottomControlUpperPanel;

    # getter for: Lcom/android/camera/ui/V6BottomControlUpperPanel;->mControlVisible:Z
    invoke-static {v0}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->access$000(Lcom/android/camera/ui/V6BottomControlUpperPanel;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 148
    iget-object v0, p0, Lcom/android/camera/ui/V6BottomControlUpperPanel$1;->this$0:Lcom/android/camera/ui/V6BottomControlUpperPanel;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6BottomControlUpperPanel;->setVisibility(I)V

    .line 150
    :cond_1
    return-void
.end method
