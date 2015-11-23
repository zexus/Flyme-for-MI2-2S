.class Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;
.super Ljava/lang/Object;
.source "BatteryHistoryChart.java"


# instance fields
.field ZZ:[Landroid/graphics/Paint;

.field aaa:I

.field aab:[I

.field aac:I

.field mColors:[I


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method b(Landroid/graphics/Canvas;II)V
    .locals 10

    .prologue
    const/4 v0, 0x0

    .line 103
    .line 104
    add-int v9, p2, p3

    move v6, v0

    move v1, v0

    .line 105
    :goto_0
    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->aaa:I

    if-ge v6, v2, :cond_1

    .line 106
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->aab:[I

    aget v2, v2, v6

    .line 107
    const v3, 0xffff

    and-int v7, v2, v3

    .line 108
    const/high16 v3, -0x10000

    and-int/2addr v2, v3

    shr-int/lit8 v8, v2, 0x10

    .line 109
    if-eqz v1, :cond_0

    .line 116
    iget-object v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->ZZ:[Landroid/graphics/Paint;

    array-length v2, v2

    if-lt v1, v2, :cond_2

    .line 117
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->ZZ:[Landroid/graphics/Paint;

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    move v5, v1

    .line 120
    :goto_1
    int-to-float v1, v0

    int-to-float v2, p2

    int-to-float v3, v7

    int-to-float v4, v9

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->ZZ:[Landroid/graphics/Paint;

    aget-object v5, v0, v5

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 105
    :cond_0
    add-int/lit8 v0, v6, 0x1

    move v6, v0

    move v1, v8

    move v0, v7

    goto :goto_0

    .line 126
    :cond_1
    return-void

    :cond_2
    move v5, v1

    goto :goto_1
.end method

.method bK(I)V
    .locals 1

    .prologue
    .line 97
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->aac:I

    if-eqz v0, :cond_0

    .line 98
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->j(II)V

    .line 100
    :cond_0
    return-void
.end method

.method init(I)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    if-lez p1, :cond_0

    .line 80
    mul-int/lit8 v0, p1, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->aab:[I

    .line 84
    :goto_0
    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->aaa:I

    .line 85
    iput v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->aac:I

    .line 86
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->aab:[I

    goto :goto_0
.end method

.method j(II)V
    .locals 4

    .prologue
    .line 89
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->aac:I

    if-eq p2, v0, :cond_0

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->aaa:I

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->aab:[I

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 90
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->aab:[I

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->aaa:I

    const v2, 0xffff

    and-int/2addr v2, p1

    shl-int/lit8 v3, p2, 0x10

    or-int/2addr v2, v3

    aput v2, v0, v1

    .line 91
    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->aaa:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->aaa:I

    .line 92
    iput p2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->aac:I

    .line 94
    :cond_0
    return-void
.end method

.method setColors([I)V
    .locals 3

    .prologue
    .line 69
    iput-object p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->mColors:[I

    .line 70
    array-length v0, p1

    new-array v0, v0, [Landroid/graphics/Paint;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->ZZ:[Landroid/graphics/Paint;

    .line 71
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->ZZ:[Landroid/graphics/Paint;

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2}, Landroid/graphics/Paint;-><init>()V

    aput-object v2, v1, v0

    .line 73
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->ZZ:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    aget v2, p1, v0

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 74
    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart$ChartData;->ZZ:[Landroid/graphics/Paint;

    aget-object v1, v1, v0

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 76
    :cond_0
    return-void
.end method
