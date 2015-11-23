.class public Lcom/android/settings/bs;
.super Landroid/widget/BaseAdapter;
.source "DataUsageSummary.java"


# instance fields
.field private final aU:Landroid/os/UserManager;

.field private final fB:I

.field private final gZ:Lcom/android/settings/b/j;

.field private ha:J

.field private mItems:Ljava/util/ArrayList;


# direct methods
.method public constructor <init>(Landroid/os/UserManager;Lcom/android/settings/b/j;I)V
    .locals 1

    .prologue
    .line 1607
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 1604
    invoke-static {}, Lcom/google/android/collect/Lists;->newArrayList()Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/bs;->mItems:Ljava/util/ArrayList;

    .line 1608
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/b/j;

    iput-object v0, p0, Lcom/android/settings/bs;->gZ:Lcom/android/settings/b/j;

    .line 1609
    iput p3, p0, Lcom/android/settings/bs;->fB:I

    .line 1610
    iput-object p1, p0, Lcom/android/settings/bs;->aU:Landroid/os/UserManager;

    .line 1611
    return-void
.end method

.method private a(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;I)V
    .locals 8

    .prologue
    .line 1701
    iget v1, p3, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1702
    invoke-virtual {p2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 1703
    if-nez v0, :cond_0

    .line 1704
    new-instance v0, Lcom/android/settings/DataUsageSummary$AppItem;

    invoke-direct {v0, p1}, Lcom/android/settings/DataUsageSummary$AppItem;-><init>(I)V

    .line 1705
    iput p4, v0, Lcom/android/settings/DataUsageSummary$AppItem;->category:I

    .line 1706
    iget-object v2, p0, Lcom/android/settings/bs;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1707
    iget v2, v0, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    invoke-virtual {p2, v2, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1709
    :cond_0
    invoke-virtual {v0, v1}, Lcom/android/settings/DataUsageSummary$AppItem;->p(I)V

    .line 1710
    iget-wide v2, v0, Lcom/android/settings/DataUsageSummary$AppItem;->gK:J

    iget-wide v4, p3, Landroid/net/NetworkStats$Entry;->rxBytes:J

    iget-wide v6, p3, Landroid/net/NetworkStats$Entry;->txBytes:J

    add-long/2addr v4, v6

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/android/settings/DataUsageSummary$AppItem;->gK:J

    .line 1711
    iget-wide v2, p0, Lcom/android/settings/bs;->ha:J

    iget-wide v4, v0, Lcom/android/settings/DataUsageSummary$AppItem;->gK:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_1

    .line 1712
    iget-wide v0, v0, Lcom/android/settings/DataUsageSummary$AppItem;->gK:J

    iput-wide v0, p0, Lcom/android/settings/bs;->ha:J

    .line 1714
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/net/NetworkStats;[I)V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v3, 0x2

    const/4 v1, 0x0

    .line 1617
    iget-object v0, p0, Lcom/android/settings/bs;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1618
    const-wide/16 v4, 0x0

    iput-wide v4, p0, Lcom/android/settings/bs;->ha:J

    .line 1620
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v7

    .line 1621
    iget-object v0, p0, Lcom/android/settings/bs;->aU:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v8

    .line 1622
    new-instance v9, Landroid/util/SparseArray;

    invoke-direct {v9}, Landroid/util/SparseArray;-><init>()V

    .line 1624
    const/4 v2, 0x0

    .line 1625
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroid/net/NetworkStats;->size()I

    move-result v0

    :goto_0
    move v5, v1

    .line 1626
    :goto_1
    if-ge v5, v0, :cond_6

    .line 1627
    invoke-virtual {p1, v5, v2}, Landroid/net/NetworkStats;->getValues(ILandroid/net/NetworkStats$Entry;)Landroid/net/NetworkStats$Entry;

    move-result-object v6

    .line 1630
    iget v2, v6, Landroid/net/NetworkStats$Entry;->uid:I

    .line 1634
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1635
    invoke-static {v2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 1636
    new-instance v10, Landroid/os/UserHandle;

    invoke-direct {v10, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v8, v10}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 1637
    if-eq v4, v7, :cond_0

    .line 1639
    invoke-static {v4}, Lcom/android/settings/b/j;->bU(I)I

    move-result v4

    .line 1640
    invoke-direct {p0, v4, v9, v6, v1}, Lcom/android/settings/bs;->a(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;I)V

    :cond_0
    move v4, v2

    move v2, v3

    .line 1658
    :goto_2
    invoke-direct {p0, v4, v9, v6, v2}, Lcom/android/settings/bs;->a(ILandroid/util/SparseArray;Landroid/net/NetworkStats$Entry;I)V

    .line 1626
    add-int/lit8 v2, v5, 0x1

    move v5, v2

    move-object v2, v6

    goto :goto_1

    :cond_1
    move v0, v1

    .line 1625
    goto :goto_0

    .line 1648
    :cond_2
    invoke-static {v4}, Lcom/android/settings/b/j;->bU(I)I

    move-result v2

    move v4, v2

    move v2, v1

    .line 1649
    goto :goto_2

    .line 1651
    :cond_3
    const/4 v4, -0x4

    if-eq v2, v4, :cond_4

    const/4 v4, -0x5

    if-ne v2, v4, :cond_5

    :cond_4
    move v4, v2

    move v2, v3

    .line 1653
    goto :goto_2

    .line 1655
    :cond_5
    const/16 v2, 0x3e8

    move v4, v2

    move v2, v3

    .line 1656
    goto :goto_2

    .line 1661
    :cond_6
    array-length v2, p2

    .line 1662
    :goto_3
    if-ge v1, v2, :cond_9

    .line 1663
    aget v3, p2, v1

    .line 1665
    new-instance v0, Landroid/os/UserHandle;

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-direct {v0, v4}, Landroid/os/UserHandle;-><init>(I)V

    invoke-interface {v8, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1662
    :goto_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 1669
    :cond_7
    invoke-virtual {v9, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 1670
    if-nez v0, :cond_8

    .line 1671
    new-instance v0, Lcom/android/settings/DataUsageSummary$AppItem;

    invoke-direct {v0, v3}, Lcom/android/settings/DataUsageSummary$AppItem;-><init>(I)V

    .line 1672
    const-wide/16 v4, -0x1

    iput-wide v4, v0, Lcom/android/settings/DataUsageSummary$AppItem;->gK:J

    .line 1673
    iget-object v3, p0, Lcom/android/settings/bs;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1674
    iget v3, v0, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    invoke-virtual {v9, v3, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1676
    :cond_8
    iput-boolean v11, v0, Lcom/android/settings/DataUsageSummary$AppItem;->gI:Z

    goto :goto_4

    .line 1679
    :cond_9
    iget-object v0, p0, Lcom/android/settings/bs;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 1680
    new-instance v0, Lcom/android/settings/DataUsageSummary$AppItem;

    invoke-direct {v0}, Lcom/android/settings/DataUsageSummary$AppItem;-><init>()V

    .line 1681
    iput v11, v0, Lcom/android/settings/DataUsageSummary$AppItem;->category:I

    .line 1682
    iget-object v1, p0, Lcom/android/settings/bs;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1685
    :cond_a
    iget-object v0, p0, Lcom/android/settings/bs;->mItems:Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1686
    invoke-virtual {p0}, Lcom/android/settings/bs;->notifyDataSetChanged()V

    .line 1687
    return-void
.end method

.method public areAllItemsEnabled()Z
    .locals 1

    .prologue
    .line 1754
    const/4 v0, 0x0

    return v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1718
    iget-object v0, p0, Lcom/android/settings/bs;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1723
    iget-object v0, p0, Lcom/android/settings/bs;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 1728
    iget-object v0, p0, Lcom/android/settings/bs;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppItem;

    iget v0, v0, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 1744
    iget-object v0, p0, Lcom/android/settings/bs;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 1745
    iget v0, v0, Lcom/android/settings/DataUsageSummary$AppItem;->category:I

    if-ne v0, v1, :cond_0

    move v0, v1

    .line 1748
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10

    .prologue
    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    .line 1767
    iget-object v0, p0, Lcom/android/settings/bs;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppItem;

    .line 1768
    invoke-virtual {p0, p1}, Lcom/android/settings/bs;->getItemViewType(I)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 1769
    if-nez p2, :cond_0

    .line 1770
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-static {v0, p3}, Lcom/android/settings/DataUsageSummary;->b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1774
    :cond_0
    const v0, 0x1020016

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1775
    const v1, 0x7f090846

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1808
    :goto_0
    return-object p2

    .line 1778
    :cond_1
    if-nez p2, :cond_2

    .line 1779
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f040046

    invoke-virtual {v1, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 1782
    iget v1, p0, Lcom/android/settings/bs;->fB:I

    if-lez v1, :cond_2

    .line 1783
    iget v1, p0, Lcom/android/settings/bs;->fB:I

    iget v2, p0, Lcom/android/settings/bs;->fB:I

    invoke-virtual {p2, v1, v3, v2, v3}, Landroid/view/View;->setPaddingRelative(IIII)V

    .line 1787
    :cond_2
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1789
    const v1, 0x1020014

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1790
    const v2, 0x102000d

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 1794
    iget-object v5, p0, Lcom/android/settings/bs;->gZ:Lcom/android/settings/b/j;

    invoke-static {v5, v0, p2}, Lcom/android/settings/bu;->a(Lcom/android/settings/b/j;Lcom/android/settings/DataUsageSummary$AppItem;Landroid/view/View;)V

    .line 1796
    iget-boolean v5, v0, Lcom/android/settings/DataUsageSummary$AppItem;->gI:Z

    if-eqz v5, :cond_3

    iget-wide v6, v0, Lcom/android/settings/DataUsageSummary$AppItem;->gK:J

    cmp-long v5, v6, v8

    if-gtz v5, :cond_3

    .line 1797
    const v4, 0x7f090860

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(I)V

    .line 1798
    const/16 v1, 0x8

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1804
    :goto_1
    iget-wide v4, p0, Lcom/android/settings/bs;->ha:J

    cmp-long v1, v4, v8

    if-eqz v1, :cond_4

    iget-wide v0, v0, Lcom/android/settings/DataUsageSummary$AppItem;->gK:J

    const-wide/16 v4, 0x64

    mul-long/2addr v0, v4

    iget-wide v4, p0, Lcom/android/settings/bs;->ha:J

    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 1805
    :goto_2
    invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    goto :goto_0

    .line 1800
    :cond_3
    iget-wide v6, v0, Lcom/android/settings/DataUsageSummary$AppItem;->gK:J

    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1801
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_1

    :cond_4
    move v0, v3

    .line 1804
    goto :goto_2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 1736
    const/4 v0, 0x2

    return v0
.end method

.method public isEnabled(I)Z
    .locals 1

    .prologue
    .line 1759
    iget-object v0, p0, Lcom/android/settings/bs;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 1760
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1762
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bs;->getItemViewType(I)I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
