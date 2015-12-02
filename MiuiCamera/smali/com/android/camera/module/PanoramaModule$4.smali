.class Lcom/android/camera/module/PanoramaModule$4;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Lcom/android/camera/MosaicFrameProcessor$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/PanoramaModule;->startCapture()V
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
    .line 609
    iput-object p1, p0, Lcom/android/camera/module/PanoramaModule$4;->this$0:Lcom/android/camera/module/PanoramaModule;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(ZFFFF)V
    .locals 4
    .param p1, "isFinished"    # Z
    .param p2, "panningRateX"    # F
    .param p3, "panningRateY"    # F
    .param p4, "progressX"    # F
    .param p5, "progressY"    # F

    .prologue
    .line 613
    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v0

    .line 614
    .local v0, "message":Landroid/os/Message;
    const/4 v2, 0x6

    iput v2, v0, Landroid/os/Message;->what:I

    .line 615
    new-instance v1, Lcom/android/camera/module/PanoramaModule$ProgressData;

    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule$4;->this$0:Lcom/android/camera/module/PanoramaModule;

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/android/camera/module/PanoramaModule$ProgressData;-><init>(Lcom/android/camera/module/PanoramaModule;Lcom/android/camera/module/PanoramaModule$1;)V

    .line 616
    .local v1, "pd":Lcom/android/camera/module/PanoramaModule$ProgressData;
    iput-boolean p1, v1, Lcom/android/camera/module/PanoramaModule$ProgressData;->isFinished:Z

    .line 617
    iput p2, v1, Lcom/android/camera/module/PanoramaModule$ProgressData;->panningRateX:F

    .line 618
    iput p3, v1, Lcom/android/camera/module/PanoramaModule$ProgressData;->panningRateY:F

    .line 619
    iput p4, v1, Lcom/android/camera/module/PanoramaModule$ProgressData;->progressX:F

    .line 620
    iput p5, v1, Lcom/android/camera/module/PanoramaModule$ProgressData;->progressY:F

    .line 621
    iput-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 622
    iget-object v2, p0, Lcom/android/camera/module/PanoramaModule$4;->this$0:Lcom/android/camera/module/PanoramaModule;

    # getter for: Lcom/android/camera/module/PanoramaModule;->mMainHandler:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/module/PanoramaModule;->access$300(Lcom/android/camera/module/PanoramaModule;)Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 623
    return-void
.end method
