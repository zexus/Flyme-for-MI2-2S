.class Lcom/android/camera/CameraBrightness$CameraBrightnessTask;
.super Landroid/os/AsyncTask;
.source "CameraBrightness.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/CameraBrightness;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CameraBrightnessTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/CameraBrightness;


# direct methods
.method private constructor <init>(Lcom/android/camera/CameraBrightness;)V
    .locals 0

    .prologue
    .line 35
    iput-object p1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/CameraBrightness;Lcom/android/camera/CameraBrightness$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/CameraBrightness;
    .param p2, "x1"    # Lcom/android/camera/CameraBrightness$1;

    .prologue
    .line 35
    invoke-direct {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;-><init>(Lcom/android/camera/CameraBrightness;)V

    return-void
.end method

.method private updateBrightness()V
    .locals 5

    .prologue
    .line 61
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mBrightness:I
    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->access$500(Lcom/android/camera/CameraBrightness;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->isCancelled()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mPaused:Z
    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->access$600(Lcom/android/camera/CameraBrightness;)Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mFirstFocusChanged:Z
    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->access$700(Lcom/android/camera/CameraBrightness;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 73
    :cond_0
    :goto_0
    return-void

    .line 62
    :cond_1
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->access$800(Lcom/android/camera/CameraBrightness;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .line 64
    .local v0, "localLayoutParams":Landroid/view/WindowManager$LayoutParams;
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z
    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->access$000(Lcom/android/camera/CameraBrightness;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 65
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    iget-object v2, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mBrightnessAdjustValue:I
    invoke-static {v2}, Lcom/android/camera/CameraBrightness;->access$300(Lcom/android/camera/CameraBrightness;)I

    move-result v2

    # += operator for: Lcom/android/camera/CameraBrightness;->mBrightness:I
    invoke-static {v1, v2}, Lcom/android/camera/CameraBrightness;->access$512(Lcom/android/camera/CameraBrightness;I)I

    .line 66
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    iget-object v2, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mBrightness:I
    invoke-static {v2}, Lcom/android/camera/CameraBrightness;->access$500(Lcom/android/camera/CameraBrightness;)I

    move-result v2

    const/4 v3, 0x0

    const/16 v4, 0xff

    invoke-static {v2, v3, v4}, Lcom/android/camera/Util;->clamp(III)I

    move-result v2

    # setter for: Lcom/android/camera/CameraBrightness;->mBrightness:I
    invoke-static {v1, v2}, Lcom/android/camera/CameraBrightness;->access$502(Lcom/android/camera/CameraBrightness;I)I

    .line 67
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mBrightness:I
    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->access$500(Lcom/android/camera/CameraBrightness;)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x437f0000    # 255.0f

    div-float/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    .line 71
    :goto_1
    const-string v1, "CameraBrightness"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "adjustBrightness mBrightness="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mBrightness:I
    invoke-static {v3}, Lcom/android/camera/CameraBrightness;->access$500(Lcom/android/camera/CameraBrightness;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " mUseDefaultValue="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z
    invoke-static {v3}, Lcom/android/camera/CameraBrightness;->access$000(Lcom/android/camera/CameraBrightness;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 72
    iget-object v1, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mCurrentActivity:Landroid/app/Activity;
    invoke-static {v1}, Lcom/android/camera/CameraBrightness;->access$800(Lcom/android/camera/CameraBrightness;)Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    goto :goto_0

    .line 69
    :cond_2
    const/high16 v1, -0x40800000    # -1.0f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    goto :goto_1
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 3
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 38
    const-string v0, "CameraBrightness"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "doInBackground mUseDefaultValue="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z
    invoke-static {v2}, Lcom/android/camera/CameraBrightness;->access$000(Lcom/android/camera/CameraBrightness;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mUseDefaultValue:Z
    invoke-static {v0}, Lcom/android/camera/CameraBrightness;->access$000(Lcom/android/camera/CameraBrightness;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 42
    # getter for: Lcom/android/camera/CameraBrightness;->mScreenManualBrightnessSpline:Landroid/util/Spline;
    invoke-static {}, Lcom/android/camera/CameraBrightness;->access$100()Landroid/util/Spline;

    move-result-object v0

    if-nez v0, :cond_0

    .line 43
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # invokes: Lcom/android/camera/CameraBrightness;->createSpline()V
    invoke-static {v0}, Lcom/android/camera/CameraBrightness;->access$200(Lcom/android/camera/CameraBrightness;)V

    .line 46
    :cond_0
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # getter for: Lcom/android/camera/CameraBrightness;->mBrightnessAdjustValue:I
    invoke-static {v0}, Lcom/android/camera/CameraBrightness;->access$300(Lcom/android/camera/CameraBrightness;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 47
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    const-string v1, "camera_brightness_value"

    const/16 v2, 0x3c

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    # setter for: Lcom/android/camera/CameraBrightness;->mBrightnessAdjustValue:I
    invoke-static {v0, v1}, Lcom/android/camera/CameraBrightness;->access$302(Lcom/android/camera/CameraBrightness;I)I

    .line 49
    :cond_1
    iget-object v0, p0, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->this$0:Lcom/android/camera/CameraBrightness;

    # invokes: Lcom/android/camera/CameraBrightness;->getCurrentBackLight()V
    invoke-static {v0}, Lcom/android/camera/CameraBrightness;->access$400(Lcom/android/camera/CameraBrightness;)V

    .line 51
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 35
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 0
    .param p1, "result"    # Ljava/lang/Void;

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/android/camera/CameraBrightness$CameraBrightnessTask;->updateBrightness()V

    .line 57
    return-void
.end method
