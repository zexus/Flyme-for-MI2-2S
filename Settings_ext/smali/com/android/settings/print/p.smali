.class final Lcom/android/settings_ext/print/p;
.super Landroid/content/AsyncTaskLoader;
.source "PrintSettingsFragment.java"


# instance fields
.field private agP:Landroid/print/PrintManager$PrintJobStateChangeListener;

.field private final agQ:Landroid/print/PrintManager;

.field private aht:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 462
    invoke-direct {p0, p1}, Landroid/content/AsyncTaskLoader;-><init>(Landroid/content/Context;)V

    .line 455
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/print/p;->aht:Ljava/util/List;

    .line 463
    const-string v0, "print"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->getGlobalPrintManagerForUser(I)Landroid/print/PrintManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/print/p;->agQ:Landroid/print/PrintManager;

    .line 466
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/print/p;)V
    .locals 0

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/android/settings_ext/print/p;->onForceLoad()V

    return-void
.end method

.method private static a(Landroid/print/PrintJobInfo;)Z
    .locals 1

    .prologue
    .line 545
    invoke-virtual {p0}, Landroid/print/PrintJobInfo;->getState()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 553
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 550
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 545
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 449
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings_ext/print/p;->i(Ljava/util/List;)V

    return-void
.end method

.method public i(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 470
    invoke-virtual {p0}, Lcom/android/settings_ext/print/p;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 471
    invoke-super {p0, p1}, Landroid/content/AsyncTaskLoader;->deliverResult(Ljava/lang/Object;)V

    .line 473
    :cond_0
    return-void
.end method

.method public iA()Ljava/util/List;
    .locals 6

    .prologue
    .line 529
    const/4 v1, 0x0

    .line 530
    iget-object v0, p0, Lcom/android/settings_ext/print/p;->agQ:Landroid/print/PrintManager;

    invoke-virtual {v0}, Landroid/print/PrintManager;->getPrintJobs()Ljava/util/List;

    move-result-object v3

    .line 531
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    .line 532
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    if-ge v2, v4, :cond_0

    .line 533
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintJob;

    invoke-virtual {v0}, Landroid/print/PrintJob;->getInfo()Landroid/print/PrintJobInfo;

    move-result-object v5

    .line 534
    invoke-static {v5}, Lcom/android/settings_ext/print/p;->a(Landroid/print/PrintJobInfo;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 535
    if-nez v1, :cond_1

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 538
    :goto_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 532
    :goto_2
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    move-object v1, v0

    goto :goto_0

    .line 541
    :cond_0
    return-object v1

    :cond_1
    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_2
.end method

.method public synthetic loadInBackground()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 449
    invoke-virtual {p0}, Lcom/android/settings_ext/print/p;->iA()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method protected onReset()V
    .locals 2

    .prologue
    .line 516
    invoke-virtual {p0}, Lcom/android/settings_ext/print/p;->onStopLoading()V

    .line 518
    iget-object v0, p0, Lcom/android/settings_ext/print/p;->aht:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 520
    iget-object v0, p0, Lcom/android/settings_ext/print/p;->agP:Landroid/print/PrintManager$PrintJobStateChangeListener;

    if-eqz v0, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/settings_ext/print/p;->agQ:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings_ext/print/p;->agP:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->removePrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 523
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/print/p;->agP:Landroid/print/PrintManager$PrintJobStateChangeListener;

    .line 525
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/settings_ext/print/p;->aht:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 482
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ext/print/p;->aht:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/print/p;->i(Ljava/util/List;)V

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/print/p;->agP:Landroid/print/PrintManager$PrintJobStateChangeListener;

    if-nez v0, :cond_1

    .line 486
    new-instance v0, Lcom/android/settings_ext/print/q;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/print/q;-><init>(Lcom/android/settings_ext/print/p;)V

    iput-object v0, p0, Lcom/android/settings_ext/print/p;->agP:Landroid/print/PrintManager$PrintJobStateChangeListener;

    .line 492
    iget-object v0, p0, Lcom/android/settings_ext/print/p;->agQ:Landroid/print/PrintManager;

    iget-object v1, p0, Lcom/android/settings_ext/print/p;->agP:Landroid/print/PrintManager$PrintJobStateChangeListener;

    invoke-virtual {v0, v1}, Landroid/print/PrintManager;->addPrintJobStateChangeListener(Landroid/print/PrintManager$PrintJobStateChangeListener;)V

    .line 496
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/print/p;->aht:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 497
    invoke-virtual {p0}, Lcom/android/settings_ext/print/p;->onForceLoad()V

    .line 499
    :cond_2
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 507
    invoke-virtual {p0}, Lcom/android/settings_ext/print/p;->onCancelLoad()Z

    .line 508
    return-void
.end method
