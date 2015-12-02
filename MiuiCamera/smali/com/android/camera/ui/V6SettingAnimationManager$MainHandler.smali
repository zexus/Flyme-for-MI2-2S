.class Lcom/android/camera/ui/V6SettingAnimationManager$MainHandler;
.super Landroid/os/Handler;
.source "V6SettingAnimationManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/ui/V6SettingAnimationManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MainHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/camera/ui/V6SettingAnimationManager;


# direct methods
.method private constructor <init>(Lcom/android/camera/ui/V6SettingAnimationManager;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/camera/ui/V6SettingAnimationManager$MainHandler;->this$0:Lcom/android/camera/ui/V6SettingAnimationManager;

    .line 55
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 56
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/ui/V6SettingAnimationManager;Landroid/os/Looper;Lcom/android/camera/ui/V6SettingAnimationManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/ui/V6SettingAnimationManager;
    .param p2, "x1"    # Landroid/os/Looper;
    .param p3, "x2"    # Lcom/android/camera/ui/V6SettingAnimationManager$1;

    .prologue
    .line 53
    invoke-direct {p0, p1, p2}, Lcom/android/camera/ui/V6SettingAnimationManager$MainHandler;-><init>(Lcom/android/camera/ui/V6SettingAnimationManager;Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 60
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 73
    :goto_0
    return-void

    .line 62
    :pswitch_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/android/camera/ui/V6SettingAnimationManager$MainHandler;->this$0:Lcom/android/camera/ui/V6SettingAnimationManager;

    # getter for: Lcom/android/camera/ui/V6SettingAnimationManager;->mAnimationStartTime:J
    invoke-static {v4}, Lcom/android/camera/ui/V6SettingAnimationManager;->access$100(Lcom/android/camera/ui/V6SettingAnimationManager;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 63
    .local v0, "duration":J
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager$MainHandler;->this$0:Lcom/android/camera/ui/V6SettingAnimationManager;

    # getter for: Lcom/android/camera/ui/V6SettingAnimationManager;->mSwitchingPageState:I
    invoke-static {v2}, Lcom/android/camera/ui/V6SettingAnimationManager;->access$200(Lcom/android/camera/ui/V6SettingAnimationManager;)I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    .line 64
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager$MainHandler;->this$0:Lcom/android/camera/ui/V6SettingAnimationManager;

    # invokes: Lcom/android/camera/ui/V6SettingAnimationManager;->onAnimationEnd()V
    invoke-static {v2}, Lcom/android/camera/ui/V6SettingAnimationManager;->access$300(Lcom/android/camera/ui/V6SettingAnimationManager;)V

    goto :goto_0

    .line 66
    :cond_0
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager$MainHandler;->this$0:Lcom/android/camera/ui/V6SettingAnimationManager;

    # getter for: Lcom/android/camera/ui/V6SettingAnimationManager;->mAnimationTotalTime:J
    invoke-static {v2}, Lcom/android/camera/ui/V6SettingAnimationManager;->access$400(Lcom/android/camera/ui/V6SettingAnimationManager;)J

    move-result-wide v2

    cmp-long v2, v0, v2

    if-lez v2, :cond_1

    .line 67
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager$MainHandler;->this$0:Lcom/android/camera/ui/V6SettingAnimationManager;

    # getter for: Lcom/android/camera/ui/V6SettingAnimationManager;->mAnimationTotalTime:J
    invoke-static {v2}, Lcom/android/camera/ui/V6SettingAnimationManager;->access$400(Lcom/android/camera/ui/V6SettingAnimationManager;)J

    move-result-wide v0

    .line 69
    :cond_1
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager$MainHandler;->this$0:Lcom/android/camera/ui/V6SettingAnimationManager;

    # getter for: Lcom/android/camera/ui/V6SettingAnimationManager;->mHandle:Landroid/os/Handler;
    invoke-static {v2}, Lcom/android/camera/ui/V6SettingAnimationManager;->access$500(Lcom/android/camera/ui/V6SettingAnimationManager;)Landroid/os/Handler;

    move-result-object v2

    const/16 v3, 0x3e9

    const-wide/16 v4, 0xa

    invoke-virtual {v2, v3, v4, v5}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 70
    iget-object v2, p0, Lcom/android/camera/ui/V6SettingAnimationManager$MainHandler;->this$0:Lcom/android/camera/ui/V6SettingAnimationManager;

    # invokes: Lcom/android/camera/ui/V6SettingAnimationManager;->translateView(J)V
    invoke-static {v2, v0, v1}, Lcom/android/camera/ui/V6SettingAnimationManager;->access$600(Lcom/android/camera/ui/V6SettingAnimationManager;J)V

    goto :goto_0

    .line 60
    :pswitch_data_0
    .packed-switch 0x3e9
        :pswitch_0
    .end packed-switch
.end method
