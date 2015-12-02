.class Lcom/android/camera/module/PanoramaModule$3;
.super Ljava/lang/Object;
.source "PanoramaModule.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/module/PanoramaModule;->handleMessage(IILjava/lang/Object;Ljava/lang/Object;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/module/PanoramaModule;

.field final synthetic val$extra1:Ljava/lang/Object;


# direct methods
.method constructor <init>(Lcom/android/camera/module/PanoramaModule;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 393
    iput-object p1, p0, Lcom/android/camera/module/PanoramaModule$3;->this$0:Lcom/android/camera/module/PanoramaModule;

    iput-object p2, p0, Lcom/android/camera/module/PanoramaModule$3;->val$extra1:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 396
    iget-object v1, p0, Lcom/android/camera/module/PanoramaModule$3;->this$0:Lcom/android/camera/module/PanoramaModule;

    iget-object v0, p0, Lcom/android/camera/module/PanoramaModule$3;->val$extra1:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/android/camera/module/PanoramaModule;->switchToOtherMode(I)V
    invoke-static {v1, v0}, Lcom/android/camera/module/PanoramaModule;->access$1700(Lcom/android/camera/module/PanoramaModule;I)V

    .line 397
    return-void
.end method
