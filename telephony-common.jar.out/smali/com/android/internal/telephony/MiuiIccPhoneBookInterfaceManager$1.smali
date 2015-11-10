.class Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;
.super Landroid/os/Handler;
.source "MiuiIccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;)V
    .locals 0

    .prologue
    .line 54
    iput-object p1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method private notifyPending(Landroid/os/AsyncResult;)V
    .locals 2
    .param p1, "ar"    # Landroid/os/AsyncResult;

    .prologue
    .line 116
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 122
    :goto_0
    return-void

    .line 119
    :cond_0
    iget-object v0, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 120
    .local v0, "status":Ljava/util/concurrent/atomic/AtomicBoolean;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 121
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    goto :goto_0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 59
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 61
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 62
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v2, v1, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 63
    :try_start_0
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    .line 64
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    check-cast v1, [I

    iput-object v1, v3, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecordSize:[I

    .line 65
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I
    invoke-static {v1, v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->access$002(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;I)I

    .line 69
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GET_RECORD_SIZE Size "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecordSize:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " total "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecordSize:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " #record "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v4, v4, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecordSize:[I

    const/4 v5, 0x2

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 75
    :goto_1
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    .line 76
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 73
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3}, Lcom/android/internal/telephony/MiuiIccProviderException;->getErrorCauseFromException(Ljava/lang/Throwable;)I

    move-result v3

    # setter for: Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I
    invoke-static {v1, v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->access$002(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 79
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 80
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v3, v3, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 81
    :try_start_2
    iget-object v4, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v5, :cond_2

    :goto_2
    iput-boolean v1, v4, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    .line 82
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-boolean v1, v1, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mSuccess:Z

    if-eqz v1, :cond_3

    .line 83
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I
    invoke-static {v1, v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->access$002(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;I)I

    .line 87
    :goto_3
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    .line 88
    monitor-exit v3

    goto/16 :goto_0

    :catchall_1
    move-exception v1

    monitor-exit v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1

    :cond_2
    move v1, v2

    .line 81
    goto :goto_2

    .line 85
    :cond_3
    :try_start_3
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2}, Lcom/android/internal/telephony/MiuiIccProviderException;->getErrorCauseFromException(Ljava/lang/Throwable;)I

    move-result v2

    # setter for: Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I
    invoke-static {v1, v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->access$002(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;I)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_3

    .line 91
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 92
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v2, v1, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 93
    :try_start_4
    iget-object v1, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_4

    .line 94
    iget-object v3, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    iput-object v1, v3, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    .line 95
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    const/4 v3, 0x0

    # setter for: Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I
    invoke-static {v1, v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->access$002(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;I)I

    .line 103
    :goto_4
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->notifyPending(Landroid/os/AsyncResult;)V

    .line 104
    monitor-exit v2

    goto/16 :goto_0

    :catchall_2
    move-exception v1

    monitor-exit v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v1

    .line 97
    :cond_4
    :try_start_5
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    const-string v3, "Cannot load ADN records"

    invoke-virtual {v1, v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    if-eqz v1, :cond_5

    .line 99
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v1, v1, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 101
    :cond_5
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3}, Lcom/android/internal/telephony/MiuiIccProviderException;->getErrorCauseFromException(Ljava/lang/Throwable;)I

    move-result v3

    # setter for: Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mError:I
    invoke-static {v1, v3}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->access$002(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;I)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_4

    .line 107
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_3
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    # getter for: Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-static {v1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->access$100(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    # getter for: Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-static {v1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->access$100(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 108
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    # getter for: Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-static {v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->access$100(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/internal/telephony/uicc/IccRecords;->mHasPbr:Z

    # setter for: Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mIs3gCard:Z
    invoke-static {v1, v2}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->access$202(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;Z)Z

    .line 109
    iget-object v1, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    # getter for: Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-static {v1}, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->access$100(Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager$1;->this$0:Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;

    iget-object v2, v2, Lcom/android/internal/telephony/MiuiIccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    goto/16 :goto_0

    .line 59
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method
