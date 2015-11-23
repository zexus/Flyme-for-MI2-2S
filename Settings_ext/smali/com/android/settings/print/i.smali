.class Lcom/android/settings/print/i;
.super Landroid/content/Loader;
.source "PrintServiceSettingsFragment.java"


# instance fields
.field private final ahl:Ljava/util/Map;

.field private ahm:Landroid/print/PrinterDiscoverySession;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 651
    invoke-direct {p0, p1}, Landroid/content/Loader;-><init>(Landroid/content/Context;)V

    .line 645
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/print/i;->ahl:Ljava/util/Map;

    .line 652
    return-void
.end method

.method static synthetic a(Lcom/android/settings/print/i;)Landroid/print/PrinterDiscoverySession;
    .locals 1

    .prologue
    .line 639
    iget-object v0, p0, Lcom/android/settings/print/i;->ahm:Landroid/print/PrinterDiscoverySession;

    return-object v0
.end method

.method private rg()Z
    .locals 1

    .prologue
    .line 721
    iget-object v0, p0, Lcom/android/settings/print/i;->ahm:Landroid/print/PrinterDiscoverySession;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/print/i;->ahm:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->isPrinterDiscoveryStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 723
    iget-object v0, p0, Lcom/android/settings/print/i;->ahm:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->stopPrinterDiscovery()V

    .line 724
    const/4 v0, 0x1

    .line 726
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private rh()V
    .locals 2

    .prologue
    .line 730
    iget-object v0, p0, Lcom/android/settings/print/i;->ahm:Landroid/print/PrinterDiscoverySession;

    if-nez v0, :cond_0

    .line 731
    invoke-virtual {p0}, Lcom/android/settings/print/i;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "print"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrintManager;

    .line 733
    invoke-virtual {v0}, Landroid/print/PrintManager;->createPrinterDiscoverySession()Landroid/print/PrinterDiscoverySession;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/print/i;->ahm:Landroid/print/PrinterDiscoverySession;

    .line 734
    iget-object v0, p0, Lcom/android/settings/print/i;->ahm:Landroid/print/PrinterDiscoverySession;

    new-instance v1, Lcom/android/settings/print/j;

    invoke-direct {v1, p0}, Lcom/android/settings/print/j;-><init>(Lcom/android/settings/print/i;)V

    invoke-virtual {v0, v1}, Landroid/print/PrinterDiscoverySession;->setOnPrintersChangeListener(Landroid/print/PrinterDiscoverySession$OnPrintersChangeListener;)V

    .line 742
    :cond_0
    iget-object v0, p0, Lcom/android/settings/print/i;->ahm:Landroid/print/PrinterDiscoverySession;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/print/PrinterDiscoverySession;->startPrinterDiscovery(Ljava/util/List;)V

    .line 743
    return-void
.end method


# virtual methods
.method public synthetic deliverResult(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 639
    check-cast p1, Ljava/util/List;

    invoke-virtual {p0, p1}, Lcom/android/settings/print/i;->i(Ljava/util/List;)V

    return-void
.end method

.method public i(Ljava/util/List;)V
    .locals 1

    .prologue
    .line 656
    invoke-virtual {p0}, Lcom/android/settings/print/i;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 657
    invoke-super {p0, p1}, Landroid/content/Loader;->deliverResult(Ljava/lang/Object;)V

    .line 659
    :cond_0
    return-void
.end method

.method protected onAbandon()V
    .locals 0

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/android/settings/print/i;->onStopLoading()V

    .line 718
    return-void
.end method

.method protected onCancelLoad()Z
    .locals 1

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/android/settings/print/i;->rg()Z

    move-result v0

    return v0
.end method

.method protected onForceLoad()V
    .locals 0

    .prologue
    .line 688
    invoke-direct {p0}, Lcom/android/settings/print/i;->rh()V

    .line 689
    return-void
.end method

.method protected onReset()V
    .locals 1

    .prologue
    .line 704
    invoke-virtual {p0}, Lcom/android/settings/print/i;->onStopLoading()V

    .line 705
    iget-object v0, p0, Lcom/android/settings/print/i;->ahl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 706
    iget-object v0, p0, Lcom/android/settings/print/i;->ahm:Landroid/print/PrinterDiscoverySession;

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lcom/android/settings/print/i;->ahm:Landroid/print/PrinterDiscoverySession;

    invoke-virtual {v0}, Landroid/print/PrinterDiscoverySession;->destroy()V

    .line 708
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/print/i;->ahm:Landroid/print/PrinterDiscoverySession;

    .line 710
    :cond_0
    return-void
.end method

.method protected onStartLoading()V
    .locals 2

    .prologue
    .line 668
    iget-object v0, p0, Lcom/android/settings/print/i;->ahl:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 669
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings/print/i;->ahl:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v0}, Lcom/android/settings/print/i;->i(Ljava/util/List;)V

    .line 672
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/print/i;->onForceLoad()V

    .line 673
    return-void
.end method

.method protected onStopLoading()V
    .locals 0

    .prologue
    .line 680
    invoke-virtual {p0}, Lcom/android/settings/print/i;->onCancelLoad()Z

    .line 681
    return-void
.end method
