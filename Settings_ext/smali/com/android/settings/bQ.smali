.class public Lcom/android/settings/bQ;
.super Landroid/widget/BaseAdapter;
.source "DiracHeadsetAdapter.java"


# instance fields
.field private final jI:[Lcom/android/settings/bR;


# direct methods
.method public constructor <init>(Lcom/miui/player/a/a/a;)V
    .locals 7

    .prologue
    .line 42
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 43
    invoke-virtual {p1}, Lcom/miui/player/a/a/a;->yF()Ljava/util/List;

    move-result-object v3

    .line 44
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [Lcom/android/settings/bR;

    iput-object v0, p0, Lcom/android/settings/bQ;->jI:[Lcom/android/settings/bR;

    .line 45
    const/4 v0, 0x0

    move v2, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_0

    .line 46
    invoke-interface {v3, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/Pair;

    .line 47
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 48
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 49
    iget-object v4, p0, Lcom/android/settings/bQ;->jI:[Lcom/android/settings/bR;

    new-instance v5, Lcom/android/settings/bR;

    invoke-direct {p0, v1}, Lcom/android/settings/bQ;->w(I)I

    move-result v6

    invoke-direct {p0, v1}, Lcom/android/settings/bQ;->x(I)I

    move-result v1

    invoke-direct {v5, v6, v1, v0}, Lcom/android/settings/bR;-><init>(III)V

    aput-object v5, v4, v2

    .line 45
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 51
    :cond_0
    return-void
.end method

.method private w(I)I
    .locals 1

    .prologue
    .line 98
    packed-switch p1, :pswitch_data_0

    .line 131
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 100
    :pswitch_1
    const v0, 0x7f0201d7

    goto :goto_0

    .line 103
    :pswitch_2
    const v0, 0x7f0201e0

    goto :goto_0

    .line 106
    :pswitch_3
    const v0, 0x7f0201e2

    goto :goto_0

    .line 109
    :pswitch_4
    const v0, 0x7f0201d8

    goto :goto_0

    .line 112
    :pswitch_5
    const v0, 0x7f0201d9

    goto :goto_0

    .line 115
    :pswitch_6
    const v0, 0x7f0201d4

    goto :goto_0

    .line 118
    :pswitch_7
    const v0, 0x7f0201e3

    goto :goto_0

    .line 121
    :pswitch_8
    const v0, 0x7f0201e5

    goto :goto_0

    .line 124
    :pswitch_9
    const v0, 0x7f0201e6

    goto :goto_0

    .line 127
    :pswitch_a
    const v0, 0x7f0201df

    goto :goto_0

    .line 129
    :pswitch_b
    const v0, 0x7f0201e4

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method

.method private x(I)I
    .locals 1

    .prologue
    .line 135
    packed-switch p1, :pswitch_data_0

    .line 171
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 137
    :pswitch_1
    const v0, 0x7f09002c

    goto :goto_0

    .line 140
    :pswitch_2
    const v0, 0x7f09002b

    goto :goto_0

    .line 143
    :pswitch_3
    const v0, 0x7f09002e

    goto :goto_0

    .line 146
    :pswitch_4
    sget-boolean v0, Lmiui/os/Build;->IS_MI2A:Z

    if-eqz v0, :cond_0

    .line 147
    const v0, 0x7f090028

    goto :goto_0

    .line 149
    :cond_0
    const v0, 0x7f090029

    goto :goto_0

    .line 152
    :pswitch_5
    const v0, 0x7f09002a

    goto :goto_0

    .line 155
    :pswitch_6
    const v0, 0x7f090030

    goto :goto_0

    .line 158
    :pswitch_7
    const v0, 0x7f09002f

    goto :goto_0

    .line 161
    :pswitch_8
    const v0, 0x7f090031

    goto :goto_0

    .line 164
    :pswitch_9
    const v0, 0x7f090032

    goto :goto_0

    .line 167
    :pswitch_a
    const v0, 0x7f090034

    goto :goto_0

    .line 169
    :pswitch_b
    const v0, 0x7f090033

    goto :goto_0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_b
    .end packed-switch
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/settings/bQ;->jI:[Lcom/android/settings/bR;

    array-length v0, v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/android/settings/bQ;->jI:[Lcom/android/settings/bR;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 65
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .prologue
    .line 70
    if-nez p2, :cond_0

    .line 71
    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04008f

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 72
    new-instance v0, Lcom/android/settings/bS;

    invoke-direct {v0, p2}, Lcom/android/settings/bS;-><init>(Landroid/view/View;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 75
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/bQ;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bR;

    .line 76
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/bS;

    .line 77
    iget-object v2, v1, Lcom/android/settings/bS;->jL:Landroid/widget/ImageView;

    iget v3, v0, Lcom/android/settings/bR;->jJ:I

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget-object v1, v1, Lcom/android/settings/bS;->jM:Landroid/widget/TextView;

    iget v0, v0, Lcom/android/settings/bR;->jK:I

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(I)V

    .line 80
    return-object p2
.end method

.method public u(I)I
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/bQ;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 85
    invoke-virtual {p0, v0}, Lcom/android/settings/bQ;->v(I)I

    move-result v1

    if-ne p1, v1, :cond_0

    .line 90
    :goto_1
    return v0

    .line 84
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 90
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public v(I)I
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0, p1}, Lcom/android/settings/bQ;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bR;

    iget v0, v0, Lcom/android/settings/bR;->mType:I

    return v0
.end method
