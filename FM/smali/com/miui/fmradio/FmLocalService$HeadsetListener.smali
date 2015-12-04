.class Lcom/miui/fmradio/FmLocalService$HeadsetListener;
.super Landroid/content/BroadcastReceiver;
.source "FmLocalService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/fmradio/FmLocalService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeadsetListener"
.end annotation


# instance fields
.field mIsFirstLaunch:Z

.field mIsHeadsetPluged:Z

.field final synthetic this$0:Lcom/miui/fmradio/FmLocalService;


# direct methods
.method private constructor <init>(Lcom/miui/fmradio/FmLocalService;)V
    .locals 1

    .prologue
    .line 1294
    iput-object p1, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 1295
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->mIsHeadsetPluged:Z

    .line 1296
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->mIsFirstLaunch:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/fmradio/FmLocalService;Lcom/miui/fmradio/FmLocalService$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/miui/fmradio/FmLocalService;
    .param p2, "x1"    # Lcom/miui/fmradio/FmLocalService$1;

    .prologue
    .line 1294
    invoke-direct {p0, p1}, Lcom/miui/fmradio/FmLocalService$HeadsetListener;-><init>(Lcom/miui/fmradio/FmLocalService;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 1299
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1301
    .local v0, "action":Ljava/lang/String;
    const-string v5, "android.intent.action.HEADSET_PLUG"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 1302
    const-string v5, "state"

    invoke-virtual {p2, v5, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    if-ne v5, v3, :cond_4

    move v1, v3

    .line 1306
    .local v1, "headsetPluged":Z
    :goto_0
    if-nez v1, :cond_0

    iget-boolean v5, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->mIsHeadsetPluged:Z

    if-eq v5, v1, :cond_0

    iget-boolean v5, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->mIsFirstLaunch:Z

    if-nez v5, :cond_0

    .line 1307
    iget-object v5, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v5}, Lcom/miui/fmradio/FmLocalService;->isFmOn()Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1308
    iget-object v5, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v5}, Lcom/miui/fmradio/FmLocalService;->turnFmOff()V

    .line 1320
    :cond_0
    :goto_1
    iget-boolean v5, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->mIsHeadsetPluged:Z

    if-ne v5, v1, :cond_1

    iget-boolean v5, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->mIsFirstLaunch:Z

    if-eqz v5, :cond_3

    .line 1321
    :cond_1
    iput-boolean v1, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->mIsHeadsetPluged:Z

    .line 1322
    iget-boolean v5, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->mIsHeadsetPluged:Z

    if-nez v5, :cond_7

    .line 1323
    iget-object v5, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/miui/fmradio/FmLocalService;->setAudioPath(I)V

    .line 1327
    :cond_2
    :goto_2
    iget-object v5, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    # getter for: Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;
    invoke-static {v5}, Lcom/miui/fmradio/FmLocalService;->access$2000(Lcom/miui/fmradio/FmLocalService;)Landroid/os/Handler;

    move-result-object v5

    const/16 v6, 0x10

    invoke-virtual {v5, v6}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    .line 1328
    .local v2, "msg":Landroid/os/Message;
    iget-boolean v5, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->mIsHeadsetPluged:Z

    if-eqz v5, :cond_8

    :goto_3
    iput v3, v2, Landroid/os/Message;->arg1:I

    .line 1329
    iget-object v3, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    # getter for: Lcom/miui/fmradio/FmLocalService;->mHandler:Landroid/os/Handler;
    invoke-static {v3}, Lcom/miui/fmradio/FmLocalService;->access$2000(Lcom/miui/fmradio/FmLocalService;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1331
    .end local v2    # "msg":Landroid/os/Message;
    :cond_3
    iput-boolean v4, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->mIsFirstLaunch:Z

    .line 1332
    return-void

    .end local v1    # "headsetPluged":Z
    :cond_4
    move v1, v4

    .line 1302
    goto :goto_0

    .line 1304
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "headsetPluged":Z
    goto :goto_0

    .line 1310
    :cond_6
    iget-object v5, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    monitor-enter v5

    .line 1311
    :try_start_0
    iget-object v6, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    const/4 v7, 0x1

    # setter for: Lcom/miui/fmradio/FmLocalService;->mTurnOffByUser:Z
    invoke-static {v6, v7}, Lcom/miui/fmradio/FmLocalService;->access$2602(Lcom/miui/fmradio/FmLocalService;Z)Z

    .line 1312
    iget-object v6, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    const/4 v7, 0x0

    # setter for: Lcom/miui/fmradio/FmLocalService;->mTurnOffByMediaButton:Z
    invoke-static {v6, v7}, Lcom/miui/fmradio/FmLocalService;->access$2702(Lcom/miui/fmradio/FmLocalService;Z)Z

    .line 1313
    iget-object v6, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    # invokes: Lcom/miui/fmradio/FmLocalService;->unregisterFmPhoneStateListener()V
    invoke-static {v6}, Lcom/miui/fmradio/FmLocalService;->access$2800(Lcom/miui/fmradio/FmLocalService;)V

    .line 1314
    iget-object v6, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    # invokes: Lcom/miui/fmradio/FmLocalService;->unregisterFmMediaButtonListener()V
    invoke-static {v6}, Lcom/miui/fmradio/FmLocalService;->access$2900(Lcom/miui/fmradio/FmLocalService;)V

    .line 1315
    iget-object v6, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    # invokes: Lcom/miui/fmradio/FmLocalService;->abandonAudioFoucus()V
    invoke-static {v6}, Lcom/miui/fmradio/FmLocalService;->access$3000(Lcom/miui/fmradio/FmLocalService;)V

    .line 1316
    monitor-exit v5

    goto :goto_1

    :catchall_0
    move-exception v3

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 1324
    :cond_7
    iget-object v5, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    # invokes: Lcom/miui/fmradio/FmLocalService;->isClientActive()Z
    invoke-static {v5}, Lcom/miui/fmradio/FmLocalService;->access$3100(Lcom/miui/fmradio/FmLocalService;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1325
    iget-object v5, p0, Lcom/miui/fmradio/FmLocalService$HeadsetListener;->this$0:Lcom/miui/fmradio/FmLocalService;

    invoke-virtual {v5, v3}, Lcom/miui/fmradio/FmLocalService;->setAudioPath(I)V

    goto :goto_2

    .restart local v2    # "msg":Landroid/os/Message;
    :cond_8
    move v3, v4

    .line 1328
    goto :goto_3
.end method
