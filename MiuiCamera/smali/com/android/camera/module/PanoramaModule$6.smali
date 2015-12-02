.class Lcom/android/camera/module/PanoramaModule$6;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/android/camera/PanoProgressBar$OnDirectionChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/PanoramaModule;->createContentView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/PanoramaModule;


# direct methods
.method constructor <init>(Lcom/android/camera/module/PanoramaModule;)V
    .locals 0

    .prologue
    .line 720
    iput-object p1, p0, Lcom/android/camera/module/PanoramaModule$6;->this$0:Lcom/android/camera/module/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDirectionChange(I)V
    .locals 3
    .param p1, "direction"    # I

    .prologue
    const/16 v2, 0x8

    .line 723
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$6;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mCaptureState:I
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$400(Lcom/android/camera/module/PanoramaModule;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 724
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$6;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mProgressArea:Lcom/android/camera/ui/RotateLayout;
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$1900(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/RotateLayout;->getVisibility()I

    move-result v0

    if-ne v0, v2, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$6;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mStartMoveHintArea:Landroid/view/View;
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$2000(Lcom/android/camera/module/PanoramaModule;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 726
    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$6;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mProgressArea:Lcom/android/camera/ui/RotateLayout;
    invoke-static {v0}, Lcom/android/camera/module/PanoramaModule;->access$1900(Lcom/android/camera/module/PanoramaModule;)Lcom/android/camera/ui/RotateLayout;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/RotateLayout;->setVisibility(I)V

    .line 729
    :cond_0
    return-void
.end method
