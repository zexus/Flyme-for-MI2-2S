.class Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;
.super Landroid/net/NetworkFactory;
.source "DcTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/dataconnection/DcTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TelephonyNetworkFactory"
.end annotation


# instance fields
.field private mDdsRequests:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;"
        }
    .end annotation
.end field

.field private mNetworkCapabilities:Landroid/net/NetworkCapabilities;

.field private mPhone:Lcom/android/internal/telephony/PhoneBase;

.field final synthetic this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p2, "l"    # Landroid/os/Looper;
    .param p3, "c"    # Landroid/content/Context;
    .param p4, "TAG"    # Ljava/lang/String;
    .param p5, "nc"    # Landroid/net/NetworkCapabilities;
    .param p6, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 424
    iput-object p1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    .line 425
    invoke-direct {p0, p2, p3, p4, p5}, Landroid/net/NetworkFactory;-><init>(Landroid/os/Looper;Landroid/content/Context;Ljava/lang/String;Landroid/net/NetworkCapabilities;)V

    .line 421
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->mDdsRequests:Landroid/util/SparseArray;

    .line 426
    iput-object p6, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 427
    iput-object p5, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    .line 428
    return-void
.end method

.method private isNetworkRequestForInternet(Landroid/net/NetworkRequest;)Z
    .locals 3
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 542
    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    const/16 v2, 0xc

    invoke-virtual {v1, v2}, Landroid/net/NetworkCapabilities;->hasCapability(I)Z

    move-result v0

    .line 544
    .local v0, "flag":Z
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Is the request for Internet = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 545
    return v0
.end method

.method private isValidRequest(Landroid/net/NetworkRequest;)Z
    .locals 2
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 537
    iget-object v1, p1, Landroid/net/NetworkRequest;->networkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v1}, Landroid/net/NetworkCapabilities;->getCapabilities()[I

    move-result-object v0

    .line 538
    .local v0, "types":[I
    array-length v1, v0

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private registerOnDemandDdsCallback()V
    .locals 4

    .prologue
    .line 445
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 447
    .local v0, "subController":Lcom/android/internal/telephony/SubscriptionController;
    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v2

    new-instance v1, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory$1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory$1;-><init>(Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;)V

    invoke-virtual {v0, v2, v3, v1}, Lcom/android/internal/telephony/SubscriptionController;->registerForOnDemandDdsLockNotification(JLcom/android/internal/telephony/SubscriptionController$OnDemandDdsLockNotifier;)V

    .line 454
    return-void
.end method

.method private removeRequestFromList(Landroid/util/SparseArray;Landroid/net/NetworkRequest;)V
    .locals 4
    .param p2, "n"    # Landroid/net/NetworkRequest;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/net/NetworkRequest;",
            ">;",
            "Landroid/net/NetworkRequest;",
            ")V"
        }
    .end annotation

    .prologue
    .line 558
    .local p1, "list":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/net/NetworkRequest;>;"
    iget v2, p2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    .line 559
    .local v1, "nr":Landroid/net/NetworkRequest;
    if-eqz v1, :cond_0

    .line 560
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing request = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 561
    iget v2, p2, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->remove(I)V

    .line 562
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->apnContextForNetworkRequest(Landroid/net/NetworkRequest;)Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-static {v2, p2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$200(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/net/NetworkRequest;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 563
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deactivating APN="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 565
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->decRefCount()V

    .line 568
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_0
    return-void
.end method

.method private removeRequestIfFound(Landroid/net/NetworkRequest;)V
    .locals 4
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 571
    const-string v2, "Release the request from dds queue, if found"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 572
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->mDdsRequests:Landroid/util/SparseArray;

    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->removeRequestFromList(Landroid/util/SparseArray;Landroid/net/NetworkRequest;)V

    .line 574
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->isNetworkRequestForInternet(Landroid/net/NetworkRequest;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 575
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    .line 576
    .local v1, "subController":Lcom/android/internal/telephony/SubscriptionController;
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->stopOnDemandDataSubscriptionRequest(Landroid/net/NetworkRequest;)V

    .line 585
    .end local v1    # "subController":Lcom/android/internal/telephony/SubscriptionController;
    :cond_0
    :goto_0
    return-void

    .line 579
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->apnContextForNetworkRequest(Landroid/net/NetworkRequest;)Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-static {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$200(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/net/NetworkRequest;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 580
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 581
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deactivating APN="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 582
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->decRefCount()V

    goto :goto_0
.end method

.method private requestOnDemandDataSubscriptionLock(Landroid/net/NetworkRequest;)V
    .locals 3
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 549
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->isNetworkRequestForInternet(Landroid/net/NetworkRequest;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 551
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    .line 552
    .local v0, "subController":Lcom/android/internal/telephony/SubscriptionController;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "requestOnDemandDataSubscriptionLock for request = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 553
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/SubscriptionController;->startOnDemandDataSubscriptionRequest(Landroid/net/NetworkRequest;)V

    .line 555
    .end local v0    # "subController":Lcom/android/internal/telephony/SubscriptionController;
    :cond_0
    return-void
.end method


# virtual methods
.method protected log(Ljava/lang/String;)V
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 608
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TelephonyNetworkFactory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    return-void
.end method

.method protected needNetworkFor(Landroid/net/NetworkRequest;I)V
    .locals 10
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;
    .param p2, "score"    # I

    .prologue
    .line 480
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Cellular needs Network for "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 481
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v1

    .line 482
    .local v1, "subController":Lcom/android/internal/telephony/SubscriptionController;
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "subController = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v1}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v2

    .line 485
    .local v2, "currentDds":J
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v8}, Lcom/android/internal/telephony/PhoneBase;->getSubId()J

    move-result-wide v6

    .line 486
    .local v6, "subId":J
    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/SubscriptionController;->getSubIdFromNetworkRequest(Landroid/net/NetworkRequest;)J

    move-result-wide v4

    .line 488
    .local v4, "requestedSpecifier":J
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "CurrentDds = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 489
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "mySubId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 490
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Requested networkSpecifier = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 491
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "my networkSpecifier = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v9}, Landroid/net/NetworkCapabilities;->getNetworkSpecifier()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 493
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gez v8, :cond_1

    .line 494
    const-string v8, "Can\'t handle any network request now, subId not ready."

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 534
    :cond_0
    :goto_0
    return-void

    .line 501
    :cond_1
    cmp-long v8, v4, v6

    if-eqz v8, :cond_2

    .line 502
    const-string v8, "requestedSpecifier is not same as mysubId. Bail out."

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 506
    :cond_2
    cmp-long v8, v2, v4

    if-eqz v8, :cond_3

    .line 507
    const-string v8, "This request would result in DDS switch"

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 508
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Requested DDS switch to subId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 512
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->mDdsRequests:Landroid/util/SparseArray;

    iget v9, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v8, v9, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 513
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->requestOnDemandDataSubscriptionLock(Landroid/net/NetworkRequest;)V

    goto :goto_0

    .line 517
    :cond_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->isNetworkRequestForInternet(Landroid/net/NetworkRequest;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 518
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Activating internet request on subId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 519
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->apnContextForNetworkRequest(Landroid/net/NetworkRequest;)Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-static {v8, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$200(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/net/NetworkRequest;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 520
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 521
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Activating APN="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 522
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->incRefCount()V

    goto :goto_0

    .line 525
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->isValidRequest(Landroid/net/NetworkRequest;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 527
    iget-object v8, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->mDdsRequests:Landroid/util/SparseArray;

    iget v9, p1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v8, v9, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 528
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->requestOnDemandDataSubscriptionLock(Landroid/net/NetworkRequest;)V

    goto/16 :goto_0

    .line 530
    :cond_5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Bogus request req = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public processPendingNetworkRequests(Landroid/net/NetworkRequest;)V
    .locals 5
    .param p1, "n"    # Landroid/net/NetworkRequest;

    .prologue
    .line 431
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->mDdsRequests:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 432
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->mDdsRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/NetworkRequest;

    .line 433
    .local v2, "nr":Landroid/net/NetworkRequest;
    invoke-virtual {v2, p1}, Landroid/net/NetworkRequest;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 434
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Found pending request in ddsRequest list = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 435
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->this$0:Lcom/android/internal/telephony/dataconnection/DcTracker;

    # invokes: Lcom/android/internal/telephony/dataconnection/DcTracker;->apnContextForNetworkRequest(Landroid/net/NetworkRequest;)Lcom/android/internal/telephony/dataconnection/ApnContext;
    invoke-static {v3, v2}, Lcom/android/internal/telephony/dataconnection/DcTracker;->access$200(Lcom/android/internal/telephony/dataconnection/DcTracker;Landroid/net/NetworkRequest;)Lcom/android/internal/telephony/dataconnection/ApnContext;

    move-result-object v0

    .line 436
    .local v0, "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    if-eqz v0, :cond_0

    .line 437
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Activating APN="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 438
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/ApnContext;->incRefCount()V

    .line 431
    .end local v0    # "apnContext":Lcom/android/internal/telephony/dataconnection/ApnContext;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 442
    .end local v2    # "nr":Landroid/net/NetworkRequest;
    :cond_1
    return-void
.end method

.method public releaseAllNetworkRequests()V
    .locals 5

    .prologue
    .line 594
    const-string v3, "releaseAllNetworkRequests"

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 595
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v2

    .line 596
    .local v2, "subController":Lcom/android/internal/telephony/SubscriptionController;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->mDdsRequests:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 597
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->mDdsRequests:Landroid/util/SparseArray;

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkRequest;

    .line 598
    .local v1, "nr":Landroid/net/NetworkRequest;
    if-eqz v1, :cond_0

    .line 599
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing request = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 600
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/SubscriptionController;->stopOnDemandDataSubscriptionRequest(Landroid/net/NetworkRequest;)V

    .line 601
    iget-object v3, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->mDdsRequests:Landroid/util/SparseArray;

    iget v4, v1, Landroid/net/NetworkRequest;->requestId:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->remove(I)V

    .line 596
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 604
    .end local v1    # "nr":Landroid/net/NetworkRequest;
    :cond_1
    return-void
.end method

.method protected releaseNetworkFor(Landroid/net/NetworkRequest;)V
    .locals 2
    .param p1, "networkRequest"    # Landroid/net/NetworkRequest;

    .prologue
    .line 589
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Cellular releasing Network for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 590
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->removeRequestIfFound(Landroid/net/NetworkRequest;)V

    .line 591
    return-void
.end method

.method public updateNetworkCapability(J)V
    .locals 5
    .param p1, "subId"    # J

    .prologue
    const/16 v3, 0xc

    .line 457
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "update networkCapabilites for subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/NetworkCapabilities;->setNetworkSpecifier(Ljava/lang/String;)V

    .line 460
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController;->getSubState(J)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/SubscriptionController;->getDefaultDataSubId()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 463
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INTERNET capability is with subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->addCapability(I)Landroid/net/NetworkCapabilities;

    .line 471
    :goto_0
    const/16 v0, 0x32

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->setScoreFilter(I)V

    .line 472
    invoke-direct {p0}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->registerOnDemandDdsCallback()V

    .line 474
    const-string v0, "Ready to handle network requests"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 475
    return-void

    .line 467
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "INTERNET capability is removed from subId = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->log(Ljava/lang/String;)V

    .line 468
    iget-object v0, p0, Lcom/android/internal/telephony/dataconnection/DcTracker$TelephonyNetworkFactory;->mNetworkCapabilities:Landroid/net/NetworkCapabilities;

    invoke-virtual {v0, v3}, Landroid/net/NetworkCapabilities;->removeCapability(I)Landroid/net/NetworkCapabilities;

    goto :goto_0
.end method
