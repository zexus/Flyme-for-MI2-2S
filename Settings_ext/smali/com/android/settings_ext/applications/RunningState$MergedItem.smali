.class Lcom/android/settings_ext/applications/RunningState$MergedItem;
.super Lcom/android/settings_ext/applications/RunningState$BaseItem;
.source "RunningState.java"


# instance fields
.field Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

.field Le:Lcom/android/settings_ext/applications/RunningState$UserState;

.field final Lf:Ljava/util/ArrayList;

.field final Lg:Ljava/util/ArrayList;

.field private Lh:I

.field private Li:I

.field final mChildren:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(I)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 591
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1}, Lcom/android/settings_ext/applications/RunningState$BaseItem;-><init>(ZI)V

    .line 584
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lf:Ljava/util/ArrayList;

    .line 585
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lg:Ljava/util/ArrayList;

    .line 586
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    .line 588
    iput v1, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lh:I

    iput v1, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Li:I

    .line 592
    return-void
.end method

.method private b(Landroid/content/Context;II)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 595
    iget v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lh:I

    if-ne v0, p2, :cond_0

    iget v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Li:I

    if-eq v0, p3, :cond_2

    .line 596
    :cond_0
    iput p2, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lh:I

    .line 597
    iput p3, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Li:I

    .line 598
    const v0, 0x7f09058b

    .line 599
    if-eq p2, v5, :cond_4

    .line 600
    if-eq p3, v5, :cond_3

    const v0, 0x7f09058e

    .line 606
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v0, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mDescription:Ljava/lang/String;

    .line 609
    :cond_2
    return-void

    .line 600
    :cond_3
    const v0, 0x7f09058d

    goto :goto_0

    .line 603
    :cond_4
    if-eq p3, v5, :cond_1

    .line 604
    const v0, 0x7f09058c

    goto :goto_0
.end method


# virtual methods
.method ad(Landroid/content/Context;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 661
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Le:Lcom/android/settings_ext/applications/RunningState$UserState;

    if-eqz v0, :cond_0

    .line 662
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KY:J

    move v1, v2

    .line 663
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 664
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    .line 665
    invoke-virtual {v0, p1}, Lcom/android/settings_ext/applications/RunningState$MergedItem;->ad(Landroid/content/Context;)Z

    .line 666
    iget-wide v4, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KY:J

    iget-wide v6, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KY:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KY:J

    .line 663
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 669
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    iget-wide v0, v0, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->KY:J

    iput-wide v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KY:J

    move v1, v2

    .line 670
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 671
    iget-wide v4, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KY:J

    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lf:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    iget-wide v6, v0, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->KY:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KY:J

    .line 670
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 675
    :cond_1
    iget-wide v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KY:J

    invoke-static {p1, v0, v1}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 677
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 678
    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KZ:Ljava/lang/String;

    .line 684
    :cond_2
    return v2
.end method

.method j(Landroid/content/Context;Z)Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const-wide/16 v4, -0x1

    const/4 v2, 0x0

    .line 612
    iput-boolean p2, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lc:Z

    .line 614
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Le:Lcom/android/settings_ext/applications/RunningState$UserState;

    if-eqz v0, :cond_4

    .line 620
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    .line 621
    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->KU:Landroid/content/pm/PackageItemInfo;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KU:Landroid/content/pm/PackageItemInfo;

    .line 622
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Le:Lcom/android/settings_ext/applications/RunningState$UserState;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Le:Lcom/android/settings_ext/applications/RunningState$UserState;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningState$UserState;->mLabel:Ljava/lang/String;

    :goto_0
    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    .line 623
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KV:Ljava/lang/CharSequence;

    .line 626
    iput-wide v4, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KX:J

    move v1, v2

    move v3, v2

    move v4, v2

    .line 627
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 628
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    .line 629
    iget v5, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lh:I

    add-int/2addr v4, v5

    .line 630
    iget v5, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Li:I

    add-int/2addr v3, v5

    .line 631
    iget-wide v6, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KX:J

    cmp-long v5, v6, v10

    if-ltz v5, :cond_0

    iget-wide v6, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KX:J

    iget-wide v8, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KX:J

    cmp-long v5, v6, v8

    if-gez v5, :cond_0

    .line 632
    iget-wide v6, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KX:J

    iput-wide v6, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KX:J

    .line 627
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 622
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 635
    :cond_2
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lc:Z

    if-nez v0, :cond_3

    .line 636
    invoke-direct {p0, p1, v4, v3}, Lcom/android/settings_ext/applications/RunningState$MergedItem;->b(Landroid/content/Context;II)V

    .line 657
    :cond_3
    return v2

    .line 639
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->KU:Landroid/content/pm/PackageItemInfo;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KU:Landroid/content/pm/PackageItemInfo;

    .line 640
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->KV:Ljava/lang/CharSequence;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KV:Ljava/lang/CharSequence;

    .line 641
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mLabel:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mLabel:Ljava/lang/String;

    .line 643
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lc:Z

    if-nez v0, :cond_5

    .line 644
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    iget v0, v0, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mPid:I

    if-lez v0, :cond_7

    const/4 v0, 0x1

    :goto_2
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lf:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lg:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings_ext/applications/RunningState$MergedItem;->b(Landroid/content/Context;II)V

    .line 648
    :cond_5
    iput-wide v4, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KX:J

    move v1, v2

    .line 649
    :goto_3
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 650
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningState$ServiceItem;

    .line 651
    iget-wide v4, v0, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->KX:J

    cmp-long v3, v4, v10

    if-ltz v3, :cond_6

    iget-wide v4, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KX:J

    iget-wide v6, v0, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->KX:J

    cmp-long v3, v4, v6

    if-gez v3, :cond_6

    .line 652
    iget-wide v4, v0, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->KX:J

    iput-wide v4, p0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->KX:J

    .line 649
    :cond_6
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    :cond_7
    move v0, v2

    .line 644
    goto :goto_2
.end method
