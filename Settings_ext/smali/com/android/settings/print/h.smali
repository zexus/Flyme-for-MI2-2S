.class Lcom/android/settings/print/h;
.super Landroid/widget/Filter;
.source "PrintServiceSettingsFragment.java"


# instance fields
.field final synthetic ahk:Lcom/android/settings/print/g;


# direct methods
.method constructor <init>(Lcom/android/settings/print/g;)V
    .locals 0

    .prologue
    .line 491
    iput-object p1, p0, Lcom/android/settings/print/h;->ahk:Lcom/android/settings/print/g;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8

    .prologue
    .line 494
    iget-object v0, p0, Lcom/android/settings/print/h;->ahk:Lcom/android/settings/print/g;

    invoke-static {v0}, Lcom/android/settings/print/g;->a(Lcom/android/settings/print/g;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 495
    :try_start_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 496
    const/4 v0, 0x0

    monitor-exit v3

    .line 510
    :goto_0
    return-object v0

    .line 498
    :cond_0
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 499
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 500
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    .line 501
    iget-object v0, p0, Lcom/android/settings/print/h;->ahk:Lcom/android/settings/print/g;

    invoke-static {v0}, Lcom/android/settings/print/g;->b(Lcom/android/settings/print/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v6

    .line 502
    const/4 v0, 0x0

    move v2, v0

    :goto_1
    if-ge v2, v6, :cond_2

    .line 503
    iget-object v0, p0, Lcom/android/settings/print/h;->ahk:Lcom/android/settings/print/g;

    invoke-static {v0}, Lcom/android/settings/print/g;->b(Lcom/android/settings/print/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/print/PrinterInfo;

    .line 504
    invoke-virtual {v0}, Landroid/print/PrinterInfo;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 505
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 502
    :cond_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 508
    :cond_2
    iput-object v4, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 509
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    .line 510
    monitor-exit v3

    move-object v0, v1

    goto :goto_0

    .line 511
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3

    .prologue
    .line 517
    iget-object v0, p0, Lcom/android/settings/print/h;->ahk:Lcom/android/settings/print/g;

    invoke-static {v0}, Lcom/android/settings/print/g;->a(Lcom/android/settings/print/g;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 518
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/print/h;->ahk:Lcom/android/settings/print/g;

    invoke-static {v0, p1}, Lcom/android/settings/print/g;->a(Lcom/android/settings/print/g;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    .line 519
    iget-object v0, p0, Lcom/android/settings/print/h;->ahk:Lcom/android/settings/print/g;

    invoke-static {v0}, Lcom/android/settings/print/g;->c(Lcom/android/settings/print/g;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 520
    if-nez p2, :cond_0

    .line 521
    iget-object v0, p0, Lcom/android/settings/print/h;->ahk:Lcom/android/settings/print/g;

    invoke-static {v0}, Lcom/android/settings/print/g;->c(Lcom/android/settings/print/g;)Ljava/util/List;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/print/h;->ahk:Lcom/android/settings/print/g;

    invoke-static {v2}, Lcom/android/settings/print/g;->b(Lcom/android/settings/print/g;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 526
    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 527
    iget-object v0, p0, Lcom/android/settings/print/h;->ahk:Lcom/android/settings/print/g;

    invoke-virtual {v0}, Lcom/android/settings/print/g;->notifyDataSetChanged()V

    .line 528
    return-void

    .line 523
    :cond_0
    :try_start_1
    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    .line 524
    iget-object v2, p0, Lcom/android/settings/print/h;->ahk:Lcom/android/settings/print/g;

    invoke-static {v2}, Lcom/android/settings/print/g;->c(Lcom/android/settings/print/g;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 526
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
