.class Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/Filterable;
.implements Lcom/android/settings_ext/applications/ApplicationsState$Callbacks;


# instance fields
.field private final DU:Lcom/android/settings_ext/applications/ApplicationsState;

.field private final DV:Lcom/android/settings_ext/applications/ApplicationsState$Session;

.field private final DX:I

.field private DY:Ljava/util/ArrayList;

.field private DZ:Ljava/util/ArrayList;

.field private Ea:I

.field private Eb:I

.field Ec:Ljava/lang/CharSequence;

.field private Ed:Landroid/widget/Filter;

.field private final Ho:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

.field private Hp:Z

.field private final mActive:Ljava/util/ArrayList;

.field private final mContext:Landroid/content/Context;

.field private mResumed:Z


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/applications/ApplicationsState;Lcom/android/settings_ext/applications/ManageApplications$TabInfo;I)V
    .locals 1

    .prologue
    .line 593
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 563
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 568
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ea:I

    .line 570
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Eb:I

    .line 573
    new-instance v0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter$1;-><init>(Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ed:Landroid/widget/Filter;

    .line 594
    iput-object p1, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DU:Lcom/android/settings_ext/applications/ApplicationsState;

    .line 595
    invoke-virtual {p1, p0}, Lcom/android/settings_ext/applications/ApplicationsState;->a(Lcom/android/settings_ext/applications/ApplicationsState$Callbacks;)Lcom/android/settings_ext/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DV:Lcom/android/settings_ext/applications/ApplicationsState$Session;

    .line 596
    iput-object p2, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ho:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    .line 597
    iget-object v0, p2, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hr:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 598
    iput p3, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DX:I

    .line 599
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DY:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 557
    iput-object p1, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic b(Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;)Lcom/android/settings_ext/applications/ManageApplications$TabInfo;
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ho:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    return-object v0
.end method


# virtual methods
.method public Z(Z)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 636
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v1

    .line 637
    if-eqz v1, :cond_1

    .line 638
    iput v3, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Eb:I

    .line 642
    :goto_0
    iget v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DX:I

    packed-switch v0, :pswitch_data_0

    .line 656
    sget-object v0, Lcom/android/settings_ext/applications/ApplicationsState;->Ey:Lcom/android/settings_ext/applications/ApplicationsState$AppFilter;

    .line 659
    :cond_0
    :goto_1
    iget v1, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ea:I

    packed-switch v1, :pswitch_data_1

    .line 674
    sget-object v1, Lcom/android/settings_ext/applications/ApplicationsState;->Er:Ljava/util/Comparator;

    .line 677
    :goto_2
    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DV:Lcom/android/settings_ext/applications/ApplicationsState$Session;

    invoke-virtual {v2, v0, v1}, Lcom/android/settings_ext/applications/ApplicationsState$Session;->a(Lcom/android/settings_ext/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 679
    if-nez v0, :cond_2

    if-nez p1, :cond_2

    .line 700
    :goto_3
    return-void

    .line 640
    :cond_1
    iput v4, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Eb:I

    goto :goto_0

    .line 644
    :pswitch_0
    sget-object v0, Lcom/android/settings_ext/applications/ApplicationsState;->Ev:Lcom/android/settings_ext/applications/ApplicationsState$AppFilter;

    goto :goto_1

    .line 647
    :pswitch_1
    sget-object v0, Lcom/android/settings_ext/applications/ApplicationsState;->Ew:Lcom/android/settings_ext/applications/ApplicationsState$AppFilter;

    .line 648
    if-nez v1, :cond_0

    .line 649
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Eb:I

    goto :goto_1

    .line 653
    :pswitch_2
    sget-object v0, Lcom/android/settings_ext/applications/ApplicationsState;->Ex:Lcom/android/settings_ext/applications/ApplicationsState$AppFilter;

    goto :goto_1

    .line 661
    :pswitch_3
    iget v1, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Eb:I

    packed-switch v1, :pswitch_data_2

    .line 669
    sget-object v1, Lcom/android/settings_ext/applications/ApplicationsState;->Es:Ljava/util/Comparator;

    goto :goto_2

    .line 663
    :pswitch_4
    sget-object v1, Lcom/android/settings_ext/applications/ApplicationsState;->Et:Ljava/util/Comparator;

    goto :goto_2

    .line 666
    :pswitch_5
    sget-object v1, Lcom/android/settings_ext/applications/ApplicationsState;->Eu:Ljava/util/Comparator;

    goto :goto_2

    .line 683
    :cond_2
    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DY:Ljava/util/ArrayList;

    .line 684
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DY:Ljava/util/ArrayList;

    if-eqz v1, :cond_3

    .line 685
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ec:Ljava/lang/CharSequence;

    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DY:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    .line 689
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 690
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ho:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-virtual {v1}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->jp()V

    .line 692
    if-nez v0, :cond_4

    .line 693
    iput-boolean v4, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Hp:Z

    .line 694
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ho:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->a(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 695
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ho:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->b(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 687
    :cond_3
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    goto :goto_4

    .line 697
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ho:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->a(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 698
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ho:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->b(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_3

    .line 642
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 659
    :pswitch_data_1
    .packed-switch 0x5
        :pswitch_3
    .end packed-switch

    .line 661
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7

    .prologue
    .line 704
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 718
    :cond_0
    :goto_0
    return-object p2

    .line 707
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/applications/ApplicationsState;->normalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 708
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 709
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 711
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 712
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    .line 713
    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->iX()Ljava/lang/String;

    move-result-object v5

    .line 714
    invoke-virtual {v5, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 715
    :cond_2
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 711
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    :cond_4
    move-object p2, v2

    .line 718
    goto :goto_0
.end method

.method public aa(Z)V
    .locals 1

    .prologue
    .line 724
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ho:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hr:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->setProgressBarIndeterminateVisibility(Z)V

    .line 725
    return-void
.end method

.method public ac(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 757
    move v1, v2

    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 758
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/AppViewHolder;

    .line 759
    iget-object v3, v0, Lcom/android/settings_ext/applications/AppViewHolder;->Dx:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v3, v3, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 760
    iget-object v1, v0, Lcom/android/settings_ext/applications/AppViewHolder;->Dx:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    monitor-enter v1

    .line 761
    :try_start_0
    iget-object v3, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ho:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    iget-object v3, v3, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Ej:Ljava/lang/CharSequence;

    iget v4, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Eb:I

    invoke-virtual {v0, v3, v4}, Lcom/android/settings_ext/applications/AppViewHolder;->a(Ljava/lang/CharSequence;I)V

    .line 762
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 763
    iget-object v0, v0, Lcom/android/settings_ext/applications/AppViewHolder;->Dx:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ho:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    iget-object v1, v1, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hr:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings_ext/applications/ManageApplications;->g(Lcom/android/settings_ext/applications/ManageApplications;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ea:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 769
    invoke-virtual {p0, v2}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Z(Z)V

    .line 771
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ho:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->jp()V

    .line 775
    :cond_1
    return-void

    .line 762
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 757
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0
.end method

.method public ay(I)V
    .locals 1

    .prologue
    .line 625
    iget v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ea:I

    if-ne p1, v0, :cond_0

    .line 630
    :goto_0
    return-void

    .line 628
    :cond_0
    iput p1, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ea:I

    .line 629
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Z(Z)V

    goto :goto_0
.end method

.method public az(I)Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;
    .locals 1

    .prologue
    .line 794
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    return-object v0
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 729
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ho:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->b(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 730
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ho:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->b(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 732
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ho:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->a(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 735
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ho:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->a(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    .line 736
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ho:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->b(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 737
    iput-boolean v3, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Hp:Z

    .line 738
    iput-object p1, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DY:Ljava/util/ArrayList;

    .line 739
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ec:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DY:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->a(Ljava/lang/CharSequence;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    .line 740
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 741
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ho:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->jp()V

    .line 742
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 786
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

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
    .line 843
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ed:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 790
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 798
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    iget-wide v0, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->id:J

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 804
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ho:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    iget-object v0, v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v0, p2}, Lcom/android/settings_ext/applications/AppViewHolder;->a(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings_ext/applications/AppViewHolder;

    move-result-object v2

    .line 805
    iget-object v3, v2, Lcom/android/settings_ext/applications/AppViewHolder;->Dy:Landroid/view/View;

    .line 808
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    .line 809
    monitor-enter v0

    .line 810
    :try_start_0
    iput-object v0, v2, Lcom/android/settings_ext/applications/AppViewHolder;->Dx:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    .line 811
    iget-object v4, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 812
    iget-object v4, v2, Lcom/android/settings_ext/applications/AppViewHolder;->Dz:Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->label:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 816
    :cond_0
    iget-object v4, v2, Lcom/android/settings_ext/applications/AppViewHolder;->DA:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v5}, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 818
    iget-object v4, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ho:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    iget-object v4, v4, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Ej:Ljava/lang/CharSequence;

    iget v5, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Eb:I

    invoke-virtual {v2, v4, v5}, Lcom/android/settings_ext/applications/AppViewHolder;->a(Ljava/lang/CharSequence;I)V

    .line 819
    iget-object v4, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x800000

    and-int/2addr v4, v5

    if-nez v4, :cond_2

    .line 820
    iget-object v4, v2, Lcom/android/settings_ext/applications/AppViewHolder;->DC:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 821
    iget-object v4, v2, Lcom/android/settings_ext/applications/AppViewHolder;->DC:Landroid/widget/TextView;

    const v5, 0x7f090547

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    .line 828
    :goto_0
    iget v4, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DX:I

    const/4 v5, 0x2

    if-ne v4, v5, :cond_4

    .line 829
    iget-object v4, v2, Lcom/android/settings_ext/applications/AppViewHolder;->DD:Landroid/widget/CheckBox;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 830
    iget-object v2, v2, Lcom/android/settings_ext/applications/AppViewHolder;->DD:Landroid/widget/CheckBox;

    iget-object v4, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v5, 0x40000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-virtual {v2, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 835
    :goto_1
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 836
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 837
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 838
    return-object v3

    .line 822
    :cond_2
    :try_start_1
    iget-object v4, v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    iget-boolean v4, v4, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v4, :cond_3

    .line 823
    iget-object v4, v2, Lcom/android/settings_ext/applications/AppViewHolder;->DC:Landroid/widget/TextView;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 824
    iget-object v4, v2, Lcom/android/settings_ext/applications/AppViewHolder;->DC:Landroid/widget/TextView;

    const v5, 0x7f090546

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 835
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 826
    :cond_3
    :try_start_2
    iget-object v4, v2, Lcom/android/settings_ext/applications/AppViewHolder;->DC:Landroid/widget/TextView;

    const/16 v5, 0x8

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 833
    :cond_4
    iget-object v1, v2, Lcom/android/settings_ext/applications/AppViewHolder;->DD:Landroid/widget/CheckBox;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1
.end method

.method public iL()V
    .locals 1

    .prologue
    .line 746
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Z(Z)V

    .line 747
    return-void
.end method

.method public iM()V
    .locals 0

    .prologue
    .line 753
    return-void
.end method

.method public iN()V
    .locals 2

    .prologue
    .line 779
    iget v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ea:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 780
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Z(Z)V

    .line 782
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ho:Lcom/android/settings_ext/applications/ManageApplications$TabInfo;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->jp()V

    .line 783
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 848
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 849
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 614
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-eqz v0, :cond_0

    .line 615
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 616
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DV:Lcom/android/settings_ext/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsState$Session;->pause()V

    .line 618
    :cond_0
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 621
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DV:Lcom/android/settings_ext/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsState$Session;->release()V

    .line 622
    return-void
.end method

.method public resume(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 603
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_0

    .line 604
    iput-boolean v1, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->mResumed:Z

    .line 605
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->DV:Lcom/android/settings_ext/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsState$Session;->resume()V

    .line 606
    iput p1, p0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Ea:I

    .line 607
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->Z(Z)V

    .line 611
    :goto_0
    return-void

    .line 609
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->ay(I)V

    goto :goto_0
.end method
