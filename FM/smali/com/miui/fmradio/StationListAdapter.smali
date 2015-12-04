.class public Lcom/miui/fmradio/StationListAdapter;
.super Landroid/widget/BaseAdapter;
.source "StationListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/fmradio/StationListAdapter$1;,
        Lcom/miui/fmradio/StationListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/miui/fmradio/StationListAdapter;->mContext:Landroid/content/Context;

    .line 21
    iget-object v0, p0, Lcom/miui/fmradio/StationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/fmradio/StationListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 22
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lcom/miui/fmradio/StationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/fmradio/StationItemHelper;->getStationItemCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 57
    invoke-super {p0, p1, p2, p3}, Landroid/widget/BaseAdapter;->getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Lcom/miui/fmradio/StationItem;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 47
    iget-object v0, p0, Lcom/miui/fmradio/StationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/fmradio/StationItemHelper;->getStationItem(Landroid/content/Context;I)Lcom/miui/fmradio/StationItem;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # I

    .prologue
    .line 14
    invoke-virtual {p0, p1}, Lcom/miui/fmradio/StationListAdapter;->getItem(I)Lcom/miui/fmradio/StationItem;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 52
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/miui/fmradio/StationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Lcom/miui/fmradio/StationItemHelper;->getStationItem(Landroid/content/Context;I)Lcom/miui/fmradio/StationItem;

    move-result-object v0

    iget v0, v0, Lcom/miui/fmradio/StationItem;->type:I

    return v0
.end method

.method public getNormalStationCount()I
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/miui/fmradio/StationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/fmradio/StationItemHelper;->getNormalStationItemCount(Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 8
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const v7, 0x7f060003

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 62
    const/4 v2, 0x0

    .line 63
    .local v2, "vh":Lcom/miui/fmradio/StationListAdapter$ViewHolder;
    if-nez p2, :cond_0

    .line 64
    iget-object v3, p0, Lcom/miui/fmradio/StationListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v6, 0x7f030009

    invoke-virtual {v3, v6, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 65
    new-instance v2, Lcom/miui/fmradio/StationListAdapter$ViewHolder;

    .end local v2    # "vh":Lcom/miui/fmradio/StationListAdapter$ViewHolder;
    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lcom/miui/fmradio/StationListAdapter$ViewHolder;-><init>(Lcom/miui/fmradio/StationListAdapter;Lcom/miui/fmradio/StationListAdapter$1;)V

    .line 66
    .restart local v2    # "vh":Lcom/miui/fmradio/StationListAdapter$ViewHolder;
    const v3, 0x7f0d001d

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iput-object v3, v2, Lcom/miui/fmradio/StationListAdapter$ViewHolder;->llInfo:Landroid/widget/LinearLayout;

    .line 67
    const v3, 0x7f0d001c

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/fmradio/StationListAdapter$ViewHolder;->divView:Landroid/widget/TextView;

    .line 68
    const v3, 0x7f0d001e

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/fmradio/StationListAdapter$ViewHolder;->freqView:Landroid/widget/TextView;

    .line 69
    const v3, 0x7f0d001f

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v2, Lcom/miui/fmradio/StationListAdapter$ViewHolder;->labelView:Landroid/widget/TextView;

    .line 70
    const v3, 0x7f0d0020

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v2, Lcom/miui/fmradio/StationListAdapter$ViewHolder;->playView:Landroid/widget/ImageView;

    .line 71
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    :goto_0
    invoke-virtual {p0, p1}, Lcom/miui/fmradio/StationListAdapter;->getItem(I)Lcom/miui/fmradio/StationItem;

    move-result-object v1

    .line 76
    .local v1, "item":Lcom/miui/fmradio/StationItem;
    instance-of v3, v1, Lcom/miui/fmradio/StationItem$StationitemDivider;

    if-eqz v3, :cond_2

    .line 77
    iget-object v6, v2, Lcom/miui/fmradio/StationListAdapter$ViewHolder;->divView:Landroid/widget/TextView;

    iget v3, v1, Lcom/miui/fmradio/StationItem;->type:I

    const/4 v7, 0x1

    if-ne v3, v7, :cond_1

    const v3, 0x7f0a003a

    :goto_1
    invoke-virtual {v6, v3}, Landroid/widget/TextView;->setText(I)V

    .line 78
    iget-object v3, v2, Lcom/miui/fmradio/StationListAdapter$ViewHolder;->divView:Landroid/widget/TextView;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 79
    iget-object v3, v2, Lcom/miui/fmradio/StationListAdapter$ViewHolder;->llInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 80
    iget-object v3, v2, Lcom/miui/fmradio/StationListAdapter$ViewHolder;->playView:Landroid/widget/ImageView;

    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 93
    :goto_2
    return-object p2

    .line 73
    .end local v1    # "item":Lcom/miui/fmradio/StationItem;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "vh":Lcom/miui/fmradio/StationListAdapter$ViewHolder;
    check-cast v2, Lcom/miui/fmradio/StationListAdapter$ViewHolder;

    .restart local v2    # "vh":Lcom/miui/fmradio/StationListAdapter$ViewHolder;
    goto :goto_0

    .line 77
    .restart local v1    # "item":Lcom/miui/fmradio/StationItem;
    :cond_1
    const v3, 0x7f0a003b

    goto :goto_1

    .line 82
    :cond_2
    iget-object v3, v2, Lcom/miui/fmradio/StationListAdapter$ViewHolder;->divView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 83
    iget-object v3, v2, Lcom/miui/fmradio/StationListAdapter$ViewHolder;->llInfo:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 84
    iget-object v3, v2, Lcom/miui/fmradio/StationListAdapter$ViewHolder;->freqView:Landroid/widget/TextView;

    iget v6, v1, Lcom/miui/fmradio/StationItem;->frequency:I

    invoke-static {v6}, Lcom/miui/fmradio/Utils;->formatFrequency(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    iget-object v3, v2, Lcom/miui/fmradio/StationListAdapter$ViewHolder;->labelView:Landroid/widget/TextView;

    iget-object v6, v1, Lcom/miui/fmradio/StationItem;->label:Ljava/lang/String;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 86
    iget-object v3, p0, Lcom/miui/fmradio/StationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/miui/fmradio/StationItemHelper;->getCurrentFrequency(Landroid/content/Context;)I

    move-result v0

    .line 87
    .local v0, "curFreq":I
    iget-object v6, v2, Lcom/miui/fmradio/StationListAdapter$ViewHolder;->playView:Landroid/widget/ImageView;

    iget v3, v1, Lcom/miui/fmradio/StationItem;->frequency:I

    if-ne v3, v0, :cond_3

    move v3, v4

    :goto_3
    invoke-virtual {v6, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 88
    iget-object v4, v2, Lcom/miui/fmradio/StationListAdapter$ViewHolder;->freqView:Landroid/widget/TextView;

    iget v3, v1, Lcom/miui/fmradio/StationItem;->frequency:I

    if-ne v3, v0, :cond_4

    iget-object v3, p0, Lcom/miui/fmradio/StationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    :goto_4
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 90
    iget-object v4, v2, Lcom/miui/fmradio/StationListAdapter$ViewHolder;->labelView:Landroid/widget/TextView;

    iget v3, v1, Lcom/miui/fmradio/StationItem;->frequency:I

    if-ne v3, v0, :cond_5

    iget-object v3, p0, Lcom/miui/fmradio/StationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    :goto_5
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_2

    :cond_3
    move v3, v5

    .line 87
    goto :goto_3

    .line 88
    :cond_4
    iget-object v3, p0, Lcom/miui/fmradio/StationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const/high16 v5, 0x7f060000

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_4

    .line 90
    :cond_5
    iget-object v3, p0, Lcom/miui/fmradio/StationListAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f060001

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    goto :goto_5
.end method

.method public getViewTypeCount()I
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 30
    iget-object v3, p0, Lcom/miui/fmradio/StationListAdapter;->mContext:Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/miui/fmradio/StationItemHelper;->hasSpecifiedStations(Landroid/content/Context;I)Z

    move-result v0

    .line 31
    .local v0, "hasFavor":Z
    iget-object v3, p0, Lcom/miui/fmradio/StationListAdapter;->mContext:Landroid/content/Context;

    const/4 v4, 0x0

    invoke-static {v3, v4}, Lcom/miui/fmradio/StationItemHelper;->hasSpecifiedStations(Landroid/content/Context;I)Z

    move-result v1

    .line 32
    .local v1, "hasNotFavor":Z
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    const/4 v2, 0x2

    :cond_0
    return v2
.end method
