.class Lcom/android/camera/Camera$MyOrientationEventListener;
.super Landroid/view/OrientationEventListener;
.source "Camera.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/Camera;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyOrientationEventListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/Camera;


# direct methods
.method public constructor <init>(Lcom/android/camera/Camera;Landroid/content/Context;)V
    .locals 0
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 315
    iput-object p1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    .line 316
    invoke-direct {p0, p2}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;)V

    .line 317
    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 3
    .param p1, "orientation"    # I

    .prologue
    .line 324
    const/4 v1, -0x1

    if-ne p1, v1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 325
    :cond_0
    iget-object v1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget v2, v2, Lcom/android/camera/Camera;->mOrientation:I

    invoke-static {p1, v2}, Lcom/android/camera/Util;->roundOrientation(II)I

    move-result v2

    iput v2, v1, Lcom/android/camera/Camera;->mOrientation:I

    .line 328
    iget-object v1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget v1, v1, Lcom/android/camera/Camera;->mOrientation:I

    iget-object v2, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    invoke-static {v2}, Lcom/android/camera/Util;->getDisplayRotation(Landroid/app/Activity;)I

    move-result v2

    add-int/2addr v1, v2

    rem-int/lit16 v0, v1, 0x168

    .line 331
    .local v0, "orientationCompensation":I
    iget-object v1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget v1, v1, Lcom/android/camera/Camera;->mOrientationCompensation:I

    if-eq v1, v0, :cond_1

    .line 332
    iget-object v1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iput v0, v1, Lcom/android/camera/Camera;->mOrientationCompensation:I

    .line 334
    :cond_1
    iget-object v1, p0, Lcom/android/camera/Camera$MyOrientationEventListener;->this$0:Lcom/android/camera/Camera;

    iget-object v1, v1, Lcom/android/camera/Camera;->mCurrentModule:Lcom/android/camera/module/Module;

    invoke-interface {v1, p1}, Lcom/android/camera/module/Module;->onOrientationChanged(I)V

    goto :goto_0
.end method
