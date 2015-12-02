.class Lcom/android/camera/snap/SnapService$InnerHandler;
.super Landroid/os/Handler;
.source "SnapService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/snap/SnapService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InnerHandler"
.end annotation


# instance fields
.field private final mService:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/camera/snap/SnapService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/camera/snap/SnapService;)V
    .locals 1
    .param p1, "service"    # Lcom/android/camera/snap/SnapService;

    .prologue
    .line 64
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 65
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapService$InnerHandler;->mService:Ljava/lang/ref/WeakReference;

    .line 66
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 71
    :try_start_0
    iget-object v1, p0, Lcom/android/camera/snap/SnapService$InnerHandler;->mService:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/camera/snap/SnapService;

    .line 72
    .local v0, "service":Lcom/android/camera/snap/SnapService;
    if-eqz v0, :cond_0

    .line 73
    # getter for: Lcom/android/camera/snap/SnapService;->isInited:Z
    invoke-static {v0}, Lcom/android/camera/snap/SnapService;->access$000(Lcom/android/camera/snap/SnapService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 94
    .end local v0    # "service":Lcom/android/camera/snap/SnapService;
    :cond_0
    :goto_0
    return-void

    .line 77
    .restart local v0    # "service":Lcom/android/camera/snap/SnapService;
    :cond_1
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 86
    :pswitch_0
    # invokes: Lcom/android/camera/snap/SnapService;->triggerWatchdog()V
    invoke-static {v0}, Lcom/android/camera/snap/SnapService;->access$300(Lcom/android/camera/snap/SnapService;)V

    .line 87
    # invokes: Lcom/android/camera/snap/SnapService;->takeSnap()V
    invoke-static {v0}, Lcom/android/camera/snap/SnapService;->access$400(Lcom/android/camera/snap/SnapService;)V

    goto :goto_0

    .line 91
    .end local v0    # "service":Lcom/android/camera/snap/SnapService;
    :catch_0
    move-exception v1

    goto :goto_0

    .line 79
    .restart local v0    # "service":Lcom/android/camera/snap/SnapService;
    :pswitch_1
    const-string v1, "stop service"

    # invokes: Lcom/android/camera/snap/SnapService;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/android/camera/snap/SnapService;->access$100(Lcom/android/camera/snap/SnapService;Ljava/lang/String;)V

    .line 81
    # invokes: Lcom/android/camera/snap/SnapService;->destroy()V
    invoke-static {v0}, Lcom/android/camera/snap/SnapService;->access$200(Lcom/android/camera/snap/SnapService;)V

    .line 82
    invoke-virtual {v0}, Lcom/android/camera/snap/SnapService;->stopSelf()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 77
    :pswitch_data_0
    .packed-switch 0x64
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
