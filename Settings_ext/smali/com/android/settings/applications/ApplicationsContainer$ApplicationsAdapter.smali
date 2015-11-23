.class public Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ApplicationsContainer.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/Filterable;
.implements Lcom/android/settings/applications/ApplicationsState$Callbacks;


# instance fields
.field private final DU:Lcom/android/settings/applications/ApplicationsState;

.field private final DV:Lcom/android/settings/applications/ApplicationsState$Session;

.field private final DW:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

.field private final DX:I

.field private DY:Ljava/util/ArrayList;

.field private DZ:Ljava/util/ArrayList;

.field private Ea:I

.field private Eb:I

.field Ec:Ljava/lang/CharSequence;

.field private Ed:Landroid/widget/Filter;

.field private final mActive:Ljava/util/ArrayList;

.field private final mContext:Landroid/content/Context;

.field private mResumed:Z


# direct methods
.method public constructor <init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ApplicationsContainer$TabInfo;I)V
    .locals 1

    .prologue
    .line 567
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 536
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 541
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Ea:I

    .line 542
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Eb:I

    .line 545
    new-instance v0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter$1;-><init>(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Ed:Landroid/widget/Filter;

    .line 568
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DU:Lcom/android/settings/applications/ApplicationsState;

    .line 569
    invoke-virtual {p1, p0}, Lcom/android/settings/applications/ApplicationsState;->a(Lcom/android/settings/applications/ApplicationsState$Callbacks;)Lcom/android/settings/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DV:Lcom/android/settings/applications/ApplicationsState$Session;

    .line 570
    iput-object p2, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DW:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    .line 571
    iget-object v0, p2, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->Ef:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsContainer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 572
    iput p3, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DX:I

    .line 573
    return-void
.end method

.method static synthetic a(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DY:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 529
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    return-object p1
.end method


# virtual methods
.method public Z(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 609
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    .line 610
    if-eqz v2, :cond_1

    .line 611
    iput v4, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Eb:I

    .line 615
    :goto_0
    iget v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DX:I

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 629
    :cond_0
    :goto_1
    iget v2, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Ea:I

    packed-switch v2, :pswitch_data_1

    .line 644
    sget-object v2, Lcom/android/settings/applications/ApplicationsState;->Er:Ljava/util/Comparator;

    .line 647
    :goto_2
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DV:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v3, v0, v2}, Lcom/android/settings/applications/ApplicationsState$Session;->a(Lcom/android/settings/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 649
    if-nez v0, :cond_2

    if-nez p1, :cond_2

    .line 668
    :goto_3
    return-void

    .line 613
    :cond_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Eb:I

    goto :goto_0

    .line 617
    :pswitch_0
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->Ev:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    goto :goto_1

    .line 620
    :pswitch_1
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->Ew:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 621
    if-nez v2, :cond_0

    .line 622
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Eb:I

    goto :goto_1

    .line 631
    :pswitch_2
    iget v2, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Eb:I

    packed-switch v2, :pswitch_data_2

    .line 639
    sget-object v2, Lcom/android/settings/applications/ApplicationsState;->Es:Ljava/util/Comparator;

    goto :goto_2

    .line 633
    :pswitch_3
    sget-object v2, Lcom/android/settings/applications/ApplicationsState;->Et:Ljava/util/Comparator;

    goto :goto_2

    .line 636
    :pswitch_4
    sget-object v2, Lcom/android/settings/applications/ApplicationsState;->Eu:Ljava/util/Comparator;

    goto :goto_2

    .line 653
    :cond_2
    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DY:Ljava/util/ArrayList;

    .line 654
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DY:Ljava/util/ArrayList;

    if-eqz v2, :cond_3

    .line 655
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Ec:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DY:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    .line 659
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 661
    if-nez v0, :cond_4

    .line 662
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DW:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->b(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 663
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DW:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->c(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 657
    :cond_3
    iput-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    goto :goto_4

    .line 665
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DW:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->b(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V

    .line 666
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DW:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->c(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 615
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 629
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_2
    .end packed-switch

    .line 631
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7

    .prologue
    .line 673
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 688
    :cond_0
    :goto_0
    return-object p2

    .line 676
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 678
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 679
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 680
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 681
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 682
    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->iX()Ljava/lang/String;

    move-result-object v5

    .line 683
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 685
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 680
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move-object p2, v2

    .line 688
    goto :goto_0
.end method

.method public aa(Z)V
    .locals 1

    .prologue
    .line 694
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DW:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->Ef:Lcom/android/settings/applications/ApplicationsContainer;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsContainer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 696
    return-void
.end method

.method public ac(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 724
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 725
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppViewHolder;

    .line 726
    iget-object v3, v0, Lcom/android/settings/applications/AppViewHolder;->Dx:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 727
    iget-object v1, v0, Lcom/android/settings/applications/AppViewHolder;->Dx:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    monitor-enter v1

    .line 728
    :try_start_0
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DW:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    iget-object v3, v3, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->Ej:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Eb:I

    invoke-virtual {v0, v3, v4}, Lcom/android/settings/applications/AppViewHolder;->a(Ljava/lang/CharSequence;I)V

    .line 729
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 730
    iget-object v0, v0, Lcom/android/settings/applications/AppViewHolder;->Dx:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DW:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->Ef:Lcom/android/settings/applications/ApplicationsContainer;

    iget-object v1, v1, Lcom/android/settings/applications/ApplicationsContainer;->CJ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Ea:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 737
    invoke-virtual {p0, v2}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Z(Z)V

    .line 742
    :cond_0
    return-void

    .line 729
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 724
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public ay(I)V
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Ea:I

    if-ne p1, v0, :cond_0

    .line 604
    :goto_0
    return-void

    .line 602
    :cond_0
    iput p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Ea:I

    .line 603
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Z(Z)V

    goto :goto_0
.end method

.method public az(I)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 1

    .prologue
    .line 760
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 701
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DW:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->c(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 702
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DW:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->c(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 705
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DW:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->b(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 706
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DW:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    invoke-static {v0}, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->c(Lcom/android/settings/applications/ApplicationsContainer$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 708
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DY:Ljava/util/ArrayList;

    .line 709
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Ec:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DY:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    .line 710
    invoke-virtual {p0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 711
    return-void
.end method

.method public destroy()V
    .locals 1

    .prologue
    .line 594
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mResumed:Z

    .line 595
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DV:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->release()V

    .line 596
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 752
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 806
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Ed:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 756
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 764
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 771
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DW:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    iget-object v0, v0, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v0, p2}, Lcom/android/settings/applications/AppViewHolder;->a(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings/applications/AppViewHolder;

    move-result-object v3

    .line 773
    iget-object v4, v3, Lcom/android/settings/applications/AppViewHolder;->Dy:Landroid/view/View;

    .line 776
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 777
    monitor-enter v0

    .line 778
    :try_start_0
    iput-object v0, v3, Lcom/android/settings/applications/AppViewHolder;->Dx:Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 779
    iget-object v5, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 780
    iget-object v5, v3, Lcom/android/settings/applications/AppViewHolder;->Dz:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 782
    :cond_0
    iget-object v5, v3, Lcom/android/settings/applications/AppViewHolder;->DA:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v6}, Lcom/android/settings/applications/ApplicationsState$AppEntry;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 783
    iget-object v5, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DW:Lcom/android/settings/applications/ApplicationsContainer$TabInfo;

    iget-object v5, v5, Lcom/android/settings/applications/ApplicationsContainer$TabInfo;->Ej:Ljava/lang/CharSequence;

    iget v6, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Eb:I

    invoke-virtual {v3, v5, v6}, Lcom/android/settings/applications/AppViewHolder;->a(Ljava/lang/CharSequence;I)V

    .line 785
    iget-object v5, v3, Lcom/android/settings/applications/AppViewHolder;->DC:Landroid/widget/TextView;

    iget-object v6, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-boolean v6, v6, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-eqz v6, :cond_2

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 791
    iget v2, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DX:I

    const/4 v5, 0x2

    if-ne v2, v5, :cond_3

    .line 792
    iget-object v2, v3, Lcom/android/settings/applications/AppViewHolder;->DD:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v2, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 793
    iget-object v2, v3, Lcom/android/settings/applications/AppViewHolder;->DD:Landroid/widget/CheckBox;

    iget-object v3, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000

    and-int/2addr v3, v5

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 798
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 800
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 801
    return-object v4

    :cond_2
    move v2, v1

    .line 785
    goto :goto_0

    .line 796
    :cond_3
    :try_start_1
    iget-object v1, v3, Lcom/android/settings/applications/AppViewHolder;->DD:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    goto :goto_1

    .line 798
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public iL()V
    .locals 1

    .prologue
    .line 715
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Z(Z)V

    .line 716
    return-void
.end method

.method public iM()V
    .locals 0

    .prologue
    .line 720
    return-void
.end method

.method public iN()V
    .locals 2

    .prologue
    .line 746
    iget v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Ea:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 747
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Z(Z)V

    .line 749
    :cond_0
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 812
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 587
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 588
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mResumed:Z

    .line 589
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DV:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->pause()V

    .line 591
    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 576
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_0

    .line 577
    iput-boolean v1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->mResumed:Z

    .line 578
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->DV:Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$Session;->resume()V

    .line 579
    iput p1, p0, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Ea:I

    .line 580
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->Z(Z)V

    .line 584
    :goto_0
    return-void

    .line 582
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsContainer$ApplicationsAdapter;->ay(I)V

    goto :goto_0
.end method
