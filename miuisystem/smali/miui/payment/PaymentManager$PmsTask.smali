.class abstract Lmiui/payment/PaymentManager$PmsTask;
.super Ljava/util/concurrent/FutureTask;
.source "PaymentManager.java"

# interfaces
.implements Lmiui/payment/PaymentManager$PaymentManagerFuture;
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/payment/PaymentManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x402
    name = "PmsTask"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/payment/PaymentManager$PmsTask$IPaymentManagerResponseImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/concurrent/FutureTask",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Lmiui/payment/PaymentManager$PaymentManagerFuture",
        "<",
        "Landroid/os/Bundle;",
        ">;",
        "Landroid/content/ServiceConnection;"
    }
.end annotation


# instance fields
.field private final HOST_MONITOR_HEART_INTERNAL:I

.field private mActivity:Landroid/app/Activity;

.field private mCallback:Lmiui/payment/PaymentManager$PaymentManagerCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/payment/PaymentManager$PaymentManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field

.field private mHandler:Landroid/os/Handler;

.field private mHostActivityMonitor:Ljava/lang/Runnable;

.field private mIsBound:Z

.field private mResponse:Lmiui/payment/IPaymentManagerResponse;

.field private mService:Lmiui/payment/IPaymentManagerService;

.field final synthetic this$0:Lmiui/payment/PaymentManager;


# direct methods
.method protected constructor <init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;

    .prologue
    .line 444
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lmiui/payment/PaymentManager$PmsTask;-><init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Lmiui/payment/PaymentManager$PaymentManagerCallback;)V

    .line 445
    return-void
.end method

.method protected constructor <init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Landroid/os/Handler;Lmiui/payment/PaymentManager$PaymentManagerCallback;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;
    .param p3, "handler"    # Landroid/os/Handler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Landroid/os/Handler;",
            "Lmiui/payment/PaymentManager$PaymentManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 451
    .local p4, "callback":Lmiui/payment/PaymentManager$PaymentManagerCallback;, "Lmiui/payment/PaymentManager$PaymentManagerCallback<Landroid/os/Bundle;>;"
    iput-object p1, p0, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    .line 452
    new-instance v0, Lmiui/payment/PaymentManager$PmsTask$2;

    invoke-direct {v0, p1}, Lmiui/payment/PaymentManager$PmsTask$2;-><init>(Lmiui/payment/PaymentManager;)V

    invoke-direct {p0, v0}, Ljava/util/concurrent/FutureTask;-><init>(Ljava/util/concurrent/Callable;)V

    .line 420
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mIsBound:Z

    .line 427
    const/16 v0, 0x1388

    iput v0, p0, Lmiui/payment/PaymentManager$PmsTask;->HOST_MONITOR_HEART_INTERNAL:I

    .line 428
    new-instance v0, Lmiui/payment/PaymentManager$PmsTask$1;

    invoke-direct {v0, p0}, Lmiui/payment/PaymentManager$PmsTask$1;-><init>(Lmiui/payment/PaymentManager$PmsTask;)V

    iput-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mHostActivityMonitor:Ljava/lang/Runnable;

    .line 460
    iput-object p2, p0, Lmiui/payment/PaymentManager$PmsTask;->mActivity:Landroid/app/Activity;

    .line 461
    iput-object p3, p0, Lmiui/payment/PaymentManager$PmsTask;->mHandler:Landroid/os/Handler;

    .line 462
    iput-object p4, p0, Lmiui/payment/PaymentManager$PmsTask;->mCallback:Lmiui/payment/PaymentManager$PaymentManagerCallback;

    .line 463
    new-instance v0, Lmiui/payment/PaymentManager$PmsTask$IPaymentManagerResponseImpl;

    invoke-direct {v0, p0}, Lmiui/payment/PaymentManager$PmsTask$IPaymentManagerResponseImpl;-><init>(Lmiui/payment/PaymentManager$PmsTask;)V

    iput-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mResponse:Lmiui/payment/IPaymentManagerResponse;

    .line 464
    return-void
.end method

.method protected constructor <init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Lmiui/payment/PaymentManager$PaymentManagerCallback;)V
    .locals 1
    .param p2, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Lmiui/payment/PaymentManager$PaymentManagerCallback",
            "<",
            "Landroid/os/Bundle;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 448
    .local p3, "callback":Lmiui/payment/PaymentManager$PaymentManagerCallback;, "Lmiui/payment/PaymentManager$PaymentManagerCallback<Landroid/os/Bundle;>;"
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lmiui/payment/PaymentManager$PmsTask;-><init>(Lmiui/payment/PaymentManager;Landroid/app/Activity;Landroid/os/Handler;Lmiui/payment/PaymentManager$PaymentManagerCallback;)V

    .line 449
    return-void
.end method

.method static synthetic access$000(Lmiui/payment/PaymentManager$PmsTask;)Landroid/app/Activity;
    .locals 1
    .param p0, "x0"    # Lmiui/payment/PaymentManager$PmsTask;

    .prologue
    .line 417
    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mActivity:Landroid/app/Activity;

    return-object v0
.end method

.method static synthetic access$300(Lmiui/payment/PaymentManager$PmsTask;)Lmiui/payment/PaymentManager$PaymentManagerCallback;
    .locals 1
    .param p0, "x0"    # Lmiui/payment/PaymentManager$PmsTask;

    .prologue
    .line 417
    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mCallback:Lmiui/payment/PaymentManager$PaymentManagerCallback;

    return-object v0
.end method

.method static synthetic access$302(Lmiui/payment/PaymentManager$PmsTask;Lmiui/payment/PaymentManager$PaymentManagerCallback;)Lmiui/payment/PaymentManager$PaymentManagerCallback;
    .locals 0
    .param p0, "x0"    # Lmiui/payment/PaymentManager$PmsTask;
    .param p1, "x1"    # Lmiui/payment/PaymentManager$PaymentManagerCallback;

    .prologue
    .line 417
    iput-object p1, p0, Lmiui/payment/PaymentManager$PmsTask;->mCallback:Lmiui/payment/PaymentManager$PaymentManagerCallback;

    return-object p1
.end method

.method static synthetic access$400(Lmiui/payment/PaymentManager$PmsTask;ILjava/lang/String;Landroid/os/Bundle;)Ljava/lang/Exception;
    .locals 1
    .param p0, "x0"    # Lmiui/payment/PaymentManager$PmsTask;
    .param p1, "x1"    # I
    .param p2, "x2"    # Ljava/lang/String;
    .param p3, "x3"    # Landroid/os/Bundle;

    .prologue
    .line 417
    invoke-direct {p0, p1, p2, p3}, Lmiui/payment/PaymentManager$PmsTask;->convertErrorCodeToException(ILjava/lang/String;Landroid/os/Bundle;)Ljava/lang/Exception;

    move-result-object v0

    return-object v0
.end method

.method private convertErrorCodeToException(ILjava/lang/String;Landroid/os/Bundle;)Ljava/lang/Exception;
    .locals 1
    .param p1, "code"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 649
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 650
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .line 660
    :goto_0
    return-object v0

    .line 653
    :cond_0
    const/4 v0, 0x5

    if-ne p1, v0, :cond_1

    .line 654
    new-instance v0, Lmiui/cloud/exception/AuthenticationFailureException;

    invoke-direct {v0, p2}, Lmiui/cloud/exception/AuthenticationFailureException;-><init>(Ljava/lang/String;)V

    goto :goto_0

    .line 657
    :cond_1
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 658
    const-string p2, "Unknown payment failure"

    .line 660
    :cond_2
    new-instance v0, Lmiui/payment/exception/PaymentServiceFailureException;

    invoke-direct {v0, p1, p2, p3}, Lmiui/payment/exception/PaymentServiceFailureException;-><init>(ILjava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method private ensureNotOnMainThread()V
    .locals 4

    .prologue
    .line 664
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 665
    .local v1, "looper":Landroid/os/Looper;
    if-eqz v1, :cond_0

    iget-object v2, p0, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    # getter for: Lmiui/payment/PaymentManager;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lmiui/payment/PaymentManager;->access$200(Lmiui/payment/PaymentManager;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    if-ne v1, v2, :cond_0

    .line 666
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "calling this from your main thread can lead to deadlock"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 668
    .local v0, "exception":Ljava/lang/IllegalStateException;
    const-string v2, "PaymentManager"

    const-string v3, "calling this from your main thread can lead to deadlock and/or ANRs"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 670
    throw v0

    .line 672
    .end local v0    # "exception":Ljava/lang/IllegalStateException;
    :cond_0
    return-void
.end method

.method private internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 5
    .param p1, "timeout"    # Ljava/lang/Long;
    .param p2, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/cloud/exception/OperationCancelledException;,
            Lmiui/cloud/exception/AuthenticationFailureException;,
            Lmiui/payment/exception/PaymentServiceFailureException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    .line 514
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->isDone()Z

    move-result v2

    if-nez v2, :cond_0

    .line 515
    invoke-direct {p0}, Lmiui/payment/PaymentManager$PmsTask;->ensureNotOnMainThread()V

    .line 518
    :cond_0
    if-nez p1, :cond_1

    .line 519
    :try_start_0
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 547
    invoke-virtual {p0, v4}, Lmiui/payment/PaymentManager$PmsTask;->cancel(Z)Z

    :goto_0
    return-object v2

    .line 521
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p0, v2, v3, p2}, Lmiui/payment/PaymentManager$PmsTask;->get(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;
    :try_end_1
    .catch Ljava/util/concurrent/CancellationException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 547
    invoke-virtual {p0, v4}, Lmiui/payment/PaymentManager$PmsTask;->cancel(Z)Z

    goto :goto_0

    .line 523
    :catch_0
    move-exception v1

    .line 524
    .local v1, "e":Ljava/util/concurrent/CancellationException;
    :try_start_2
    new-instance v2, Lmiui/cloud/exception/OperationCancelledException;

    const-string v3, "cancelled by user"

    invoke-direct {v2, v3}, Lmiui/cloud/exception/OperationCancelledException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 547
    .end local v1    # "e":Ljava/util/concurrent/CancellationException;
    :catchall_0
    move-exception v2

    invoke-virtual {p0, v4}, Lmiui/payment/PaymentManager$PmsTask;->cancel(Z)Z

    throw v2

    .line 525
    :catch_1
    move-exception v2

    .line 547
    invoke-virtual {p0, v4}, Lmiui/payment/PaymentManager$PmsTask;->cancel(Z)Z

    .line 549
    :goto_1
    new-instance v2, Lmiui/cloud/exception/OperationCancelledException;

    const-string v3, "cancelled by exception"

    invoke-direct {v2, v3}, Lmiui/cloud/exception/OperationCancelledException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 527
    :catch_2
    move-exception v2

    .line 547
    invoke-virtual {p0, v4}, Lmiui/payment/PaymentManager$PmsTask;->cancel(Z)Z

    goto :goto_1

    .line 529
    :catch_3
    move-exception v1

    .line 530
    .local v1, "e":Ljava/util/concurrent/ExecutionException;
    :try_start_3
    invoke-virtual {v1}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 531
    .local v0, "cause":Ljava/lang/Throwable;
    instance-of v2, v0, Ljava/io/IOException;

    if-eqz v2, :cond_2

    .line 532
    check-cast v0, Ljava/io/IOException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 533
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_2
    instance-of v2, v0, Lmiui/payment/exception/PaymentServiceFailureException;

    if-eqz v2, :cond_3

    .line 534
    check-cast v0, Lmiui/payment/exception/PaymentServiceFailureException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 535
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_3
    instance-of v2, v0, Lmiui/cloud/exception/AuthenticationFailureException;

    if-eqz v2, :cond_4

    .line 536
    check-cast v0, Lmiui/cloud/exception/AuthenticationFailureException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 537
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_4
    instance-of v2, v0, Lmiui/cloud/exception/OperationCancelledException;

    if-eqz v2, :cond_5

    .line 538
    check-cast v0, Lmiui/cloud/exception/OperationCancelledException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 539
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_5
    instance-of v2, v0, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_6

    .line 540
    check-cast v0, Ljava/lang/RuntimeException;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 541
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_6
    instance-of v2, v0, Ljava/lang/Error;

    if-eqz v2, :cond_7

    .line 542
    check-cast v0, Ljava/lang/Error;

    .end local v0    # "cause":Ljava/lang/Throwable;
    throw v0

    .line 544
    .restart local v0    # "cause":Ljava/lang/Throwable;
    :cond_7
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method


# virtual methods
.method protected bind()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 482
    iget-boolean v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mIsBound:Z

    if-nez v0, :cond_0

    .line 483
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->bindToPaymentService()Z

    move-result v0

    if-nez v0, :cond_1

    .line 484
    new-instance v0, Lmiui/payment/exception/PaymentServiceFailureException;

    const-string v1, "bind to service failed"

    invoke-direct {v0, v2, v1}, Lmiui/payment/exception/PaymentServiceFailureException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/payment/PaymentManager$PmsTask;->setException(Ljava/lang/Throwable;)V

    .line 492
    :cond_0
    :goto_0
    return-void

    .line 486
    :cond_1
    iput-boolean v2, p0, Lmiui/payment/PaymentManager$PmsTask;->mIsBound:Z

    .line 488
    const-string v0, "PaymentManager"

    const-string v1, "service bound"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method protected bindToPaymentService()Z
    .locals 3

    .prologue
    .line 506
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.xiaomi.xmsf.action.PAYMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 507
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "com.xiaomi.payment"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 508
    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    # getter for: Lmiui/payment/PaymentManager;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lmiui/payment/PaymentManager;->access$200(Lmiui/payment/PaymentManager;)Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v0, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method protected abstract doWork()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method protected done()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 579
    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask;->mCallback:Lmiui/payment/PaymentManager$PaymentManagerCallback;

    if-eqz v1, :cond_0

    .line 580
    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask;->mHandler:Landroid/os/Handler;

    if-nez v1, :cond_1

    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    # getter for: Lmiui/payment/PaymentManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/payment/PaymentManager;->access$100(Lmiui/payment/PaymentManager;)Landroid/os/Handler;

    move-result-object v0

    .line 581
    .local v0, "handler":Landroid/os/Handler;
    :goto_0
    new-instance v1, Lmiui/payment/PaymentManager$PmsTask$3;

    invoke-direct {v1, p0}, Lmiui/payment/PaymentManager$PmsTask$3;-><init>(Lmiui/payment/PaymentManager$PmsTask;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 589
    .end local v0    # "handler":Landroid/os/Handler;
    :cond_0
    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    # getter for: Lmiui/payment/PaymentManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/payment/PaymentManager;->access$100(Lmiui/payment/PaymentManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lmiui/payment/PaymentManager$PmsTask;->mHostActivityMonitor:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 591
    iput-object v3, p0, Lmiui/payment/PaymentManager$PmsTask;->mHandler:Landroid/os/Handler;

    .line 592
    iput-object v3, p0, Lmiui/payment/PaymentManager$PmsTask;->mActivity:Landroid/app/Activity;

    .line 593
    return-void

    .line 580
    :cond_1
    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mHandler:Landroid/os/Handler;

    goto :goto_0
.end method

.method protected getResponse()Lmiui/payment/IPaymentManagerResponse;
    .locals 1

    .prologue
    .line 467
    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mResponse:Lmiui/payment/IPaymentManagerResponse;

    return-object v0
.end method

.method public getResult()Landroid/os/Bundle;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/cloud/exception/OperationCancelledException;,
            Lmiui/cloud/exception/AuthenticationFailureException;,
            Lmiui/payment/exception/PaymentServiceFailureException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 575
    invoke-direct {p0, v0, v0}, Lmiui/payment/PaymentManager$PmsTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;
    .locals 1
    .param p1, "timeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/cloud/exception/OperationCancelledException;,
            Lmiui/cloud/exception/AuthenticationFailureException;,
            Lmiui/payment/exception/PaymentServiceFailureException;
        }
    .end annotation

    .prologue
    .line 568
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lmiui/payment/PaymentManager$PmsTask;->internalGetResult(Ljava/lang/Long;Ljava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/cloud/exception/OperationCancelledException;,
            Lmiui/cloud/exception/AuthenticationFailureException;,
            Lmiui/payment/exception/PaymentServiceFailureException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->getResult()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getResult(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # J
    .param p3, "x1"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lmiui/cloud/exception/OperationCancelledException;,
            Lmiui/cloud/exception/AuthenticationFailureException;,
            Lmiui/payment/exception/PaymentServiceFailureException;
        }
    .end annotation

    .prologue
    .line 417
    invoke-virtual {p0, p1, p2, p3}, Lmiui/payment/PaymentManager$PmsTask;->getResult(JLjava/util/concurrent/TimeUnit;)Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method

.method protected getService()Lmiui/payment/IPaymentManagerService;
    .locals 1

    .prologue
    .line 471
    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mService:Lmiui/payment/IPaymentManagerService;

    return-object v0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 598
    const-string v1, "PaymentManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onServiceConnected, component:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    invoke-static {p2}, Lmiui/payment/IPaymentManagerService$Stub;->asInterface(Landroid/os/IBinder;)Lmiui/payment/IPaymentManagerService;

    move-result-object v1

    iput-object v1, p0, Lmiui/payment/PaymentManager$PmsTask;->mService:Lmiui/payment/IPaymentManagerService;

    .line 602
    :try_start_0
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->doWork()V

    .line 603
    iget-object v1, p0, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    # getter for: Lmiui/payment/PaymentManager;->mMainHandler:Landroid/os/Handler;
    invoke-static {v1}, Lmiui/payment/PaymentManager;->access$100(Lmiui/payment/PaymentManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lmiui/payment/PaymentManager$PmsTask;->mHostActivityMonitor:Ljava/lang/Runnable;

    const-wide/16 v4, 0x1388

    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 607
    :goto_0
    return-void

    .line 604
    :catch_0
    move-exception v0

    .line 605
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {p0, v0}, Lmiui/payment/PaymentManager$PmsTask;->setException(Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 611
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    .line 612
    const-string v0, "PaymentManager"

    const-string v1, "payment service disconnected, but task is not completed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 613
    new-instance v0, Lmiui/payment/exception/PaymentServiceFailureException;

    const/4 v1, 0x1

    const-string v2, "active service exits unexpectedly"

    invoke-direct {v0, v1, v2}, Lmiui/payment/exception/PaymentServiceFailureException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0}, Lmiui/payment/PaymentManager$PmsTask;->setException(Ljava/lang/Throwable;)V

    .line 615
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mService:Lmiui/payment/IPaymentManagerService;

    .line 616
    return-void
.end method

.method protected set(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;

    .prologue
    .line 554
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->set(Ljava/lang/Object;)V

    .line 555
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->unBind()V

    .line 556
    return-void
.end method

.method protected bridge synthetic set(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 417
    check-cast p1, Landroid/os/Bundle;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/payment/PaymentManager$PmsTask;->set(Landroid/os/Bundle;)V

    return-void
.end method

.method protected setException(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "t"    # Ljava/lang/Throwable;

    .prologue
    .line 560
    invoke-super {p0, p1}, Ljava/util/concurrent/FutureTask;->setException(Ljava/lang/Throwable;)V

    .line 561
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->unBind()V

    .line 562
    return-void
.end method

.method public final start()Lmiui/payment/PaymentManager$PaymentManagerFuture;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lmiui/payment/PaymentManager$PaymentManagerFuture",
            "<",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation

    .prologue
    .line 477
    invoke-virtual {p0}, Lmiui/payment/PaymentManager$PmsTask;->bind()V

    .line 478
    return-object p0
.end method

.method protected unBind()V
    .locals 2

    .prologue
    .line 495
    iget-boolean v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mIsBound:Z

    if-nez v0, :cond_0

    .line 503
    :goto_0
    return-void

    .line 498
    :cond_0
    iget-object v0, p0, Lmiui/payment/PaymentManager$PmsTask;->this$0:Lmiui/payment/PaymentManager;

    # getter for: Lmiui/payment/PaymentManager;->mContext:Landroid/content/Context;
    invoke-static {v0}, Lmiui/payment/PaymentManager;->access$200(Lmiui/payment/PaymentManager;)Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 499
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/payment/PaymentManager$PmsTask;->mIsBound:Z

    .line 501
    const-string v0, "PaymentManager"

    const-string v1, "service unbinded"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
