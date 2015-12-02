.class Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;
.super Ljava/lang/Object;
.source "V6GestureRecognizer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6GestureRecognizer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraGestureDetector"
.end annotation


# instance fields
.field private final MIN_DETECT_DISTANCE:I

.field private mStartPoint:Landroid/graphics/Point;

.field final synthetic this$0:Lcom/android/camera/ui/V6GestureRecognizer;


# direct methods
.method public constructor <init>(Lcom/android/camera/ui/V6GestureRecognizer;)V
    .locals 2

    .prologue
    .line 175
    iput-object p1, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 171
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    iput-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->mStartPoint:Landroid/graphics/Point;

    .line 172
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # getter for: Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$300(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # getter for: Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;
    invoke-static {v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$300(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/Camera;

    move-result-object v1

    invoke-static {v1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    mul-int/2addr v0, v1

    iput v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->MIN_DETECT_DISTANCE:I

    .line 175
    return-void
.end method


# virtual methods
.method public onTouchEvent(Landroid/view/MotionEvent;)V
    .locals 14
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v13, 0x4

    const/4 v3, 0x3

    const/4 v12, 0x2

    const/4 v2, 0x0

    const/4 v11, 0x1

    .line 178
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    packed-switch v0, :pswitch_data_0

    .line 247
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 180
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->mStartPoint:Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 181
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->acquireVelocityTracker(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$400(Lcom/android/camera/ui/V6GestureRecognizer;Landroid/view/MotionEvent;)V

    goto :goto_0

    .line 184
    :pswitch_2
    const-string v0, "Camera12"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraGestureDetector ACTION_MOVE mGesture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # getter for: Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I
    invoke-static {v2}, Lcom/android/camera/ui/V6GestureRecognizer;->access$500(Lcom/android/camera/ui/V6GestureRecognizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # getter for: Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$500(Lcom/android/camera/ui/V6GestureRecognizer;)I

    move-result v0

    div-int/lit8 v0, v0, 0x64

    if-nez v0, :cond_1

    .line 186
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->mStartPoint:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->x:I

    iget-object v2, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->mStartPoint:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    float-to-int v5, v5

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->getMoveVector(IIII)Landroid/graphics/Point;
    invoke-static {v0, v1, v2, v4, v5}, Lcom/android/camera/ui/V6GestureRecognizer;->access$600(Lcom/android/camera/ui/V6GestureRecognizer;IIII)Landroid/graphics/Point;

    move-result-object v8

    .line 187
    .local v8, "point":Landroid/graphics/Point;
    const-string v1, "CameraGestureRecognizer"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mGesture="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # getter for: Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I
    invoke-static {v2}, Lcom/android/camera/ui/V6GestureRecognizer;->access$500(Lcom/android/camera/ui/V6GestureRecognizer;)I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " orientation="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v0, v8, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v4, v8, Landroid/graphics/Point;->y:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    if-le v0, v4, :cond_4

    const-string v0, "h"

    :goto_1
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " dx="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v8, Landroid/graphics/Point;->x:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " dy="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, v8, Landroid/graphics/Point;->y:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    iget v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->MIN_DETECT_DISTANCE:I

    iget v1, v8, Landroid/graphics/Point;->x:I

    iget v2, v8, Landroid/graphics/Point;->x:I

    mul-int/2addr v1, v2

    iget v2, v8, Landroid/graphics/Point;->y:I

    iget v4, v8, Landroid/graphics/Point;->y:I

    mul-int/2addr v2, v4

    add-int/2addr v1, v2

    if-gt v0, v1, :cond_1

    .line 190
    iget-object v1, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    iget v0, v8, Landroid/graphics/Point;->x:I

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, v8, Landroid/graphics/Point;->y:I

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    if-le v0, v2, :cond_5

    const/16 v0, 0x64

    :goto_2
    # += operator for: Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I
    invoke-static {v1, v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$512(Lcom/android/camera/ui/V6GestureRecognizer;I)I

    .line 193
    .end local v8    # "point":Landroid/graphics/Point;
    :cond_1
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getGestureOrientation()I

    move-result v0

    const/16 v1, 0x64

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v0

    if-eq v0, v11, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v0

    if-eq v0, v12, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v0

    if-eq v0, v3, :cond_2

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v0

    if-ne v0, v13, :cond_3

    .line 199
    :cond_2
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->acquireVelocityTracker(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$400(Lcom/android/camera/ui/V6GestureRecognizer;Landroid/view/MotionEvent;)V

    .line 201
    :cond_3
    const-string v0, "Camera12"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "CameraGestureDetector ACTION_MOVE end mGesture="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # getter for: Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I
    invoke-static {v2}, Lcom/android/camera/ui/V6GestureRecognizer;->access$500(Lcom/android/camera/ui/V6GestureRecognizer;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 187
    .restart local v8    # "point":Landroid/graphics/Point;
    :cond_4
    const-string v0, "v"

    goto/16 :goto_1

    .line 190
    :cond_5
    const/16 v0, 0xc8

    goto :goto_2

    .line 204
    .end local v8    # "point":Landroid/graphics/Point;
    :pswitch_3
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    if-ne v0, v12, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->couldNotifyGesture(Z)Z
    invoke-static {v0, v2}, Lcom/android/camera/ui/V6GestureRecognizer;->access$700(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$800(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_6

    .line 208
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 209
    .local v7, "l":F
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .line 215
    .local v9, "r":F
    :goto_3
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v0

    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_7

    .line 216
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 217
    .local v10, "t":F
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .line 222
    .local v6, "b":F
    :goto_4
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->couldNotifyGesture(Z)Z
    invoke-static {v0, v2}, Lcom/android/camera/ui/V6GestureRecognizer;->access$700(Lcom/android/camera/ui/V6GestureRecognizer;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->getUIController()Lcom/android/camera/ui/UIController;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$800(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/UIController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/UIController;->getPreviewPage()Lcom/android/camera/ui/V6PreviewPage;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/ui/V6PreviewPage;->isPreviewPageVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 223
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    const/16 v1, 0xa

    # += operator for: Lcom/android/camera/ui/V6GestureRecognizer;->mGesture:I
    invoke-static {v0, v1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$512(Lcom/android/camera/ui/V6GestureRecognizer;I)I

    .line 224
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # getter for: Lcom/android/camera/ui/V6GestureRecognizer;->mActivity:Lcom/android/camera/Camera;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$300(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/Camera;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/camera/Camera;->getCurrentModule()Lcom/android/camera/module/Module;

    move-result-object v0

    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1, v7, v10, v9, v6}, Landroid/graphics/RectF;-><init>(FFFF)V

    invoke-interface {v0, v1, v11}, Lcom/android/camera/module/Module;->onGestureTrack(Landroid/graphics/RectF;Z)Z

    goto/16 :goto_0

    .line 211
    .end local v6    # "b":F
    .end local v7    # "l":F
    .end local v9    # "r":F
    .end local v10    # "t":F
    :cond_6
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getX(I)F

    move-result v7

    .line 212
    .restart local v7    # "l":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F

    move-result v9

    .restart local v9    # "r":F
    goto :goto_3

    .line 219
    :cond_7
    invoke-virtual {p1, v11}, Landroid/view/MotionEvent;->getY(I)F

    move-result v10

    .line 220
    .restart local v10    # "t":F
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F

    move-result v6

    .restart local v6    # "b":F
    goto :goto_4

    .line 231
    .end local v6    # "b":F
    .end local v7    # "l":F
    .end local v9    # "r":F
    .end local v10    # "t":F
    :pswitch_4
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v0

    if-eq v0, v11, :cond_8

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v0

    if-eq v0, v12, :cond_8

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v0

    if-eq v0, v3, :cond_8

    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    invoke-virtual {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->getCurrentGesture()I

    move-result v0

    if-ne v0, v13, :cond_9

    .line 235
    :cond_8
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->acquireVelocityTracker(Landroid/view/MotionEvent;)V
    invoke-static {v0, p1}, Lcom/android/camera/ui/V6GestureRecognizer;->access$400(Lcom/android/camera/ui/V6GestureRecognizer;Landroid/view/MotionEvent;)V

    .line 236
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # getter for: Lcom/android/camera/ui/V6GestureRecognizer;->mMessageDispacher:Lcom/android/camera/ui/MessageDispacher;
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1000(Lcom/android/camera/ui/V6GestureRecognizer;)Lcom/android/camera/ui/MessageDispacher;

    move-result-object v0

    const/16 v1, 0x12d

    const v2, 0x7f0c0078

    iget-object v4, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->computeVelocity()I
    invoke-static {v4}, Lcom/android/camera/ui/V6GestureRecognizer;->access$900(Lcom/android/camera/ui/V6GestureRecognizer;)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-interface/range {v0 .. v5}, Lcom/android/camera/ui/MessageDispacher;->dispacherMessage(IIILjava/lang/Object;Ljava/lang/Object;)Z

    .line 243
    :cond_9
    iget-object v0, p0, Lcom/android/camera/ui/V6GestureRecognizer$CameraGestureDetector;->this$0:Lcom/android/camera/ui/V6GestureRecognizer;

    # invokes: Lcom/android/camera/ui/V6GestureRecognizer;->clearVelocityTracker()V
    invoke-static {v0}, Lcom/android/camera/ui/V6GestureRecognizer;->access$1100(Lcom/android/camera/ui/V6GestureRecognizer;)V

    goto/16 :goto_0

    .line 178
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_0
        :pswitch_4
        :pswitch_3
    .end packed-switch
.end method
