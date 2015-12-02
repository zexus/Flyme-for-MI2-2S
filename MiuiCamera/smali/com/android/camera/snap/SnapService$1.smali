.class Lcom/android/camera/snap/SnapService$1;
.super Landroid/view/OrientationEventListener;
.source "SnapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/snap/SnapService;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/snap/SnapService;


# direct methods
.method constructor <init>(Lcom/android/camera/snap/SnapService;Landroid/content/Context;I)V
    .locals 0
    .param p2, "x0"    # Landroid/content/Context;
    .param p3, "x1"    # I

    .prologue
    .line 142
    iput-object p1, p0, Lcom/android/camera/snap/SnapService$1;->this$0:Lcom/android/camera/snap/SnapService;

    invoke-direct {p0, p2, p3}, Landroid/view/OrientationEventListener;-><init>(Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method public onOrientationChanged(I)V
    .locals 6
    .param p1, "orientation"    # I

    .prologue
    const/16 v5, 0xe1

    const/16 v4, 0x87

    .line 146
    iget-object v1, p0, Lcom/android/camera/snap/SnapService$1;->this$0:Lcom/android/camera/snap/SnapService;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Orientation changed to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    # invokes: Lcom/android/camera/snap/SnapService;->log(Ljava/lang/String;)V
    invoke-static {v1, v2}, Lcom/android/camera/snap/SnapService;->access$100(Lcom/android/camera/snap/SnapService;Ljava/lang/String;)V

    .line 148
    const/4 v0, 0x0

    .line 149
    .local v0, "angle":I
    const/16 v1, 0x2d

    if-gt v1, p1, :cond_1

    if-ge p1, v4, :cond_1

    .line 150
    const/16 v0, 0xb4

    .line 159
    :goto_0
    iget-object v1, p0, Lcom/android/camera/snap/SnapService$1;->this$0:Lcom/android/camera/snap/SnapService;

    # getter for: Lcom/android/camera/snap/SnapService;->lastAngle:I
    invoke-static {v1}, Lcom/android/camera/snap/SnapService;->access$500(Lcom/android/camera/snap/SnapService;)I

    move-result v1

    if-eq v1, v0, :cond_0

    .line 160
    iget-object v1, p0, Lcom/android/camera/snap/SnapService$1;->this$0:Lcom/android/camera/snap/SnapService;

    # getter for: Lcom/android/camera/snap/SnapService;->isReady:Z
    invoke-static {v1}, Lcom/android/camera/snap/SnapService;->access$600(Lcom/android/camera/snap/SnapService;)Z

    move-result v1

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/android/camera/snap/SnapService$1;->this$0:Lcom/android/camera/snap/SnapService;

    iget-object v1, v1, Lcom/android/camera/snap/SnapService;->camera:Lcom/android/camera/snap/SnapCamera;

    if-eqz v1, :cond_4

    .line 161
    iget-object v1, p0, Lcom/android/camera/snap/SnapService$1;->this$0:Lcom/android/camera/snap/SnapService;

    iget-object v1, v1, Lcom/android/camera/snap/SnapService;->camera:Lcom/android/camera/snap/SnapCamera;

    invoke-virtual {v1, v0}, Lcom/android/camera/snap/SnapCamera;->updateOrientation(I)V

    .line 162
    iget-object v1, p0, Lcom/android/camera/snap/SnapService$1;->this$0:Lcom/android/camera/snap/SnapService;

    # setter for: Lcom/android/camera/snap/SnapService;->lastAngle:I
    invoke-static {v1, v0}, Lcom/android/camera/snap/SnapService;->access$502(Lcom/android/camera/snap/SnapService;I)I

    .line 167
    :cond_0
    :goto_1
    return-void

    .line 151
    :cond_1
    if-gt v4, p1, :cond_2

    if-ge p1, v5, :cond_2

    .line 152
    const/16 v0, 0x10e

    goto :goto_0

    .line 153
    :cond_2
    if-gt v5, p1, :cond_3

    const/16 v1, 0x13b

    if-ge p1, v1, :cond_3

    .line 154
    const/4 v0, 0x0

    goto :goto_0

    .line 156
    :cond_3
    const/16 v0, 0x5a

    goto :goto_0

    .line 164
    :cond_4
    iget-object v1, p0, Lcom/android/camera/snap/SnapService$1;->this$0:Lcom/android/camera/snap/SnapService;

    const/4 v2, -0x1

    # setter for: Lcom/android/camera/snap/SnapService;->lastAngle:I
    invoke-static {v1, v2}, Lcom/android/camera/snap/SnapService;->access$502(Lcom/android/camera/snap/SnapService;I)I

    goto :goto_1
.end method
