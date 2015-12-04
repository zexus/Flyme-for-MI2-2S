.class Lcom/miui/fmservice/FmService$1;
.super Landroid/os/Handler;
.source "FmService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmservice/FmService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/fmservice/FmService;


# direct methods
.method constructor <init>(Lcom/miui/fmservice/FmService;)V
    .locals 0

    .prologue
    .line 348
    iput-object p1, p0, Lcom/miui/fmservice/FmService$1;->this$0:Lcom/miui/fmservice/FmService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x0

    .line 351
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 367
    :cond_0
    :goto_0
    return-void

    .line 354
    :pswitch_0
    iget-object v0, p0, Lcom/miui/fmservice/FmService$1;->this$0:Lcom/miui/fmservice/FmService;

    invoke-virtual {v0}, Lcom/miui/fmservice/FmService;->isFmOn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 357
    const-string v0, "Fm:FmService"

    const-string v1, "mDelayedStopHandler: stopSelf"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    iget-object v0, p0, Lcom/miui/fmservice/FmService$1;->this$0:Lcom/miui/fmservice/FmService;

    iget-object v1, p0, Lcom/miui/fmservice/FmService$1;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mServiceStartId:I
    invoke-static {v1}, Lcom/miui/fmservice/FmService;->access$000(Lcom/miui/fmservice/FmService;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/miui/fmservice/FmService;->stopSelf(I)V

    goto :goto_0

    .line 361
    :pswitch_1
    iget-object v0, p0, Lcom/miui/fmservice/FmService$1;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v0}, Lcom/miui/fmservice/FmService;->access$100(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmReceiver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/miui/fmservice/FmService$1;->this$0:Lcom/miui/fmservice/FmService;

    # getter for: Lcom/miui/fmservice/FmService;->mReceiver:Lqcom/fmradio/FmReceiver;
    invoke-static {v0}, Lcom/miui/fmservice/FmService;->access$100(Lcom/miui/fmservice/FmService;)Lqcom/fmradio/FmReceiver;

    move-result-object v0

    invoke-virtual {v0, v1}, Lqcom/fmradio/FmReceiver;->setNotchFilter(Z)V

    .line 363
    iget-object v0, p0, Lcom/miui/fmservice/FmService$1;->this$0:Lcom/miui/fmservice/FmService;

    # setter for: Lcom/miui/fmservice/FmService;->mNotchFilterSet:Z
    invoke-static {v0, v1}, Lcom/miui/fmservice/FmService;->access$202(Lcom/miui/fmservice/FmService;Z)Z

    goto :goto_0

    .line 351
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
