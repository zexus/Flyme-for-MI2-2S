.class Lcom/android/camera/snap/SnapService$2;
.super Landroid/os/Handler;
.source "SnapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/camera/snap/SnapService;->onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/snap/SnapService;


# direct methods
.method constructor <init>(Lcom/android/camera/snap/SnapService;)V
    .locals 0

    .prologue
    .line 227
    iput-object p1, p0, Lcom/android/camera/snap/SnapService$2;->this$0:Lcom/android/camera/snap/SnapService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x64

    .line 230
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 251
    :cond_0
    :goto_0
    return-void

    .line 232
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/snap/SnapService$2;->this$0:Lcom/android/camera/snap/SnapService;

    # getter for: Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;
    invoke-static {v0}, Lcom/android/camera/snap/SnapService;->access$700(Lcom/android/camera/snap/SnapService;)Lcom/android/camera/snap/SnapService$InnerHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 233
    iget-object v0, p0, Lcom/android/camera/snap/SnapService$2;->this$0:Lcom/android/camera/snap/SnapService;

    # getter for: Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;
    invoke-static {v0}, Lcom/android/camera/snap/SnapService;->access$700(Lcom/android/camera/snap/SnapService;)Lcom/android/camera/snap/SnapService$InnerHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/snap/SnapService$InnerHandler;->removeMessages(I)V

    .line 234
    iget-object v0, p0, Lcom/android/camera/snap/SnapService$2;->this$0:Lcom/android/camera/snap/SnapService;

    # getter for: Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;
    invoke-static {v0}, Lcom/android/camera/snap/SnapService;->access$700(Lcom/android/camera/snap/SnapService;)Lcom/android/camera/snap/SnapService$InnerHandler;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/snap/SnapService$InnerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 235
    iget-object v0, p0, Lcom/android/camera/snap/SnapService$2;->this$0:Lcom/android/camera/snap/SnapService;

    const/4 v1, 0x1

    # setter for: Lcom/android/camera/snap/SnapService;->inBurst:Z
    invoke-static {v0, v1}, Lcom/android/camera/snap/SnapService;->access$802(Lcom/android/camera/snap/SnapService;Z)Z

    goto :goto_0

    .line 241
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/snap/SnapService$2;->this$0:Lcom/android/camera/snap/SnapService;

    # setter for: Lcom/android/camera/snap/SnapService;->burstCount:I
    invoke-static {v0, v2}, Lcom/android/camera/snap/SnapService;->access$902(Lcom/android/camera/snap/SnapService;I)I

    .line 242
    iget-object v0, p0, Lcom/android/camera/snap/SnapService$2;->this$0:Lcom/android/camera/snap/SnapService;

    # setter for: Lcom/android/camera/snap/SnapService;->inBurst:Z
    invoke-static {v0, v2}, Lcom/android/camera/snap/SnapService;->access$802(Lcom/android/camera/snap/SnapService;Z)Z

    .line 243
    iget-object v0, p0, Lcom/android/camera/snap/SnapService$2;->this$0:Lcom/android/camera/snap/SnapService;

    # getter for: Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;
    invoke-static {v0}, Lcom/android/camera/snap/SnapService;->access$700(Lcom/android/camera/snap/SnapService;)Lcom/android/camera/snap/SnapService$InnerHandler;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/camera/snap/SnapService$InnerHandler;->removeMessages(I)V

    goto :goto_0

    .line 230
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
