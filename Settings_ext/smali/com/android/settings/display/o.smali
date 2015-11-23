.class public Lcom/android/settings/display/o;
.super Lcom/android/settings/SeekBarPreference;
.source "LevelPreference.java"


# instance fields
.field private UP:[Ljava/lang/CharSequence;

.field private UQ:Landroid/graphics/drawable/Drawable;

.field private UR:Landroid/widget/LinearLayout;

.field private US:Landroid/widget/LinearLayout;

.field private UT:I

.field private UU:I

.field private UV:D

.field private tP:Landroid/widget/SeekBar;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/display/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/display/o;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/SeekBarPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 41
    const/16 v0, 0x64

    invoke-virtual {p0, v0}, Lcom/android/settings/display/o;->setMax(I)V

    .line 42
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/display/o;->J(Z)V

    .line 43
    return-void
.end method

.method private bu(I)V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/display/o;->US:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 164
    :cond_0
    return-void

    .line 157
    :cond_1
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings/display/o;->US:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 158
    invoke-virtual {p0}, Lcom/android/settings/display/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f080009

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    .line 159
    if-ne v1, p1, :cond_2

    .line 160
    invoke-virtual {p0}, Lcom/android/settings/display/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f08004c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    move v2, v0

    .line 162
    :goto_1
    iget-object v0, p0, Lcom/android/settings/display/o;->US:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 157
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_2
    move v2, v0

    goto :goto_1
.end method

.method private e(IZ)V
    .locals 6

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/settings/display/o;->tP:Landroid/widget/SeekBar;

    if-nez v0, :cond_1

    .line 151
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    if-eqz p2, :cond_2

    .line 145
    iget-object v0, p0, Lcom/android/settings/display/o;->tP:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/display/o;->UT:I

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    goto :goto_0

    .line 147
    :cond_2
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/android/settings/display/o;->UV:D

    cmpl-double v0, v0, v2

    if-ltz v0, :cond_0

    int-to-double v0, p1

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    iget-wide v4, p0, Lcom/android/settings/display/o;->UV:D

    sub-double/2addr v2, v4

    cmpg-double v0, v0, v2

    if-gtz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/android/settings/display/o;->tP:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/android/settings/display/o;->UU:I

    div-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setThumbOffset(I)V

    goto :goto_0
.end method

.method private oz()V
    .locals 6

    .prologue
    const/4 v1, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    .line 88
    iget-object v0, p0, Lcom/android/settings/display/o;->US:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 108
    :cond_0
    return-void

    :cond_1
    move v0, v1

    .line 92
    :goto_0
    iget-object v2, p0, Lcom/android/settings/display/o;->UP:[Ljava/lang/CharSequence;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 93
    new-instance v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/android/settings/display/o;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 94
    iget-object v3, p0, Lcom/android/settings/display/o;->UP:[Ljava/lang/CharSequence;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 95
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v1, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 96
    if-nez v0, :cond_2

    .line 97
    const/16 v4, 0x13

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 98
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 106
    :goto_1
    iget-object v4, p0, Lcom/android/settings/display/o;->US:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 92
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 99
    :cond_2
    iget-object v4, p0, Lcom/android/settings/display/o;->UP:[Ljava/lang/CharSequence;

    array-length v4, v4

    add-int/lit8 v4, v4, -0x1

    if-ne v0, v4, :cond_3

    .line 100
    const/16 v4, 0x15

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 101
    iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1

    .line 103
    :cond_3
    const/16 v4, 0x11

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setGravity(I)V

    .line 104
    const/high16 v4, 0x40000000    # 2.0f

    iput v4, v3, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_1
.end method


# virtual methods
.method public b(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/settings/display/o;->UQ:Landroid/graphics/drawable/Drawable;

    .line 124
    iget-object v0, p0, Lcom/android/settings/display/o;->tP:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/o;->UQ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/android/settings/display/o;->tP:Landroid/widget/SeekBar;

    iget-object v1, p0, Lcom/android/settings/display/o;->UQ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 127
    :cond_0
    return-void
.end method

.method public b([Ljava/lang/CharSequence;)V
    .locals 4

    .prologue
    .line 115
    iput-object p1, p0, Lcom/android/settings/display/o;->UP:[Ljava/lang/CharSequence;

    .line 116
    iget-object v0, p0, Lcom/android/settings/display/o;->UP:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/display/o;->UP:[Ljava/lang/CharSequence;

    array-length v0, v0

    if-lez v0, :cond_0

    .line 117
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    iget-object v2, p0, Lcom/android/settings/display/o;->UP:[Ljava/lang/CharSequence;

    array-length v2, v2

    add-int/lit8 v2, v2, -0x1

    int-to-double v2, v2

    div-double/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/display/o;->UV:D

    .line 118
    invoke-direct {p0}, Lcom/android/settings/display/o;->oz()V

    .line 120
    :cond_0
    return-void
.end method

.method public bs(I)V
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p0}, Lcom/android/settings/display/o;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/o;->b([Ljava/lang/CharSequence;)V

    .line 112
    return-void
.end method

.method public bt(I)I
    .locals 6

    .prologue
    .line 130
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/android/settings/display/o;->UV:D

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    iget-wide v2, p0, Lcom/android/settings/display/o;->UV:D

    div-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 55
    iget-object v0, p0, Lcom/android/settings/display/o;->UR:Landroid/widget/LinearLayout;

    if-nez v0, :cond_1

    .line 56
    invoke-virtual {p0}, Lcom/android/settings/display/o;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "layout_inflater"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 59
    const v2, 0x7f040071

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/display/o;->UR:Landroid/widget/LinearLayout;

    .line 62
    iget-object v0, p0, Lcom/android/settings/display/o;->UR:Landroid/widget/LinearLayout;

    const v2, 0x7f100120

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    iput-object v0, p0, Lcom/android/settings/display/o;->tP:Landroid/widget/SeekBar;

    .line 64
    iget-object v0, p0, Lcom/android/settings/display/o;->UQ:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 65
    iget-object v0, p0, Lcom/android/settings/display/o;->tP:Landroid/widget/SeekBar;

    iget-object v2, p0, Lcom/android/settings/display/o;->UQ:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 68
    :cond_0
    iget-object v0, p0, Lcom/android/settings/display/o;->tP:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumbOffset()I

    move-result v0

    iput v0, p0, Lcom/android/settings/display/o;->UT:I

    .line 69
    iget-object v0, p0, Lcom/android/settings/display/o;->tP:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getThumb()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 70
    if-nez v0, :cond_2

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/settings/display/o;->UU:I

    .line 72
    iget-object v0, p0, Lcom/android/settings/display/o;->UR:Landroid/widget/LinearLayout;

    const v2, 0x7f10011f

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings/display/o;->US:Landroid/widget/LinearLayout;

    .line 73
    iget-object v0, p0, Lcom/android/settings/display/o;->US:Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/android/settings/display/o;->tP:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getPaddingLeft()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/display/o;->US:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/display/o;->tP:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getPaddingRight()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings/display/o;->US:Landroid/widget/LinearLayout;

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v5

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 77
    invoke-direct {p0}, Lcom/android/settings/display/o;->oz()V

    .line 79
    invoke-virtual {p0}, Lcom/android/settings/display/o;->getProgress()I

    move-result v0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/o;->e(IZ)V

    .line 81
    invoke-virtual {p0}, Lcom/android/settings/display/o;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/o;->bt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/o;->bu(I)V

    .line 84
    :cond_1
    iget-object v0, p0, Lcom/android/settings/display/o;->UR:Landroid/widget/LinearLayout;

    return-object v0

    .line 70
    :cond_2
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 2

    .prologue
    .line 168
    invoke-super {p0, p1}, Lcom/android/settings/SeekBarPreference;->onStartTrackingTouch(Landroid/widget/SeekBar;)V

    .line 169
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/o;->e(IZ)V

    .line 170
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4

    .prologue
    .line 174
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/o;->bt(I)I

    move-result v0

    int-to-double v0, v0

    iget-wide v2, p0, Lcom/android/settings/display/o;->UV:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    .line 176
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/o;->e(IZ)V

    .line 179
    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 180
    invoke-virtual {p1, v0}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 182
    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/o;->bt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/o;->bu(I)V

    .line 184
    invoke-super {p0, p1}, Lcom/android/settings/SeekBarPreference;->onStopTrackingTouch(Landroid/widget/SeekBar;)V

    .line 185
    return-void
.end method

.method public setLevel(I)V
    .locals 4

    .prologue
    .line 134
    int-to-double v0, p1

    iget-wide v2, p0, Lcom/android/settings/display/o;->UV:D

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    double-to-int v0, v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/o;->setProgress(I)V

    .line 136
    invoke-virtual {p0}, Lcom/android/settings/display/o;->getProgress()I

    move-result v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/settings/display/o;->e(IZ)V

    .line 137
    invoke-virtual {p0}, Lcom/android/settings/display/o;->getProgress()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/settings/display/o;->bt(I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/display/o;->bu(I)V

    .line 138
    return-void
.end method
