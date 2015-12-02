.class public Lcom/android/camera/ui/FloatRollAdapter;
.super Ljava/lang/Object;
.source "FloatRollAdapter.java"

# interfaces
.implements Lcom/android/camera/ui/RollAdapter;


# instance fields
.field private mGapValue:F

.field private mMaxValue:I

.field private mMinValue:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 16
    const/4 v0, 0x0

    const/16 v1, 0x9

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {p0, v0, v1, v2}, Lcom/android/camera/ui/FloatRollAdapter;-><init>(IIF)V

    .line 17
    return-void
.end method

.method public constructor <init>(IIF)V
    .locals 1
    .param p1, "minValue"    # I
    .param p2, "maxValue"    # I
    .param p3, "gapValue"    # F

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/android/camera/ui/FloatRollAdapter;->mGapValue:F

    .line 20
    iput p1, p0, Lcom/android/camera/ui/FloatRollAdapter;->mMinValue:I

    .line 21
    iput p2, p0, Lcom/android/camera/ui/FloatRollAdapter;->mMaxValue:I

    .line 22
    iput p3, p0, Lcom/android/camera/ui/FloatRollAdapter;->mGapValue:F

    .line 23
    return-void
.end method

.method private round(F)I
    .locals 4
    .param p1, "f"    # F

    .prologue
    .line 53
    float-to-double v2, p1

    const/4 v0, 0x0

    cmpg-float v0, p1, v0

    if-gez v0, :cond_0

    const-wide/high16 v0, -0x4020000000000000L    # -0.5

    :goto_0
    add-double/2addr v0, v2

    double-to-int v0, v0

    return v0

    :cond_0
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    goto :goto_0
.end method


# virtual methods
.method public getCenterIndex()I
    .locals 2

    .prologue
    .line 63
    iget v0, p0, Lcom/android/camera/ui/FloatRollAdapter;->mMaxValue:I

    iget v1, p0, Lcom/android/camera/ui/FloatRollAdapter;->mMinValue:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FloatRollAdapter;->mGapValue:F

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getItemIndexByValue(Ljava/lang/Object;)I
    .locals 3
    .param p1, "value"    # Ljava/lang/Object;

    .prologue
    .line 68
    const/4 v0, 0x0

    .line 69
    .local v0, "pureValue":I
    instance-of v1, p1, Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 70
    check-cast p1, Ljava/lang/Integer;

    .end local p1    # "value":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 72
    :cond_0
    iget v1, p0, Lcom/android/camera/ui/FloatRollAdapter;->mMaxValue:I

    if-gt v0, v1, :cond_1

    iget v1, p0, Lcom/android/camera/ui/FloatRollAdapter;->mMinValue:I

    if-lt v0, v1, :cond_1

    .line 73
    iget v1, p0, Lcom/android/camera/ui/FloatRollAdapter;->mMinValue:I

    sub-int v1, v0, v1

    int-to-float v1, v1

    iget v2, p0, Lcom/android/camera/ui/FloatRollAdapter;->mGapValue:F

    div-float/2addr v1, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    .line 75
    :goto_0
    return v1

    :cond_1
    const/4 v1, -0x1

    goto :goto_0
.end method

.method public getItemValue(I)I
    .locals 3
    .param p1, "index"    # I

    .prologue
    .line 46
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/camera/ui/FloatRollAdapter;->getItemsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 47
    iget v0, p0, Lcom/android/camera/ui/FloatRollAdapter;->mMinValue:I

    int-to-float v0, v0

    int-to-float v1, p1

    iget v2, p0, Lcom/android/camera/ui/FloatRollAdapter;->mGapValue:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    invoke-direct {p0, v0}, Lcom/android/camera/ui/FloatRollAdapter;->round(F)I

    move-result v0

    .line 49
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getItemsCount()I
    .locals 2

    .prologue
    .line 58
    iget v0, p0, Lcom/android/camera/ui/FloatRollAdapter;->mMaxValue:I

    iget v1, p0, Lcom/android/camera/ui/FloatRollAdapter;->mMinValue:I

    sub-int/2addr v0, v1

    int-to-float v0, v0

    iget v1, p0, Lcom/android/camera/ui/FloatRollAdapter;->mGapValue:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method
