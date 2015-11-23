.class public Lcom/android/settings/applications/ApplicationsState$Session;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# instance fields
.field final synthetic Fd:Lcom/android/settings/applications/ApplicationsState;

.field final Ff:Lcom/android/settings/applications/ApplicationsState$Callbacks;

.field final Fg:Ljava/lang/Object;

.field Fh:Z

.field Fi:Z

.field Fj:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field Fk:Ljava/util/Comparator;

.field Fl:Ljava/util/ArrayList;

.field Fm:Ljava/util/ArrayList;

.field mResumed:Z


# direct methods
.method constructor <init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ApplicationsState$Callbacks;)V
    .locals 1

    .prologue
    .line 547
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 539
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fg:Ljava/lang/Object;

    .line 548
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Ff:Lcom/android/settings/applications/ApplicationsState$Callbacks;

    .line 549
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;
    .locals 6

    .prologue
    .line 580
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fg:Ljava/lang/Object;

    monitor-enter v1

    .line 581
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 582
    :try_start_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->ED:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 583
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fh:Z

    .line 584
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fi:Z

    .line 585
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fj:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 586
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fk:Ljava/util/Comparator;

    .line 587
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fl:Ljava/util/ArrayList;

    .line 588
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->EP:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->EP:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 591
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState;->EP:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v3, v0}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendMessage(Landroid/os/Message;)Z

    .line 593
    :cond_0
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 596
    :try_start_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0xfa

    add-long/2addr v2, v4

    .line 598
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fl:Ljava/util/ArrayList;

    if-nez v0, :cond_1

    .line 599
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 600
    cmp-long v0, v4, v2

    if-ltz v0, :cond_2

    .line 609
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fi:Z

    .line 611
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fl:Ljava/util/ArrayList;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-object v0

    .line 593
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v0

    .line 612
    :catchall_1
    move-exception v0

    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 604
    :cond_2
    :try_start_5
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fg:Ljava/lang/Object;

    sub-long v4, v2, v4

    invoke-virtual {v0, v4, v5}, Ljava/lang/Object;->wait(J)V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    .line 605
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method iZ()V
    .locals 8

    .prologue
    const/4 v0, 0x0

    .line 618
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fg:Ljava/lang/Object;

    monitor-enter v1

    .line 619
    :try_start_0
    iget-boolean v2, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fh:Z

    if-nez v2, :cond_0

    .line 620
    monitor-exit v1

    .line 676
    :goto_0
    return-void

    .line 623
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fj:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 624
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fk:Ljava/util/Comparator;

    .line 625
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fh:Z

    .line 626
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fj:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 627
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fk:Ljava/util/Comparator;

    .line 628
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 630
    const/4 v1, -0x2

    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 632
    if-eqz v2, :cond_1

    .line 633
    invoke-interface {v2}, Lcom/android/settings/applications/ApplicationsState$AppFilter;->init()V

    .line 637
    :cond_1
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    monitor-enter v1

    .line 638
    :try_start_1
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsState;->EH:Ljava/util/List;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 639
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 641
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move v1, v0

    .line 643
    :goto_1
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 644
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 645
    if-eqz v2, :cond_2

    invoke-interface {v2, v0}, Lcom/android/settings/applications/ApplicationsState$AppFilter;->d(Landroid/content/pm/ApplicationInfo;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 646
    :cond_2
    iget-object v6, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v6, v6, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    monitor-enter v6

    .line 648
    :try_start_2
    iget-object v7, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v7, v0}, Lcom/android/settings/applications/ApplicationsState;->c(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 649
    iget-object v7, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v7, v7, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v7}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->ab(Landroid/content/Context;)V

    .line 651
    invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 653
    monitor-exit v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 643
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 628
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    .line 639
    :catchall_1
    move-exception v0

    :try_start_4
    monitor-exit v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v0

    .line 653
    :catchall_2
    move-exception v0

    :try_start_5
    monitor-exit v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v0

    .line 657
    :cond_4
    invoke-static {v5, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 659
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fg:Ljava/lang/Object;

    monitor-enter v1

    .line 660
    :try_start_6
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fh:Z

    if-nez v0, :cond_5

    .line 661
    iput-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fm:Ljava/util/ArrayList;

    .line 662
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fi:Z

    if-nez v0, :cond_6

    .line 663
    iput-object v5, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fl:Ljava/util/ArrayList;

    .line 664
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fg:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 673
    :cond_5
    :goto_2
    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 675
    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    goto/16 :goto_0

    .line 666
    :cond_6
    :try_start_7
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->EM:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 667
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->EM:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 669
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState;->EM:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_2

    .line 673
    :catchall_3
    move-exception v0

    monitor-exit v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    throw v0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 565
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    monitor-enter v1

    .line 566
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v0, :cond_0

    .line 567
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    .line 568
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/applications/ApplicationsState;->EK:Z

    .line 569
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->EP:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2, p0}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->removeMessages(ILjava/lang/Object;)V

    .line 570
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->iU()V

    .line 573
    :cond_0
    monitor-exit v1

    .line 574
    return-void

    .line 573
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 679
    invoke-virtual {p0}, Lcom/android/settings/applications/ApplicationsState$Session;->pause()V

    .line 680
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    monitor-enter v1

    .line 681
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState;->EC:Ljava/util/ArrayList;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 683
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fl:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    .line 684
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fl:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 686
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fm:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    .line 687
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fm:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 689
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->iV()V

    .line 691
    monitor-exit v1

    .line 692
    return-void

    .line 691
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 553
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    monitor-enter v1

    .line 554
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v0, :cond_0

    .line 555
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    .line 556
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    const/4 v2, 0x1

    iput-boolean v2, v0, Lcom/android/settings/applications/ApplicationsState;->EK:Z

    .line 557
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState$Session;->Fd:Lcom/android/settings/applications/ApplicationsState;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState;->iS()V

    .line 559
    :cond_0
    monitor-exit v1

    .line 561
    return-void

    .line 559
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
