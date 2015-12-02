.class Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "V6GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MyGestureListener"
.end annotation


# instance fields
.field private mHandleConfirmTap:Z

.field final synthetic this$0:Lcom/android/camera/ui/V6GestureRecognizer;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;)V
    .locals 0

    .prologue
    .line 280
    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;Lcom/android/camera/ui/V6GestureRecognizer$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/V6GestureRecognizer;
    .param p2, "x1"    # Lcom/android/camera/ui/V6GestureRecognizer$1;

    .prologue
    .line 280
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;-><init>(Lcom/android/camera/ui/V6GestureRecognizer;)V

    return-void
.end method

.method private handleSingleTap(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x0

    .line 283
    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->couldNotifyGesture(Z)Z
    invoke-static {v1, v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$700(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;
    invoke-static {v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$800(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/UIController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 284
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # getter for: Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$300(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/module/Module;->onSingleTapUp(II)V

    .line 285
    const/4 v0, 0x1

    .line 287
    :cond_0
    return v0
.end method


# virtual methods
.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 365
    const-string v0, "CameraGestureRecognizer"

    const-string v1, "onLongPress"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    const/4 v1, 0x0

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->couldNotifyGesture(Z)Z
    invoke-static {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$700(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$800(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # getter for: Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$300(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-interface {v0, v1, v2}, Lcom/android/camera/module/Module;->onLongPress(II)V

    .line 370
    :cond_0
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 9
    .param p1, "e1"    # Landroid/view/MotionEvent;
    .param p2, "e2"    # Landroid/view/MotionEvent;
    .param p3, "dx"    # F
    .param p4, "dy"    # F

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v4

    float-to-int v4, v4

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->getMoveVector(IIII)Landroid/graphics/Point;
    invoke-static {v0, v1, v2, v3, v4}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;IIII)Landroid/graphics/Point;

    move-result-object v8

    .line 315
    .local v8, "vector":Landroid/graphics/Point;
    const-string v0, "CameraGestureRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onScroll dx="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dy="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 316
    const/4 v6, 0x0

    .line 317
    .local v6, "detectGesture":Z
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    const/4 v1, 0x0

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->couldNotifyGesture(Z)Z
    invoke-static {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$700(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # getter for: Lcom/android/camera/ui/V6GestureRecognizer;->mSwitchGestureEnable:Z
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1200(Lcom/android/camera/ui/V6GestureRecognizer;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # getter for: Lcom/android/camera/ui/V6GestureRecognizer;->mMultiTouch:Z
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1300(Lcom/android/camera/ui/V6GestureRecognizer;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$800(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getSeekBarIndicator()Lcom/android/camera/ui/V6SeekBarIndicator;

    move-result-object v7

    .line 320
    .local v7, "seekBar":Lcom/android/camera/ui/V6SeekBarIndicator;
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getGestureOrientation()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_6

    .line 322
    iget v0, v8, Landroid/graphics/Point;->x:I

    if-gez v0, :cond_4

    .line 323
    const-string v0, "CameraGestureRecognizer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "seekBar.getCurrentPage()="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v7}, Lcom/android/camera/ui/V6SeekBarIndicator;->getCurrentPage()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-virtual {v7}, Lcom/android/camera/ui/V6SeekBarIndicator;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 325
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    const/4 v1, 0x4

    # += operator for: Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$512(Lcom/android/camera/ui/V6GestureRecognizer;I)I

    .line 350
    .end local v7    # "seekBar":Lcom/android/camera/ui/V6SeekBarIndicator;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v6, 0x1

    .line 352
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->isGestureDetecting()Z

    move-result v0

    if-nez v0, :cond_2

    .line 353
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # getter for: Lcom/android/camera/ui/V6GestureRecognizer;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1000(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/MessageDispacher;

    move-result-object v0

    if-eqz v6, :cond_9

    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # getter for: Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I
    invoke-static {v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$500(Lcom/android/camera/ui/V6GestureRecognizer;)I

    move-result v1

    :goto_2
    const v2, 0x7f0c0078

    const/4 v3, 0x3

    iget v4, v8, Landroid/graphics/Point;->x:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, v8, Landroid/graphics/Point;->y:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 360
    :cond_2
    const/4 v0, 0x1

    return v0

    .line 326
    .restart local v7    # "seekBar":Lcom/android/camera/ui/V6SeekBarIndicator;
    :cond_3
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$800(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/android/camera/ui/V6SeekBarIndicator;->couldSwitchToVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 328
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    const/4 v1, 0x1

    # += operator for: Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$512(Lcom/android/camera/ui/V6GestureRecognizer;I)I

    goto :goto_0

    .line 331
    :cond_4
    invoke-virtual {v7}, Lcom/android/camera/ui/V6SeekBarIndicator;->getCurrentPage()I

    move-result v0

    if-nez v0, :cond_5

    .line 332
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    const/4 v1, 0x2

    # += operator for: Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$512(Lcom/android/camera/ui/V6GestureRecognizer;I)I

    goto :goto_0

    .line 333
    :cond_5
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$800(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    invoke-virtual {v7, v0}, Lcom/android/camera/ui/V6SeekBarIndicator;->couldSwitchToVisible(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    const/4 v1, 0x3

    # += operator for: Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$512(Lcom/android/camera/ui/V6GestureRecognizer;I)I

    goto :goto_0

    .line 338
    :cond_6
    invoke-virtual {v7}, Lcom/android/camera/ui/V6SeekBarIndicator;->getCurrentPage()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, v8, Landroid/graphics/Point;->y:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    sget v1, Lcom/android/camera/ui/V6GestureRecognizer;->GESTURE_DETECT_DISTANCE:I

    if-le v0, v1, :cond_0

    .line 341
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/android/camera/ui/V6GestureRecognizer;->SWITCH_CAMERA_IGNORE_DISTANCE:I

    if-le v0, v1, :cond_0

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    sget v1, Lcom/android/camera/ui/V6GestureRecognizer;->SWITCH_CAMERA_IGNORE_DISTANCE:I

    if-le v0, v1, :cond_0

    .line 343
    const-string v0, "CameraGestureRecognizer"

    const-string v1, "switch camera gesture"

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    const/16 v1, 0x8

    # += operator for: Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$512(Lcom/android/camera/ui/V6GestureRecognizer;I)I

    .line 345
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$800(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getCameraPicker()Lcom/android/camera/ui/V6CameraPicker;

    move-result-object v1

    iget v0, v8, Landroid/graphics/Point;->y:I

    if-gez v0, :cond_7

    const/4 v0, 0x1

    :goto_3
    invoke-virtual {v1, v0}, Lcom/android/camera/ui/V6CameraPicker;->setDirection(Z)V

    .line 346
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$800(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getCameraPicker()Lcom/android/camera/ui/V6CameraPicker;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/camera/ui/V6CameraPicker;->onClick(Landroid/view/View;)V

    goto/16 :goto_0

    .line 345
    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    .line 350
    .end local v7    # "seekBar":Lcom/android/camera/ui/V6SeekBarIndicator;
    :cond_8
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 353
    :cond_9
    const/4 v1, 0x0

    goto/16 :goto_2
.end method

.method public onSingleTapConfirmed(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$800(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->mHandleConfirmTap:Z

    if-eqz v0, :cond_0

    .line 306
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->handleSingleTap(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 308
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x0

    .line 292
    const-string v0, "CameraGestureRecognizer"

    const-string v2, "onSingleTapUp"

    invoke-static {v0, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$800(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getEffectCropView()Lcom/android/camera/ui/V6EffectCropView;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6EffectCropView;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 294
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->couldNotifyGesture(Z)Z
    invoke-static {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$700(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$800(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->mHandleConfirmTap:Z

    .line 299
    :goto_1
    return v1

    :cond_0
    move v0, v1

    .line 294
    goto :goto_0

    .line 297
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/camera/ui/V6GestureRecognizer$MyGestureListener;->handleSingleTap(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1
.end method
