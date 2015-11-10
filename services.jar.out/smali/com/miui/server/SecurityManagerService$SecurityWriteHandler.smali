.class Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;
.super Landroid/os/Handler;
.source "SecurityManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/server/SecurityManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SecurityWriteHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/server/SecurityManagerService;


# direct methods
.method constructor <init>(Lcom/miui/server/SecurityManagerService;Landroid/os/Looper;)V
    .locals 0
    .param p2, "looper"    # Landroid/os/Looper;

    .prologue
    .line 152
    iput-object p1, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    .line 153
    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 154
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 11
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/16 v10, 0xa

    const/4 v4, 0x0

    .line 157
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 200
    :goto_0
    return-void

    .line 160
    :pswitch_0
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 161
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    # getter for: Lcom/miui/server/SecurityManagerService;->mPackages:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/miui/server/SecurityManagerService;->access$400(Lcom/miui/server/SecurityManagerService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 162
    const/4 v3, 0x1

    :try_start_0
    invoke-virtual {p0, v3}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->removeMessages(I)V

    .line 163
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->writeSettings()V
    invoke-static {v3}, Lcom/miui/server/SecurityManagerService;->access$500(Lcom/miui/server/SecurityManagerService;)V

    .line 164
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 165
    invoke-static {v10}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 164
    :catchall_0
    move-exception v3

    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v3

    .line 169
    :pswitch_1
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 170
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    # getter for: Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/miui/server/SecurityManagerService;->access$600(Lcom/miui/server/SecurityManagerService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 171
    const/4 v3, 0x2

    :try_start_2
    invoke-virtual {p0, v3}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->removeMessages(I)V

    .line 172
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    # invokes: Lcom/miui/server/SecurityManagerService;->writeWakeUpTime()V
    invoke-static {v3}, Lcom/miui/server/SecurityManagerService;->access$700(Lcom/miui/server/SecurityManagerService;)V

    .line 173
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 174
    invoke-static {v10}, Landroid/os/Process;->setThreadPriority(I)V

    goto :goto_0

    .line 173
    :catchall_1
    move-exception v3

    :try_start_3
    monitor-exit v4
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v3

    .line 178
    :pswitch_2
    invoke-static {v4}, Landroid/os/Process;->setThreadPriority(I)V

    .line 179
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    # getter for: Lcom/miui/server/SecurityManagerService;->mWakeUpTime:Ljava/util/HashMap;
    invoke-static {v3}, Lcom/miui/server/SecurityManagerService;->access$600(Lcom/miui/server/SecurityManagerService;)Ljava/util/HashMap;

    move-result-object v4

    monitor-enter v4

    .line 180
    const/4 v3, 0x3

    :try_start_4
    invoke-virtual {p0, v3}, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->removeMessages(I)V

    .line 181
    const-string v3, "vendor"

    const/4 v5, 0x3

    invoke-static {v3, v5}, Lmiui/util/FeatureParser;->hasFeature(Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 182
    const-string v3, "vendor"

    invoke-static {v3}, Lmiui/util/FeatureParser;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 183
    .local v2, "vendor":Ljava/lang/String;
    const-string v3, "mediatek"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 184
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    # getter for: Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/miui/server/SecurityManagerService;->access$000(Lcom/miui/server/SecurityManagerService;)Landroid/content/Context;

    move-result-object v3

    const-string v5, "alarm"

    invoke-virtual {v3, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    .line 185
    .local v0, "am":Landroid/app/AlarmManager;
    iget-object v3, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    # getter for: Lcom/miui/server/SecurityManagerService;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/miui/server/SecurityManagerService;->access$000(Lcom/miui/server/SecurityManagerService;)Landroid/content/Context;

    move-result-object v3

    const/4 v5, 0x0

    new-instance v6, Landroid/content/Intent;

    invoke-direct {v6}, Landroid/content/Intent;-><init>()V

    const/4 v7, 0x0

    invoke-static {v3, v5, v6, v7}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 186
    .local v1, "pi":Landroid/app/PendingIntent;
    const/16 v3, 0x8

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    # getter for: Lcom/miui/server/SecurityManagerService;->mWakeTime:J
    invoke-static {v5}, Lcom/miui/server/SecurityManagerService;->access$800(Lcom/miui/server/SecurityManagerService;)J

    move-result-wide v6

    const-wide/16 v8, 0x3e8

    mul-long/2addr v6, v8

    invoke-virtual {v0, v3, v6, v7, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 195
    .end local v0    # "am":Landroid/app/AlarmManager;
    .end local v1    # "pi":Landroid/app/PendingIntent;
    .end local v2    # "vendor":Ljava/lang/String;
    :goto_1
    monitor-exit v4
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 196
    invoke-static {v10}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 187
    .restart local v2    # "vendor":Ljava/lang/String;
    :cond_0
    :try_start_5
    const-string v3, "leadcore"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 188
    const-string v3, "/sys/comip/rtc_alarm"

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    # getter for: Lcom/miui/server/SecurityManagerService;->mWakeTime:J
    invoke-static {v5}, Lcom/miui/server/SecurityManagerService;->access$800(Lcom/miui/server/SecurityManagerService;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/miui/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 195
    .end local v2    # "vendor":Ljava/lang/String;
    :catchall_2
    move-exception v3

    monitor-exit v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v3

    .line 190
    .restart local v2    # "vendor":Ljava/lang/String;
    :cond_1
    :try_start_6
    const-string v3, "/sys/class/rtc/rtc0/wakealarm"

    iget-object v5, p0, Lcom/miui/server/SecurityManagerService$SecurityWriteHandler;->this$0:Lcom/miui/server/SecurityManagerService;

    # getter for: Lcom/miui/server/SecurityManagerService;->mWakeTime:J
    invoke-static {v5}, Lcom/miui/server/SecurityManagerService;->access$800(Lcom/miui/server/SecurityManagerService;)J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/miui/Shell;->write(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 193
    .end local v2    # "vendor":Ljava/lang/String;
    :cond_2
    const-string v3, "SecurityManagerService"

    const-string v5, "There is no corresponding feature!"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_1

    .line 157
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
