.class public Lcom/android/camera/ui/V6SeekBarIndicator;
.super Landroid/widget/LinearLayout;
.source "V6SeekBarIndicator.java"


# static fields
.field private static final SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;


# instance fields
.field private mCurrentPage:I

.field private mSeekPointResId:I

.field private mSelectedPoints:I

.field private mTabPagesNum:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 19
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-direct {v0, v2, v2, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    sput-object v0, Lcom/android/camera/ui/V6SeekBarIndicator;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 26
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mCurrentPage:I

    .line 21
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mTabPagesNum:I

    .line 22
    iput v1, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mSelectedPoints:I

    .line 23
    const v0, 0x7f020096

    iput v0, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mSeekPointResId:I

    .line 27
    invoke-direct {p0}, Lcom/android/camera/ui/V6SeekBarIndicator;->initializeSeekBar()V

    .line 28
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6SeekBarIndicator;->setDrawingCacheEnabled(Z)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 32
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mCurrentPage:I

    .line 21
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mTabPagesNum:I

    .line 22
    iput v1, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mSelectedPoints:I

    .line 23
    const v0, 0x7f020096

    iput v0, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mSeekPointResId:I

    .line 33
    invoke-direct {p0}, Lcom/android/camera/ui/V6SeekBarIndicator;->initializeSeekBar()V

    .line 34
    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6SeekBarIndicator;->setDrawingCacheEnabled(Z)V

    .line 35
    return-void
.end method

.method private initializeSeekBar()V
    .locals 5

    .prologue
    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 42
    invoke-virtual {p0, v3}, Lcom/android/camera/ui/V6SeekBarIndicator;->setAnimationCacheEnabled(Z)V

    .line 43
    invoke-virtual {p0}, Lcom/android/camera/ui/V6SeekBarIndicator;->removeAllViews()V

    .line 45
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v2, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mTabPagesNum:I

    if-ge v0, v2, :cond_1

    .line 46
    new-instance v1, Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 47
    .local v1, "seekPoint":Landroid/widget/ImageView;
    sget-object v2, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 48
    iget v2, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mSeekPointResId:I

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 49
    invoke-virtual {v1, v4, v3, v4, v3}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 50
    const/4 v2, 0x2

    if-ne v2, v0, :cond_0

    invoke-static {}, Lcom/android/camera/Device;->isSupportedShaderEffect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 51
    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 53
    :cond_0
    sget-object v2, Lcom/android/camera/ui/V6SeekBarIndicator;->SEEK_POINT_LAYOUT_PARAMS:Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v1, v0, v2}, Lcom/android/camera/ui/V6SeekBarIndicator;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 45
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    .end local v1    # "seekPoint":Landroid/widget/ImageView;
    :cond_1
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Lcom/android/camera/ui/V6SeekBarIndicator;->updateSeekPoints(I)V

    .line 56
    return-void
.end method


# virtual methods
.method public couldSwitchToVisible(I)Z
    .locals 3
    .param p1, "pageIndex"    # I

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 60
    .local v0, "pageIndicator":Landroid/view/View;
    if-eqz v0, :cond_0

    iget v2, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mCurrentPage:I

    if-eq v2, p1, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public getCurrentPage()I
    .locals 1

    .prologue
    .line 64
    iget v0, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mCurrentPage:I

    return v0
.end method

.method public setPageVisible(IZ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "visible"    # Z

    .prologue
    .line 38
    invoke-virtual {p0, p1}, Lcom/android/camera/ui/V6SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz p2, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 39
    return-void

    .line 38
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateSeekPoints(I)V
    .locals 5
    .param p1, "toIndex"    # I

    .prologue
    const/4 v4, 0x1

    .line 68
    const-string v1, "Camera"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateSeekPoints "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mCurrentPage:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    iget v1, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mCurrentPage:I

    if-eq v1, p1, :cond_0

    if-ltz p1, :cond_0

    iget v1, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mTabPagesNum:I

    if-gt v1, p1, :cond_1

    .line 86
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    iget v1, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mTabPagesNum:I

    if-gt v1, v4, :cond_2

    .line 71
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6SeekBarIndicator;->setVisibility(I)V

    goto :goto_0

    .line 74
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mSelectedPoints:I

    if-ge v0, v1, :cond_4

    iget v1, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mCurrentPage:I

    add-int/2addr v1, v0

    iget v2, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mTabPagesNum:I

    if-ge v1, v2, :cond_4

    .line 75
    iget v1, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mCurrentPage:I

    if-ltz v1, :cond_3

    iget v1, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mCurrentPage:I

    iget v2, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mTabPagesNum:I

    if-ge v1, v2, :cond_3

    .line 76
    iget v1, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mCurrentPage:I

    add-int/2addr v1, v0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V

    .line 74
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 82
    :cond_4
    const/4 v0, 0x0

    :goto_2
    iget v1, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mSelectedPoints:I

    if-ge v0, v1, :cond_5

    add-int v1, p1, v0

    iget v2, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mTabPagesNum:I

    if-ge v1, v2, :cond_5

    .line 83
    add-int v1, p1, v0

    invoke-virtual {p0, v1}, Lcom/android/camera/ui/V6SeekBarIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/view/View;->setSelected(Z)V

    .line 82
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 85
    :cond_5
    iput p1, p0, Lcom/android/camera/ui/V6SeekBarIndicator;->mCurrentPage:I

    goto :goto_0
.end method
