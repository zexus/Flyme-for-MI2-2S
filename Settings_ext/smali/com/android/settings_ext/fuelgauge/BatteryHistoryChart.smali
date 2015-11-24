.class public Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;
.super Landroid/view/View;
.source "BatteryHistoryChart.java"


# instance fields
.field GT:I

.field final YA:Landroid/graphics/Paint;

.field final YB:Landroid/graphics/Paint;

.field final YC:Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$ChartData;

.field final YD:Landroid/text/TextPaint;

.field final YE:Landroid/text/TextPaint;

.field final YF:Landroid/graphics/Paint;

.field final YG:Landroid/graphics/Path;

.field final YH:Landroid/graphics/Path;

.field final YI:Landroid/graphics/Path;

.field final YJ:Landroid/graphics/Path;

.field final YK:Landroid/graphics/Path;

.field final YL:Landroid/graphics/Path;

.field final YM:Landroid/graphics/Path;

.field final YN:Landroid/graphics/Path;

.field final YO:Landroid/graphics/Path;

.field final YP:Landroid/graphics/Path;

.field final YQ:Landroid/graphics/Path;

.field YR:Landroid/os/BatteryStats;

.field YS:Landroid/content/Intent;

.field YT:J

.field YU:I

.field YV:Ljava/lang/String;

.field YW:Ljava/lang/String;

.field YX:Ljava/lang/String;

.field YY:Ljava/lang/String;

.field YZ:Ljava/lang/String;

.field final Yr:Landroid/graphics/Paint;

.field final Ys:Landroid/graphics/Paint;

.field final Yt:Landroid/graphics/Paint;

.field final Yu:Landroid/graphics/Paint;

.field final Yv:Landroid/graphics/Paint;

.field final Yw:Landroid/graphics/Paint;

.field final Yx:Landroid/graphics/Paint;

.field final Yy:Landroid/graphics/Paint;

.field final Yz:Landroid/graphics/Paint;

.field ZA:I

.field ZB:I

.field ZC:I

.field ZD:I

.field ZE:I

.field ZF:I

.field ZG:I

.field ZH:I

.field ZI:I

.field ZJ:I

.field ZK:I

.field ZL:J

.field ZM:J

.field ZN:J

.field ZO:J

.field ZP:J

.field ZQ:J

.field ZR:Z

.field ZS:I

.field ZT:I

.field ZU:Z

.field ZV:Z

.field ZW:Z

.field final ZX:Ljava/util/ArrayList;

.field final ZY:Ljava/util/ArrayList;

.field Za:Ljava/lang/String;

.field Zb:Ljava/lang/String;

.field Zc:Ljava/lang/String;

.field Zd:Ljava/lang/String;

.field Ze:Ljava/lang/String;

.field Zf:Ljava/lang/String;

.field Zg:Ljava/lang/String;

.field Zh:I

.field Zi:I

.field Zj:I

.field Zk:I

.field Zl:I

.field Zm:I

.field Zn:I

.field Zo:I

.field Zp:I

.field Zq:I

.field Zr:I

.field Zs:I

.field Zt:I

.field Zu:I

.field Zv:Z

.field Zw:I

.field Zx:I

.field Zy:I

.field Zz:I

.field mBitmap:Landroid/graphics/Bitmap;

.field mCanvas:Landroid/graphics/Canvas;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13

    .prologue
    .line 356
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 137
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yr:Landroid/graphics/Paint;

    .line 138
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Ys:Landroid/graphics/Paint;

    .line 139
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yt:Landroid/graphics/Paint;

    .line 140
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yu:Landroid/graphics/Paint;

    .line 141
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yv:Landroid/graphics/Paint;

    .line 142
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yw:Landroid/graphics/Paint;

    .line 143
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yx:Landroid/graphics/Paint;

    .line 144
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yy:Landroid/graphics/Paint;

    .line 145
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yz:Landroid/graphics/Paint;

    .line 146
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YA:Landroid/graphics/Paint;

    .line 147
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YB:Landroid/graphics/Paint;

    .line 148
    new-instance v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-direct {v0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$ChartData;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YC:Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$ChartData;

    .line 149
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    .line 150
    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YE:Landroid/text/TextPaint;

    .line 151
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YF:Landroid/graphics/Paint;

    .line 153
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YG:Landroid/graphics/Path;

    .line 154
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YH:Landroid/graphics/Path;

    .line 155
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YI:Landroid/graphics/Path;

    .line 156
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YJ:Landroid/graphics/Path;

    .line 157
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YK:Landroid/graphics/Path;

    .line 158
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YL:Landroid/graphics/Path;

    .line 159
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YM:Landroid/graphics/Path;

    .line 160
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YN:Landroid/graphics/Path;

    .line 161
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YO:Landroid/graphics/Path;

    .line 162
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YP:Landroid/graphics/Path;

    .line 163
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YQ:Landroid/graphics/Path;

    .line 201
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zw:I

    .line 202
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zx:I

    .line 232
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZX:Ljava/util/ArrayList;

    .line 233
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZY:Ljava/util/ArrayList;

    .line 360
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0040

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zj:I

    .line 362
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e003e

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zk:I

    .line 365
    const/4 v0, 0x1

    const/high16 v1, 0x40000000    # 2.0f

    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v0, v1, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    .line 368
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yr:Landroid/graphics/Paint;

    const v1, -0xff6978

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 369
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yr:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 370
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Ys:Landroid/graphics/Paint;

    const/16 v1, 0x80

    const/4 v2, 0x0

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 371
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Ys:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 372
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yt:Landroid/graphics/Paint;

    const/16 v1, 0x80

    const/16 v2, 0x80

    const/16 v3, 0x80

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 373
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yt:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 374
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yu:Landroid/graphics/Paint;

    const/16 v1, 0xc0

    const/16 v2, 0x80

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 375
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yu:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 376
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yv:Landroid/graphics/Paint;

    const v1, -0x312845

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 377
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yv:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 378
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yw:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 379
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yx:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 380
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yy:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 381
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yz:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 382
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YA:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 383
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YC:Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$ChartData;

    sget-object v1, Lcom/android/settings_ext/hl;->zB:[I

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$ChartData;->setColors([I)V

    .line 384
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YF:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0xff

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    .line 385
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YF:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 386
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yx:Landroid/graphics/Paint;

    const v1, -0xff6978

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 387
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yy:Landroid/graphics/Paint;

    const v1, -0xff6978

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 388
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yz:Landroid/graphics/Paint;

    const v1, -0xff6978

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 389
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YA:Landroid/graphics/Paint;

    const v1, -0xff6978

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 390
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yw:Landroid/graphics/Paint;

    const v1, -0xff6978

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 392
    sget-object v0, Lcom/android/settings_ext/fz;->uz:[I

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, p2, v0, v1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v5

    .line 396
    new-instance v6, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;

    invoke-direct {v6}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;-><init>()V

    .line 397
    new-instance v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;

    invoke-direct {v7}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;-><init>()V

    .line 398
    const/4 v0, 0x0

    invoke-virtual {v6, p1, v5, v0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    .line 399
    const/16 v0, 0x9

    invoke-virtual {v7, p1, v5, v0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)V

    .line 401
    const/4 v4, 0x0

    .line 402
    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 404
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->getIndexCount()I

    move-result v8

    .line 405
    const/4 v0, 0x0

    move v12, v0

    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    move v4, v12

    :goto_0
    if-ge v4, v8, :cond_0

    .line 406
    invoke-virtual {v5, v4}, Landroid/content/res/TypedArray;->getIndex(I)I

    move-result v9

    .line 408
    packed-switch v9, :pswitch_data_0

    .line 405
    :goto_1
    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 410
    :pswitch_1
    const/4 v3, 0x0

    invoke-virtual {v5, v9, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    goto :goto_1

    .line 414
    :pswitch_2
    const/4 v2, 0x0

    invoke-virtual {v5, v9, v2}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v2

    goto :goto_1

    .line 418
    :pswitch_3
    const/4 v1, 0x0

    invoke-virtual {v5, v9, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    goto :goto_1

    .line 422
    :pswitch_4
    const/4 v0, 0x0

    invoke-virtual {v5, v9, v0}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v0

    goto :goto_1

    .line 426
    :pswitch_5
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v10

    iput-object v10, v6, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;->aad:Landroid/content/res/ColorStateList;

    .line 427
    invoke-virtual {v5, v9}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    iput-object v9, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;->aad:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 431
    :pswitch_6
    iget v10, v6, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v10

    iput v10, v6, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    .line 432
    iget v10, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;->textSize:I

    goto :goto_1

    .line 436
    :pswitch_7
    iget v10, v6, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;->aae:I

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v6, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;->aae:I

    .line 437
    iget v10, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;->aae:I

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;->aae:I

    goto :goto_1

    .line 441
    :pswitch_8
    iget v10, v6, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;->aaf:I

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v10

    iput v10, v6, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;->aaf:I

    .line 442
    iget v10, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;->aaf:I

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    iput v9, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;->aaf:I

    goto :goto_1

    .line 446
    :pswitch_9
    iget-object v10, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yr:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 447
    iget-object v10, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yx:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 448
    iget-object v10, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yy:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 449
    iget-object v10, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yz:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 450
    iget-object v10, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YA:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v11

    invoke-virtual {v10, v11}, Landroid/graphics/Paint;->setColor(I)V

    .line 451
    iget-object v10, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yw:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 455
    :pswitch_a
    iget-object v10, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yv:Landroid/graphics/Paint;

    const/4 v11, 0x0

    invoke-virtual {v5, v9, v11}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    invoke-virtual {v10, v9}, Landroid/graphics/Paint;->setColor(I)V

    goto/16 :goto_1

    .line 459
    :pswitch_b
    const/4 v10, 0x0

    invoke-virtual {v5, v9, v10}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v9

    iput v9, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zh:I

    goto/16 :goto_1

    .line 464
    :cond_0
    invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V

    .line 466
    iget-object v4, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    invoke-virtual {v6, p1, v4}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;->a(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 467
    iget-object v4, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YE:Landroid/text/TextPaint;

    invoke-virtual {v7, p1, v4}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TextAttrs;->a(Landroid/content/Context;Landroid/text/TextPaint;)V

    .line 469
    iget-object v4, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YB:Landroid/graphics/Paint;

    iget-object v5, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 470
    iget-object v4, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YB:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 471
    iget v4, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    div-int/lit8 v4, v4, 0x2

    .line 472
    const/4 v5, 0x1

    if-ge v4, v5, :cond_1

    .line 473
    const/4 v4, 0x1

    .line 475
    :cond_1
    iget-object v5, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YB:Landroid/graphics/Paint;

    int-to-float v4, v4

    invoke-virtual {v5, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 476
    iget-object v4, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YB:Landroid/graphics/Paint;

    new-instance v5, Landroid/graphics/DashPathEffect;

    const/4 v6, 0x2

    new-array v6, v6, [F

    const/4 v7, 0x0

    iget v8, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    aput v8, v6, v7

    const/4 v7, 0x1

    iget v8, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    mul-int/lit8 v8, v8, 0x2

    int-to-float v8, v8

    aput v8, v6, v7

    const/4 v7, 0x0

    invoke-direct {v5, v6, v7}, Landroid/graphics/DashPathEffect;-><init>([FF)V

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;

    .line 479
    if-eqz v3, :cond_2

    .line 480
    iget-object v4, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 481
    iget-object v4, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YE:Landroid/text/TextPaint;

    invoke-virtual {v4, v0, v2, v1, v3}, Landroid/text/TextPaint;->setShadowLayer(FFFI)V

    .line 483
    :cond_2
    return-void

    .line 408
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_5
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_9
        :pswitch_a
        :pswitch_b
    .end packed-switch
.end method

.method private br()Z
    .locals 1

    .prologue
    .line 675
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v0

    return v0
.end method

.method private pn()Z
    .locals 3

    .prologue
    .line 679
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "date_format"

    invoke-static {v0, v1}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 681
    if-nez v0, :cond_0

    .line 682
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-static {v0}, Llibcore/icu/LocaleData;->get(Ljava/util/Locale;)Llibcore/icu/LocaleData;

    move-result-object v0

    .line 683
    iget-object v0, v0, Llibcore/icu/LocaleData;->shortDateFormat4:Ljava/lang/String;

    .line 685
    :cond_0
    const/16 v1, 0x4d

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/16 v2, 0x64

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-le v1, v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method a(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V
    .locals 4

    .prologue
    .line 642
    if-eqz p6, :cond_2

    .line 643
    if-ltz p7, :cond_1

    if-ge p7, p1, :cond_1

    .line 644
    if-eqz p13, :cond_0

    .line 645
    int-to-float v1, p1

    int-to-float v2, p5

    move-object/from16 v0, p13

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 647
    :cond_0
    int-to-float v1, p1

    int-to-float v2, p5

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 649
    :cond_1
    int-to-float v1, p1

    iget v2, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZG:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 650
    int-to-float v1, p4

    iget v2, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZG:I

    add-int/2addr v2, p3

    int-to-float v2, v2

    invoke-virtual {p6, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 651
    invoke-virtual {p6}, Landroid/graphics/Path;->close()V

    .line 654
    :cond_2
    if-eqz p8, :cond_3

    .line 655
    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YL:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zz:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 657
    :cond_3
    if-eqz p9, :cond_4

    .line 658
    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YM:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZA:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 660
    :cond_4
    if-eqz p10, :cond_5

    .line 661
    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YN:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZB:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 663
    :cond_5
    if-eqz p11, :cond_6

    .line 664
    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YO:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZC:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 666
    :cond_6
    if-eqz p12, :cond_7

    .line 667
    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YP:Landroid/graphics/Path;

    int-to-float v2, p1

    iget v3, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZD:I

    sub-int v3, p2, v3

    int-to-float v3, v3

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Path;->lineTo(FF)V

    .line 669
    :cond_7
    iget-boolean v1, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZW:Z

    if-eqz v1, :cond_8

    .line 670
    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YC:Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$ChartData;

    invoke-virtual {v1, p1}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$ChartData;->bK(I)V

    .line 672
    :cond_8
    return-void
.end method

.method a(Landroid/graphics/Canvas;II)V
    .locals 18

    .prologue
    .line 1163
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->isLayoutRtl()Z

    move-result v14

    .line 1164
    if-eqz v14, :cond_1

    move/from16 v13, p2

    .line 1165
    :goto_0
    if-eqz v14, :cond_2

    const/4 v1, 0x0

    move v12, v1

    .line 1166
    :goto_1
    if-eqz v14, :cond_3

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object v11, v1

    .line 1167
    :goto_2
    if-eqz v14, :cond_4

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object v8, v1

    .line 1174
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YG:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yr:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1175
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YK:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1177
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YK:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yv:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1179
    :cond_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZX:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_a

    .line 1180
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZH:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zl:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    mul-int/lit8 v2, v2, 0x4

    add-int v15, v1, v2

    .line 1181
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZH:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    div-int/lit8 v2, v2, 0x2

    add-int v16, v1, v2

    .line 1182
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1183
    const/4 v2, 0x0

    .line 1184
    const/4 v1, 0x0

    move v9, v1

    move v10, v2

    :goto_4
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZX:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v9, v1, :cond_b

    .line 1185
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZX:Ljava/util/ArrayList;

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1186
    if-nez v9, :cond_5

    .line 1187
    iget v1, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v2, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 1188
    if-gez v1, :cond_1f

    .line 1189
    const/4 v1, 0x0

    move v10, v1

    .line 1192
    :goto_5
    iget-object v1, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    int-to-float v2, v10

    int-to-float v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1193
    iget v1, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v2, v1

    move/from16 v0, v16

    int-to-float v3, v0

    iget v1, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    add-int v1, v1, v16

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1194
    iget v1, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int/2addr v10, v1

    move v2, v10

    .line 1184
    :goto_6
    add-int/lit8 v1, v9, 0x1

    move v9, v1

    move v10, v2

    goto :goto_4

    .line 1164
    :cond_1
    const/4 v1, 0x0

    move v13, v1

    goto/16 :goto_0

    :cond_2
    move/from16 v12, p2

    .line 1165
    goto/16 :goto_1

    .line 1166
    :cond_3
    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    move-object v11, v1

    goto/16 :goto_2

    .line 1167
    :cond_4
    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    move-object v8, v1

    goto/16 :goto_3

    .line 1195
    :cond_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZX:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v9, v1, :cond_8

    .line 1196
    iget v1, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v2, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int v17, v1, v2

    .line 1197
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zl:I

    add-int/2addr v1, v10

    move/from16 v0, v17

    if-ge v0, v1, :cond_6

    move v2, v10

    .line 1198
    goto :goto_6

    .line 1200
    :cond_6
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZX:Ljava/util/ArrayList;

    add-int/lit8 v2, v9, 0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;

    .line 1201
    iget v1, v1, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int v1, p2, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zl:I

    sub-int/2addr v1, v2

    move/from16 v0, v17

    if-le v0, v1, :cond_7

    move v2, v10

    .line 1202
    goto :goto_6

    .line 1205
    :cond_7
    iget-object v1, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    move/from16 v0, v17

    int-to-float v2, v0

    int-to-float v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1206
    iget v1, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v2, v1

    move/from16 v0, v16

    int-to-float v3, v0

    iget v1, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    add-int v1, v1, v16

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1207
    iget v1, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int v10, v17, v1

    move v2, v10

    .line 1208
    goto :goto_6

    .line 1209
    :cond_8
    iget v1, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    iget v2, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 1210
    iget v2, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    add-int/2addr v2, v1

    move/from16 v0, p2

    if-lt v2, v0, :cond_9

    .line 1211
    add-int/lit8 v1, p2, -0x1

    iget v2, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;->width:I

    sub-int/2addr v1, v2

    .line 1214
    :cond_9
    iget-object v2, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;->label:Ljava/lang/String;

    int-to-float v1, v1

    int-to-float v3, v15

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v1, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1215
    iget v1, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v2, v1

    move/from16 v0, v16

    int-to-float v3, v0

    iget v1, v7, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;->x:I

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    add-int v1, v1, v16

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move v2, v10

    goto/16 :goto_6

    .line 1218
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YX:Ljava/lang/String;

    if-eqz v1, :cond_b

    .line 1219
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZH:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zl:I

    sub-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v1, v2

    .line 1220
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    sget-object v3, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1221
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YX:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZI:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZJ:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZI:I

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zr:I

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v3, v4

    int-to-float v3, v3

    int-to-float v1, v1

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v1, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1226
    :cond_b
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zn:I

    neg-int v1, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zo:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zn:I

    sub-int/2addr v2, v3

    div-int/lit8 v2, v2, 0x3

    add-int v3, v1, v2

    .line 1227
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YE:Landroid/text/TextPaint;

    invoke-virtual {v1, v11}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1229
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YY:Ljava/lang/String;

    int-to-float v2, v13

    int-to-float v4, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YE:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1230
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zt:I

    div-int/lit8 v1, v1, 0x2

    .line 1231
    if-eqz v14, :cond_c

    neg-int v1, v1

    .line 1232
    :cond_c
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zt:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zu:I

    sub-int/2addr v2, v4

    div-int/lit8 v4, v2, 0x2

    if-eqz v14, :cond_1a

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zu:I

    :goto_7
    add-int/2addr v2, v4

    .line 1235
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YZ:Ljava/lang/String;

    sub-int v1, v2, v1

    int-to-float v1, v1

    int-to-float v2, v3

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YE:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v1, v2, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YE:Landroid/text/TextPaint;

    invoke-virtual {v1, v8}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1239
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Za:Ljava/lang/String;

    int-to-float v2, v12

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YE:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1241
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YH:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 1243
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YH:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Ys:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1245
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YI:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_e

    .line 1247
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YI:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yt:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1249
    :cond_e
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YJ:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_f

    .line 1251
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YJ:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yu:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1253
    :cond_f
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZW:Z

    if-eqz v1, :cond_10

    .line 1255
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZE:I

    sub-int v1, p3, v1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->GT:I

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    .line 1256
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YC:Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$ChartData;

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->GT:I

    move-object/from16 v0, p1

    invoke-virtual {v2, v0, v1, v3}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$ChartData;->b(Landroid/graphics/Canvas;II)V

    .line 1258
    :cond_10
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YM:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_11

    .line 1260
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YM:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yx:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1262
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YL:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_12

    .line 1264
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YL:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yw:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1266
    :cond_12
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZV:Z

    if-eqz v1, :cond_13

    .line 1267
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YN:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_13

    .line 1269
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YN:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yy:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1272
    :cond_13
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZU:Z

    if-eqz v1, :cond_14

    .line 1273
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YO:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_14

    .line 1275
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YO:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yz:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1278
    :cond_14
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YP:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_15

    .line 1280
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YP:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YA:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1283
    :cond_15
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zv:Z

    if-eqz v1, :cond_19

    .line 1285
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    invoke-virtual {v1}, Landroid/text/TextPaint;->getTextAlign()Landroid/graphics/Paint$Align;

    move-result-object v1

    .line 1286
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    invoke-virtual {v2, v11}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1287
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZW:Z

    if-eqz v2, :cond_16

    .line 1288
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zg:Ljava/lang/String;

    int-to-float v3, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZE:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zm:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1291
    :cond_16
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZV:Z

    if-eqz v2, :cond_17

    .line 1292
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zd:Ljava/lang/String;

    int-to-float v3, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZB:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zm:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1295
    :cond_17
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZU:Z

    if-eqz v2, :cond_18

    .line 1296
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Ze:Ljava/lang/String;

    int-to-float v3, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZC:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zm:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1299
    :cond_18
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zf:Ljava/lang/String;

    int-to-float v3, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZD:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zm:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1301
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zb:Ljava/lang/String;

    int-to-float v3, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zz:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zm:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1303
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zc:Ljava/lang/String;

    int-to-float v3, v13

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZA:I

    sub-int v4, p3, v4

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zm:I

    sub-int/2addr v4, v5

    int-to-float v4, v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1305
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    invoke-virtual {v2, v1}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1308
    :cond_19
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZI:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    sub-int/2addr v1, v2

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZG:I

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZI:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    sub-int/2addr v1, v4

    int-to-float v4, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    div-int/lit8 v5, v5, 0x2

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1310
    move-object/from16 v0, p0

    iget-boolean v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zv:Z

    if-eqz v1, :cond_1b

    .line 1311
    const/4 v1, 0x0

    move v7, v1

    :goto_8
    const/16 v1, 0xa

    if-ge v7, v1, :cond_1b

    .line 1312
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZG:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v1, v2

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZG:I

    sub-int/2addr v2, v3

    mul-int/2addr v2, v7

    div-int/lit8 v2, v2, 0xa

    add-int/2addr v1, v2

    .line 1313
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZI:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v2, v2

    int-to-float v3, v1

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZI:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    sub-int/2addr v4, v5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1311
    add-int/lit8 v1, v7, 0x1

    move v7, v1

    goto :goto_8

    .line 1232
    :cond_1a
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zs:I

    goto/16 :goto_7

    .line 1319
    :cond_1b
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YV:Ljava/lang/String;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZG:I

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1320
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YW:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zp:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zq:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZH:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1323
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZI:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v2, v1

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZH:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    add-int/2addr v1, v3

    int-to-float v3, v1

    move/from16 v0, p2

    int-to-float v4, v0

    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZH:I

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    add-int/2addr v1, v5

    int-to-float v5, v1

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 1326
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZY:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_1e

    .line 1327
    move-object/from16 v0, p0

    iget v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZG:I

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zl:I

    add-int v5, v1, v2

    .line 1328
    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZH:I

    .line 1329
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZJ:I

    .line 1330
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    sget-object v2, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v1, v2}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 1331
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZY:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    :goto_9
    if-ltz v4, :cond_1e

    .line 1332
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZY:Ljava/util/ArrayList;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$DateLabel;

    .line 1333
    iget v2, v1, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    sub-int v3, v2, v3

    .line 1334
    iget v2, v1, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    mul-int/lit8 v8, v8, 0x2

    add-int/2addr v2, v8

    .line 1335
    iget v8, v1, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    add-int/2addr v8, v2

    if-lt v8, v7, :cond_1d

    .line 1336
    iget v2, v1, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    mul-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    iget v3, v1, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$DateLabel;->width:I

    sub-int/2addr v2, v3

    .line 1337
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    sub-int v3, v2, v3

    .line 1338
    if-lt v3, v7, :cond_1d

    .line 1331
    :cond_1c
    :goto_a
    add-int/lit8 v1, v4, -0x1

    move v4, v1

    goto :goto_9

    .line 1343
    :cond_1d
    move-object/from16 v0, p0

    iget v8, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZI:I

    if-lt v3, v8, :cond_1c

    .line 1347
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YQ:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    .line 1348
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YQ:Landroid/graphics/Path;

    iget v8, v1, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v8, v8

    int-to-float v9, v5

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1349
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YQ:Landroid/graphics/Path;

    iget v8, v1, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$DateLabel;->x:I

    int-to-float v8, v8

    int-to-float v9, v6

    invoke-virtual {v3, v8, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1350
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YQ:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YB:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v3, v8}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 1351
    iget-object v1, v1, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$DateLabel;->label:Ljava/lang/String;

    int-to-float v2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zl:I

    sub-int v3, v5, v3

    int-to-float v3, v3

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v1, v2, v3, v8}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_a

    .line 1354
    :cond_1e
    return-void

    :cond_1f
    move v10, v1

    goto/16 :goto_5
.end method

.method a(Landroid/os/BatteryStats;Landroid/content/Intent;)V
    .locals 22

    .prologue
    .line 486
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YR:Landroid/os/BatteryStats;

    .line 487
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YS:Landroid/content/Intent;

    .line 491
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    .line 493
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YR:Landroid/os/BatteryStats;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v5, v7}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v6

    .line 495
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YT:J

    .line 496
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0906b1

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zb:Ljava/lang/String;

    .line 497
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0906b2

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zc:Ljava/lang/String;

    .line 498
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0906b3

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zd:Ljava/lang/String;

    .line 499
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0906b4

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Ze:Ljava/lang/String;

    .line 500
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0906b5

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zf:Ljava/lang/String;

    .line 501
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f0906b6

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zg:Ljava/lang/String;

    .line 503
    const/16 v6, 0x64

    invoke-static {v6}, Lcom/android/settings_ext/hl;->ai(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YV:Ljava/lang/String;

    .line 504
    const/4 v6, 0x0

    invoke-static {v6}, Lcom/android/settings_ext/hl;->ai(I)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YW:Ljava/lang/String;

    .line 506
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YS:Landroid/content/Intent;

    invoke-static {v6}, Lcom/android/settings_ext/hl;->o(Landroid/content/Intent;)I

    move-result v6

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YU:I

    .line 507
    const-wide/16 v6, 0x0

    .line 508
    const/4 v8, 0x1

    move-object/from16 v0, p0

    iput-boolean v8, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZR:Z

    .line 509
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YS:Landroid/content/Intent;

    const-string v9, "plugged"

    const/4 v10, 0x0

    invoke-virtual {v8, v9, v10}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_9

    .line 510
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YR:Landroid/os/BatteryStats;

    invoke-virtual {v8, v4, v5}, Landroid/os/BatteryStats;->computeBatteryTimeRemaining(J)J

    move-result-wide v4

    .line 511
    const-wide/16 v8, 0x0

    cmp-long v8, v4, v8

    if-lez v8, :cond_8

    .line 513
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v6

    const-wide/16 v8, 0x3e8

    div-long v8, v4, v8

    invoke-static {v6, v8, v9}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v6

    .line 515
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f0906a6

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YU:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v6, v9, v10

    invoke-virtual {v7, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YY:Ljava/lang/String;

    .line 549
    :goto_0
    const-string v6, ""

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Za:Ljava/lang/String;

    .line 550
    const-string v6, ""

    move-object/from16 v0, p0

    iput-object v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YZ:Ljava/lang/String;

    .line 551
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YY:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 553
    const/4 v15, 0x0

    .line 554
    const/4 v14, 0x0

    .line 555
    const/4 v9, -0x1

    .line 556
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZS:I

    .line 557
    const/16 v6, 0x64

    move-object/from16 v0, p0

    iput v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZT:I

    .line 558
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZO:J

    .line 559
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZP:J

    .line 560
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZQ:J

    .line 561
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZL:J

    .line 562
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZN:J

    .line 563
    const-wide/16 v12, 0x0

    .line 564
    const-wide/16 v10, 0x0

    .line 565
    const/4 v8, 0x0

    .line 566
    const/4 v7, 0x0

    .line 567
    const/4 v6, 0x1

    .line 568
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v16

    if-eqz v16, :cond_e

    .line 569
    new-instance v16, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v16 .. v16}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .line 570
    :cond_0
    :goto_1
    move-object/from16 v0, p1

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v17

    if-eqz v17, :cond_e

    .line 571
    add-int/lit8 v15, v15, 0x1

    .line 572
    if-eqz v6, :cond_1

    .line 573
    const/4 v6, 0x0

    .line 574
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZL:J

    .line 576
    :cond_1
    move-object/from16 v0, v16

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v17, v0

    const/16 v18, 0x5

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    move-object/from16 v0, v16

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v17, v0

    const/16 v18, 0x7

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_5

    .line 586
    :cond_2
    move-object/from16 v0, v16

    iget-wide v10, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    const-wide v18, 0x39ef8b000L

    add-long v12, v12, v18

    cmp-long v10, v10, v12

    if-gtz v10, :cond_3

    move-object/from16 v0, v16

    iget-wide v10, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZL:J

    const-wide/32 v18, 0x493e0

    add-long v12, v12, v18

    cmp-long v10, v10, v12

    if-gez v10, :cond_4

    .line 588
    :cond_3
    const-wide/16 v10, 0x0

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZO:J

    .line 590
    :cond_4
    move-object/from16 v0, v16

    iget-wide v12, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 591
    move-object/from16 v0, v16

    iget-wide v10, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    .line 592
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZO:J

    move-wide/from16 v18, v0

    const-wide/16 v20, 0x0

    cmp-long v17, v18, v20

    if-nez v17, :cond_5

    .line 593
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZL:J

    move-wide/from16 v18, v0

    sub-long v18, v10, v18

    sub-long v18, v12, v18

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZO:J

    .line 596
    :cond_5
    invoke-virtual/range {v16 .. v16}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v17

    if-eqz v17, :cond_0

    .line 597
    move-object/from16 v0, v16

    iget-byte v14, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v14, v9, :cond_6

    const/4 v14, 0x1

    if-ne v15, v14, :cond_7

    .line 598
    :cond_6
    move-object/from16 v0, v16

    iget-byte v9, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 601
    :cond_7
    move-object/from16 v0, v16

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v18, v0

    move-wide/from16 v0, v18

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZM:J

    .line 602
    move-object/from16 v0, v16

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v8, v14

    .line 603
    move-object/from16 v0, v16

    iget v14, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    or-int/2addr v7, v14

    move v14, v15

    goto/16 :goto_1

    .line 518
    :cond_8
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YU:I

    invoke-static {v4}, Lcom/android/settings_ext/hl;->ai(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YY:Ljava/lang/String;

    :goto_2
    move-wide v4, v6

    goto/16 :goto_0

    .line 521
    :cond_9
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YR:Landroid/os/BatteryStats;

    invoke-virtual {v8, v4, v5}, Landroid/os/BatteryStats;->computeChargeTimeRemaining(J)J

    move-result-wide v8

    .line 522
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YS:Landroid/content/Intent;

    invoke-static {v4, v5}, Lcom/android/settings_ext/hl;->a(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v4

    .line 524
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YS:Landroid/content/Intent;

    const-string v10, "status"

    const/4 v11, 0x1

    invoke-virtual {v5, v10, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 526
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_d

    const/4 v10, 0x5

    if-eq v5, v10, :cond_d

    .line 527
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZR:Z

    .line 529
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    div-long v6, v8, v6

    invoke-static {v4, v6, v7}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 531
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YS:Landroid/content/Intent;

    const-string v6, "plugged"

    const/4 v7, 0x0

    invoke-virtual {v4, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 533
    const/4 v6, 0x1

    if-ne v4, v6, :cond_a

    .line 534
    const v4, 0x7f0906a9

    .line 542
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YU:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x1

    aput-object v5, v7, v10

    invoke-virtual {v6, v4, v7}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YY:Ljava/lang/String;

    move-wide v4, v8

    .line 544
    goto/16 :goto_0

    .line 535
    :cond_a
    const/4 v6, 0x2

    if-ne v4, v6, :cond_b

    .line 536
    const v4, 0x7f0906aa

    goto :goto_3

    .line 537
    :cond_b
    const/4 v6, 0x4

    if-ne v4, v6, :cond_c

    .line 538
    const v4, 0x7f0906ab

    goto :goto_3

    .line 540
    :cond_c
    const v4, 0x7f0906a8

    goto :goto_3

    .line 545
    :cond_d
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v8, 0x7f0906a7

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget v11, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YU:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    aput-object v4, v9, v10

    invoke-virtual {v5, v8, v9}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YY:Ljava/lang/String;

    goto/16 :goto_2

    .line 607
    :cond_e
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZM:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e8

    div-long v18, v4, v18

    add-long v16, v16, v18

    move-wide/from16 v0, v16

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZN:J

    .line 608
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZM:J

    move-wide/from16 v16, v0

    add-long v12, v12, v16

    sub-long v10, v12, v10

    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZP:J

    .line 609
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZP:J

    const-wide/16 v12, 0x3e8

    div-long/2addr v4, v12

    add-long/2addr v4, v10

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZQ:J

    .line 610
    move-object/from16 v0, p0

    iput v14, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZK:I

    .line 611
    const/high16 v4, 0x20000000

    and-int/2addr v4, v8

    if-eqz v4, :cond_12

    const/4 v4, 0x1

    :goto_4
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZV:Z

    .line 612
    const/high16 v4, 0x20000000

    and-int/2addr v4, v7

    if-nez v4, :cond_f

    const/high16 v4, 0x1c000000

    and-int/2addr v4, v8

    if-eqz v4, :cond_13

    :cond_f
    const/4 v4, 0x1

    :goto_5
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZU:Z

    .line 616
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings_ext/hl;->N(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_10

    .line 617
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iput-boolean v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZW:Z

    .line 619
    :cond_10
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZN:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZL:J

    cmp-long v4, v4, v6

    if-gtz v4, :cond_11

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZL:J

    const-wide/16 v6, 0x1

    add-long/2addr v4, v6

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZN:J

    .line 620
    :cond_11
    return-void

    .line 611
    :cond_12
    const/4 v4, 0x0

    goto :goto_4

    .line 612
    :cond_13
    const/4 v4, 0x0

    goto :goto_5
.end method

.method a(Ljava/util/Calendar;IIZ)V
    .locals 10

    .prologue
    .line 1118
    iget-wide v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZO:J

    .line 1119
    iget-wide v2, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZQ:J

    sub-long/2addr v2, v0

    .line 1120
    iget-object v4, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZX:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;

    iget-object v6, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long v0, v8, v0

    sub-int v7, p3, p2

    int-to-long v8, v7

    mul-long/2addr v0, v8

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v0, p2

    invoke-direct {v5, v6, v0, p1, p4}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$TimeLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1124
    return-void
.end method

.method b(Ljava/util/Calendar;IIZ)V
    .locals 10

    .prologue
    .line 1127
    iget-wide v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZO:J

    .line 1128
    iget-wide v2, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZQ:J

    sub-long/2addr v2, v0

    .line 1129
    iget-object v4, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZY:Ljava/util/ArrayList;

    new-instance v5, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$DateLabel;

    iget-object v6, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    sub-long v0, v8, v0

    sub-int v7, p3, p2

    int-to-long v8, v7

    mul-long/2addr v0, v8

    div-long/2addr v0, v2

    long-to-int v0, v0

    add-int/2addr v0, p2

    invoke-direct {v5, v6, v0, p1, p4}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$DateLabel;-><init>(Landroid/text/TextPaint;ILjava/util/Calendar;Z)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1133
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    .prologue
    .line 1137
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1139
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->getWidth()I

    move-result v0

    .line 1140
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->getHeight()I

    move-result v1

    .line 1146
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->a(Landroid/graphics/Canvas;II)V

    .line 1147
    return-void
.end method

.method protected onMeasure(II)V
    .locals 3

    .prologue
    .line 624
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YV:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zp:I

    .line 625
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zq:I

    .line 626
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YE:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Za:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zu:I

    .line 627
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YE:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zs:I

    .line 628
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YE:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YZ:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zt:I

    .line 629
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zl:I

    .line 630
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zm:I

    .line 631
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YE:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zn:I

    .line 632
    iget-object v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YE:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zo:I

    .line 633
    iget v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zo:I

    iget v1, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zn:I

    sub-int/2addr v0, v1

    .line 634
    mul-int/lit8 v0, v0, 0x2

    iget v1, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zl:I

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zi:I

    .line 635
    invoke-virtual {p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result v0

    iget v1, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zh:I

    iget v2, p0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zi:I

    add-int/2addr v1, v2

    invoke-static {v1, p2}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->getDefaultSize(II)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->setMeasuredDimension(II)V

    .line 637
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 40

    .prologue
    .line 708
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 712
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zw:I

    move/from16 v0, p1

    if-ne v2, v0, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zx:I

    move/from16 v0, p2

    if-ne v2, v0, :cond_1

    .line 1115
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zw:I

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zx:I

    if-eqz v2, :cond_0

    .line 722
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zw:I

    .line 723
    move/from16 v0, p2

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zx:I

    .line 724
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->mBitmap:Landroid/graphics/Bitmap;

    .line 725
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->mCanvas:Landroid/graphics/Canvas;

    .line 727
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zm:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zl:I

    sub-int/2addr v2, v3

    .line 728
    mul-int/lit8 v3, v2, 0xa

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zh:I

    add-int/2addr v3, v4

    move/from16 v0, p2

    if-le v0, v3, :cond_12

    .line 729
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zv:Z

    .line 730
    mul-int/lit8 v3, v2, 0xf

    move/from16 v0, p2

    if-le v0, v3, :cond_11

    .line 732
    div-int/lit8 v3, v2, 0x2

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->GT:I

    .line 741
    :goto_1
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->GT:I

    if-gtz v3, :cond_2

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->GT:I

    .line 743
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zi:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZG:I

    .line 744
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zp:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    mul-int/lit8 v4, v4, 0x3

    add-int/2addr v3, v4

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZI:I

    .line 745
    move/from16 v0, p1

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZJ:I

    .line 746
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZJ:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZI:I

    sub-int v27, v3, v4

    .line 748
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    .line 749
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Ys:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 750
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yt:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 751
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yu:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 752
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yw:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->GT:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 753
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yx:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->GT:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yy:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->GT:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 755
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Yz:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->GT:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 756
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YA:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->GT:I

    int-to-float v4, v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 757
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YF:Landroid/graphics/Paint;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 759
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->GT:I

    add-int/2addr v3, v2

    .line 761
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zv:Z

    if-eqz v2, :cond_16

    .line 762
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->GT:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zz:I

    .line 763
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zz:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZA:I

    .line 764
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZA:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZD:I

    .line 765
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZD:I

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZC:I

    .line 766
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZC:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZU:Z

    if-eqz v2, :cond_13

    move v2, v3

    :goto_2
    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZB:I

    .line 767
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZB:I

    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZV:Z

    if-eqz v2, :cond_14

    move v2, v3

    :goto_3
    add-int/2addr v2, v4

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZE:I

    .line 768
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZE:I

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZW:Z

    if-eqz v4, :cond_15

    :goto_4
    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->GT:I

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->GT:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZF:I

    .line 770
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZW:Z

    if-eqz v2, :cond_3

    .line 771
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YC:Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$ChartData;

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    .line 782
    :cond_3
    :goto_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YG:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 783
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YH:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 784
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YI:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 785
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YK:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 786
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YJ:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 787
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YM:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 788
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YN:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 789
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YO:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 790
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YP:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 791
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YL:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->reset()V

    .line 793
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZX:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 794
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZY:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 796
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZO:J

    move-wide/from16 v30, v0

    .line 797
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZQ:J

    cmp-long v2, v2, v30

    if-lez v2, :cond_17

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZQ:J

    sub-long v2, v2, v30

    move-wide/from16 v16, v2

    .line 799
    :goto_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZO:J

    move-wide/from16 v24, v0

    .line 800
    const-wide/16 v22, 0x0

    .line 802
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZS:I

    move/from16 v32, v0

    .line 803
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZT:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZS:I

    sub-int v33, v2, v3

    .line 805
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZF:I

    sub-int v2, p2, v2

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZG:I

    sub-int v5, v2, v3

    .line 806
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZG:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZH:I

    .line 808
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZI:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZI:I

    const/4 v9, -0x1

    const/4 v7, -0x1

    .line 809
    const/4 v2, 0x0

    .line 810
    const/4 v8, 0x0

    .line 811
    const/4 v15, 0x0

    .line 812
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    .line 813
    const/4 v13, 0x0

    const/16 v18, 0x0

    const/4 v14, 0x0

    .line 814
    const/16 v19, 0x0

    .line 815
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZK:I

    move/from16 v34, v0

    .line 816
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZP:J

    move-wide/from16 v28, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZO:J

    move-wide/from16 v36, v0

    cmp-long v3, v28, v36

    if-lez v3, :cond_3f

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YR:Landroid/os/BatteryStats;

    invoke-virtual {v3}, Landroid/os/BatteryStats;->startIteratingHistoryLocked()Z

    move-result v3

    if-eqz v3, :cond_3f

    .line 817
    new-instance v35, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct/range {v35 .. v35}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    move/from16 v26, v2

    move-wide/from16 v28, v24

    move-wide/from16 v2, v22

    .line 818
    :goto_7
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YR:Landroid/os/BatteryStats;

    move-object/from16 v0, v35

    invoke-virtual {v4, v0}, Landroid/os/BatteryStats;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v4

    if-eqz v4, :cond_2c

    move/from16 v0, v26

    move/from16 v1, v34

    if-ge v0, v1, :cond_2c

    .line 819
    invoke-virtual/range {v35 .. v35}, Landroid/os/BatteryStats$HistoryItem;->isDeltaData()Z

    move-result v4

    if-eqz v4, :cond_28

    .line 820
    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    sub-long v2, v20, v2

    add-long v22, v28, v2

    .line 821
    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    .line 822
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZI:I

    sub-long v24, v22, v30

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v28, v0

    mul-long v24, v24, v28

    div-long v24, v24, v16

    move-wide/from16 v0, v24

    long-to-int v3, v0

    add-int/2addr v2, v3

    .line 823
    if-gez v2, :cond_4

    .line 824
    const/4 v2, 0x0

    .line 836
    :cond_4
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZG:I

    add-int/2addr v3, v5

    move-object/from16 v0, v35

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    sub-int v4, v4, v32

    add-int/lit8 v24, v5, -0x1

    mul-int v4, v4, v24

    div-int v4, v4, v33

    sub-int/2addr v3, v4

    .line 838
    if-eq v9, v2, :cond_8

    .line 840
    if-eq v7, v3, :cond_8

    .line 843
    move-object/from16 v0, v35

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    .line 844
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zk:I

    if-gt v4, v7, :cond_18

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YJ:Landroid/graphics/Path;

    .line 848
    :goto_8
    if-eq v4, v15, :cond_1a

    .line 849
    if-eqz v15, :cond_5

    .line 850
    int-to-float v7, v2

    int-to-float v9, v3

    invoke-virtual {v15, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    .line 852
    :cond_5
    if-eqz v4, :cond_6

    .line 853
    int-to-float v7, v2

    int-to-float v9, v3

    invoke-virtual {v4, v7, v9}, Landroid/graphics/Path;->moveTo(FF)V

    :cond_6
    move-object v15, v4

    .line 860
    :cond_7
    :goto_9
    if-nez v8, :cond_1b

    .line 861
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YG:Landroid/graphics/Path;

    .line 862
    int-to-float v4, v2

    int-to-float v6, v3

    invoke-virtual {v8, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    move v6, v2

    :goto_a
    move v7, v3

    move v9, v2

    .line 872
    :cond_8
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zv:Z

    if-eqz v3, :cond_10

    .line 873
    move-object/from16 v0, v35

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, 0x80000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1c

    const/4 v3, 0x1

    .line 875
    :goto_b
    if-eq v3, v10, :cond_9

    .line 876
    if-eqz v3, :cond_1d

    .line 877
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YL:Landroid/graphics/Path;

    int-to-float v10, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zz:I

    move/from16 v24, v0

    sub-int v24, p2, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v10, v0}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_c
    move v10, v3

    .line 884
    :cond_9
    move-object/from16 v0, v35

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, 0x100000

    and-int/2addr v3, v4

    if-eqz v3, :cond_1e

    const/4 v3, 0x1

    .line 886
    :goto_d
    if-eq v3, v11, :cond_a

    .line 887
    if-eqz v3, :cond_1f

    .line 888
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YM:Landroid/graphics/Path;

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZA:I

    move/from16 v24, v0

    sub-int v24, p2, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v11, v0}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_e
    move v11, v3

    .line 895
    :cond_a
    move-object/from16 v0, v35

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v4, 0x20000000

    and-int/2addr v3, v4

    if-eqz v3, :cond_20

    const/4 v3, 0x1

    .line 897
    :goto_f
    if-eq v3, v12, :cond_b

    .line 898
    if-eqz v3, :cond_21

    .line 899
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YN:Landroid/graphics/Path;

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZB:I

    move/from16 v24, v0

    sub-int v24, p2, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v12, v0}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_10
    move v12, v3

    .line 906
    :cond_b
    move-object/from16 v0, v35

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states2:I

    and-int/lit8 v3, v3, 0xf

    shr-int/lit8 v4, v3, 0x0

    .line 910
    move/from16 v0, v19

    if-eq v0, v4, :cond_22

    .line 912
    packed-switch v4, :pswitch_data_0

    .line 922
    :pswitch_0
    const/4 v3, 0x1

    move/from16 v18, v3

    .line 928
    :goto_11
    move-object/from16 v0, v35

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v19, v0

    const/high16 v24, 0x1c000000

    and-int v19, v19, v24

    if-eqz v19, :cond_c

    .line 931
    const/4 v3, 0x1

    .line 933
    :cond_c
    if-eq v3, v13, :cond_d

    .line 934
    if-eqz v3, :cond_23

    .line 935
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YO:Landroid/graphics/Path;

    int-to-float v0, v2

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZC:I

    move/from16 v24, v0

    sub-int v24, p2, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_12
    move v13, v3

    .line 942
    :cond_d
    move-object/from16 v0, v35

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v19, -0x80000000

    and-int v3, v3, v19

    if-eqz v3, :cond_24

    const/4 v3, 0x1

    .line 944
    :goto_13
    if-eq v3, v14, :cond_e

    .line 945
    if-eqz v3, :cond_25

    .line 946
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YP:Landroid/graphics/Path;

    int-to-float v0, v2

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZD:I

    move/from16 v24, v0

    sub-int v24, p2, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_14
    move v14, v3

    .line 953
    :cond_e
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zv:Z

    if-eqz v3, :cond_f

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZW:Z

    if-eqz v3, :cond_f

    .line 955
    move-object/from16 v0, v35

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit16 v3, v3, 0x1c0

    shr-int/lit8 v3, v3, 0x6

    const/16 v19, 0x3

    move/from16 v0, v19

    if-ne v3, v0, :cond_26

    .line 958
    const/4 v3, 0x0

    .line 966
    :goto_15
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YC:Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$ChartData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$ChartData;->j(II)V

    :cond_f
    move/from16 v19, v4

    .line 997
    :cond_10
    :goto_16
    add-int/lit8 v3, v26, 0x1

    move/from16 v26, v3

    move-wide/from16 v28, v22

    move-wide/from16 v38, v20

    move/from16 v20, v2

    move-wide/from16 v2, v38

    goto/16 :goto_7

    .line 735
    :cond_11
    div-int/lit8 v3, v2, 0x3

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->GT:I

    goto/16 :goto_1

    .line 738
    :cond_12
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zv:Z

    .line 739
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->GT:I

    goto/16 :goto_1

    .line 766
    :cond_13
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 767
    :cond_14
    const/4 v2, 0x0

    goto/16 :goto_3

    .line 768
    :cond_15
    const/4 v3, 0x0

    goto/16 :goto_4

    .line 774
    :cond_16
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZE:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zz:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZD:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZC:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZB:I

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZA:I

    .line 776
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zy:I

    mul-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v3

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZF:I

    .line 777
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZW:Z

    if-eqz v2, :cond_3

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YC:Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$ChartData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart$ChartData;->init(I)V

    goto/16 :goto_5

    .line 797
    :cond_17
    const-wide/16 v2, 0x1

    move-wide/from16 v16, v2

    goto/16 :goto_6

    .line 845
    :cond_18
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zj:I

    if-gt v4, v7, :cond_19

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YI:Landroid/graphics/Path;

    goto/16 :goto_8

    .line 846
    :cond_19
    const/4 v4, 0x0

    goto/16 :goto_8

    .line 856
    :cond_1a
    if-eqz v4, :cond_7

    .line 857
    int-to-float v7, v2

    int-to-float v9, v3

    invoke-virtual {v4, v7, v9}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_9

    .line 865
    :cond_1b
    int-to-float v4, v2

    int-to-float v7, v3

    invoke-virtual {v8, v4, v7}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_a

    .line 873
    :cond_1c
    const/4 v3, 0x0

    goto/16 :goto_b

    .line 879
    :cond_1d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YL:Landroid/graphics/Path;

    int-to-float v10, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zz:I

    move/from16 v24, v0

    sub-int v24, p2, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v10, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_c

    .line 884
    :cond_1e
    const/4 v3, 0x0

    goto/16 :goto_d

    .line 890
    :cond_1f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YM:Landroid/graphics/Path;

    int-to-float v11, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZA:I

    move/from16 v24, v0

    sub-int v24, p2, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v11, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_e

    .line 895
    :cond_20
    const/4 v3, 0x0

    goto/16 :goto_f

    .line 901
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YN:Landroid/graphics/Path;

    int-to-float v12, v2

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZB:I

    move/from16 v24, v0

    sub-int v24, p2, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v24

    invoke-virtual {v4, v12, v0}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_10

    .line 919
    :pswitch_1
    const/4 v3, 0x0

    move/from16 v18, v3

    .line 920
    goto/16 :goto_11

    :cond_22
    move/from16 v3, v18

    move/from16 v4, v19

    .line 926
    goto/16 :goto_11

    .line 937
    :cond_23
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YO:Landroid/graphics/Path;

    int-to-float v0, v2

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZC:I

    move/from16 v24, v0

    sub-int v24, p2, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v13, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_12

    .line 942
    :cond_24
    const/4 v3, 0x0

    goto/16 :goto_13

    .line 948
    :cond_25
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YP:Landroid/graphics/Path;

    int-to-float v0, v2

    move/from16 v19, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZD:I

    move/from16 v24, v0

    sub-int v24, p2, v24

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v24, v0

    move/from16 v0, v19

    move/from16 v1, v24

    invoke-virtual {v14, v0, v1}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_14

    .line 959
    :cond_26
    move-object/from16 v0, v35

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v19, 0x200000

    and-int v3, v3, v19

    if-eqz v3, :cond_27

    .line 960
    const/4 v3, 0x1

    goto/16 :goto_15

    .line 962
    :cond_27
    move-object/from16 v0, v35

    iget v3, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    and-int/lit8 v3, v3, 0x38

    shr-int/lit8 v3, v3, 0x3

    .line 964
    add-int/lit8 v3, v3, 0x2

    goto/16 :goto_15

    .line 972
    :cond_28
    move-object/from16 v0, v35

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v21, 0x5

    move/from16 v0, v21

    if-eq v4, v0, :cond_29

    move-object/from16 v0, v35

    iget-byte v4, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/16 v21, 0x7

    move/from16 v0, v21

    if-ne v4, v0, :cond_3e

    .line 974
    :cond_29
    move-object/from16 v0, v35

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZO:J

    move-wide/from16 v22, v0

    cmp-long v2, v2, v22

    if-ltz v2, :cond_2b

    .line 975
    move-object/from16 v0, v35

    iget-wide v2, v0, Landroid/os/BatteryStats$HistoryItem;->currentTime:J

    .line 979
    :goto_17
    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v22, v0

    move-wide/from16 v24, v2

    .line 982
    :goto_18
    move-object/from16 v0, v35

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x6

    if-eq v2, v3, :cond_3d

    move-object/from16 v0, v35

    iget-byte v2, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2a

    sub-long v2, v28, v24

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/32 v28, 0x36ee80

    cmp-long v2, v2, v28

    if-lez v2, :cond_3d

    .line 985
    :cond_2a
    if-eqz v8, :cond_3d

    .line 986
    add-int/lit8 v3, v20, 0x1

    move-object/from16 v2, p0

    move/from16 v4, p2

    invoke-virtual/range {v2 .. v15}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->a(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 989
    const/4 v7, -0x1

    .line 990
    const/4 v8, 0x0

    .line 991
    const/4 v15, 0x0

    .line 992
    const/4 v14, 0x0

    move v12, v14

    move v11, v14

    move v10, v14

    move v9, v7

    move/from16 v2, v20

    move-wide/from16 v20, v22

    move-wide/from16 v22, v24

    goto/16 :goto_16

    .line 977
    :cond_2b
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZO:J

    move-object/from16 v0, v35

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZL:J

    move-wide/from16 v24, v0

    sub-long v22, v22, v24

    add-long v2, v2, v22

    goto :goto_17

    .line 999
    :cond_2c
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YR:Landroid/os/BatteryStats;

    invoke-virtual {v2}, Landroid/os/BatteryStats;->finishIteratingHistoryLocked()V

    move-object v3, v15

    .line 1002
    :goto_19
    if-ltz v7, :cond_2d

    if-gez v9, :cond_38

    .line 1004
    :cond_2d
    move-object/from16 v0, p0

    iget v9, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZI:I

    .line 1005
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZG:I

    add-int/2addr v2, v5

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YU:I

    sub-int v4, v4, v32

    add-int/lit8 v7, v5, -0x1

    mul-int/2addr v4, v7

    div-int v4, v4, v33

    sub-int v7, v2, v4

    .line 1007
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YU:I

    int-to-byte v2, v2

    .line 1008
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zk:I

    if-gt v2, v4, :cond_36

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YJ:Landroid/graphics/Path;

    .line 1011
    :goto_1a
    if-eqz v2, :cond_3c

    .line 1012
    int-to-float v3, v9

    int-to-float v4, v7

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1015
    :goto_1b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YG:Landroid/graphics/Path;

    int-to-float v4, v9

    int-to-float v8, v7

    invoke-virtual {v3, v4, v8}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1016
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YG:Landroid/graphics/Path;

    move-object v15, v2

    move/from16 v3, p1

    :goto_1c
    move-object/from16 v2, p0

    move/from16 v4, p2

    .line 1026
    invoke-virtual/range {v2 .. v15}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->a(IIIIILandroid/graphics/Path;IZZZZZLandroid/graphics/Path;)V

    .line 1030
    move/from16 v0, p1

    if-ge v3, v0, :cond_2e

    .line 1033
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YK:Landroid/graphics/Path;

    int-to-float v4, v3

    int-to-float v6, v7

    invoke-virtual {v2, v4, v6}, Landroid/graphics/Path;->moveTo(FF)V

    .line 1034
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZG:I

    add-int/2addr v2, v5

    rsub-int/lit8 v4, v32, 0x64

    add-int/lit8 v6, v5, -0x1

    mul-int/2addr v4, v6

    div-int v4, v4, v33

    sub-int/2addr v2, v4

    .line 1035
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZG:I

    add-int/2addr v4, v5

    rsub-int/lit8 v6, v32, 0x0

    add-int/lit8 v5, v5, -0x1

    mul-int/2addr v5, v6

    div-int v5, v5, v33

    sub-int/2addr v4, v5

    .line 1036
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZR:Z

    if-eqz v5, :cond_39

    .line 1037
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YK:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZJ:I

    int-to-float v5, v5

    int-to-float v6, v4

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1042
    :goto_1d
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YK:Landroid/graphics/Path;

    int-to-float v3, v3

    int-to-float v4, v4

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1043
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YK:Landroid/graphics/Path;

    invoke-virtual {v2}, Landroid/graphics/Path;->close()V

    .line 1046
    :cond_2e
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZO:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_35

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZQ:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZO:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_35

    .line 1048
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->br()Z

    move-result v4

    .line 1049
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1050
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZO:J

    invoke-virtual {v5, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1051
    const/16 v2, 0xe

    const/4 v3, 0x0

    invoke-virtual {v5, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1052
    const/16 v2, 0xd

    const/4 v3, 0x0

    invoke-virtual {v5, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1053
    const/16 v2, 0xc

    const/4 v3, 0x0

    invoke-virtual {v5, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1054
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1055
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZO:J

    cmp-long v6, v2, v6

    if-gez v6, :cond_2f

    .line 1056
    const/16 v2, 0xb

    const/16 v3, 0xb

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1057
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1059
    :cond_2f
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    .line 1060
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZQ:J

    invoke-virtual {v6, v8, v9}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1061
    const/16 v7, 0xe

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 1062
    const/16 v7, 0xd

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 1063
    const/16 v7, 0xc

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 1064
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 1065
    cmp-long v7, v2, v8

    if-gez v7, :cond_31

    .line 1066
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZI:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZJ:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v10, v4}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->a(Ljava/util/Calendar;IIZ)V

    .line 1067
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 1068
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZO:J

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZQ:J

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZO:J

    sub-long/2addr v12, v14

    const-wide/16 v14, 0x2

    div-long/2addr v12, v14

    add-long/2addr v10, v12

    invoke-virtual {v7, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1069
    const/16 v10, 0xe

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 1070
    const/16 v10, 0xd

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 1071
    const/16 v10, 0xc

    const/4 v11, 0x0

    invoke-virtual {v7, v10, v11}, Ljava/util/Calendar;->set(II)V

    .line 1072
    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 1073
    cmp-long v2, v10, v2

    if-lez v2, :cond_30

    cmp-long v2, v10, v8

    if-gez v2, :cond_30

    .line 1074
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZI:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZJ:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v2, v3, v4}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->a(Ljava/util/Calendar;IIZ)V

    .line 1076
    :cond_30
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZI:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZJ:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v2, v3, v4}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->a(Ljava/util/Calendar;IIZ)V

    .line 1080
    :cond_31
    const/4 v2, 0x6

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x6

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-ne v2, v3, :cond_32

    const/4 v2, 0x1

    invoke-virtual {v5, v2}, Ljava/util/Calendar;->get(I)I

    move-result v2

    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    if-eq v2, v3, :cond_35

    .line 1082
    :cond_32
    invoke-direct/range {p0 .. p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->pn()Z

    move-result v4

    .line 1083
    const/16 v2, 0xb

    const/4 v3, 0x0

    invoke-virtual {v5, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1084
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1085
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZO:J

    cmp-long v7, v2, v8

    if-gez v7, :cond_33

    .line 1086
    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-virtual {v5, v3}, Ljava/util/Calendar;->get(I)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v5, v2, v3}, Ljava/util/Calendar;->set(II)V

    .line 1087
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 1089
    :cond_33
    const/16 v7, 0xb

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Ljava/util/Calendar;->set(II)V

    .line 1090
    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v8

    .line 1091
    cmp-long v7, v2, v8

    if-gez v7, :cond_34

    .line 1092
    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZI:I

    move-object/from16 v0, p0

    iget v10, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZJ:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7, v10, v4}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->b(Ljava/util/Calendar;IIZ)V

    .line 1093
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    .line 1094
    sub-long v10, v8, v2

    const-wide/16 v12, 0x2

    div-long/2addr v10, v12

    add-long/2addr v10, v2

    invoke-virtual {v5, v10, v11}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 1095
    const/16 v7, 0xb

    const/4 v10, 0x0

    invoke-virtual {v5, v7, v10}, Ljava/util/Calendar;->set(II)V

    .line 1096
    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v10

    .line 1097
    cmp-long v2, v10, v2

    if-lez v2, :cond_34

    cmp-long v2, v10, v8

    if-gez v2, :cond_34

    .line 1098
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZI:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZJ:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v2, v3, v4}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->b(Ljava/util/Calendar;IIZ)V

    .line 1101
    :cond_34
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZI:I

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZJ:I

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v2, v3, v4}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->b(Ljava/util/Calendar;IIZ)V

    .line 1105
    :cond_35
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZX:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x2

    if-ge v2, v3, :cond_3a

    .line 1108
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v2

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZQ:J

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZO:J

    sub-long/2addr v4, v6

    invoke-static {v2, v4, v5}, Landroid/text/format/Formatter;->formatShortElapsedTime(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YX:Ljava/lang/String;

    .line 1110
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YD:Landroid/text/TextPaint;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YX:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v2

    float-to-int v2, v2

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zr:I

    goto/16 :goto_0

    .line 1009
    :cond_36
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zj:I

    if-gt v2, v4, :cond_37

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YI:Landroid/graphics/Path;

    goto/16 :goto_1a

    .line 1010
    :cond_37
    const/4 v2, 0x0

    goto/16 :goto_1a

    .line 1020
    :cond_38
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZI:I

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZP:J

    move-wide/from16 v18, v0

    sub-long v18, v18, v30

    move/from16 v0, v27

    int-to-long v0, v0

    move-wide/from16 v20, v0

    mul-long v18, v18, v20

    div-long v16, v18, v16

    move-wide/from16 v0, v16

    long-to-int v4, v0

    add-int/2addr v2, v4

    .line 1021
    if-gez v2, :cond_3b

    .line 1022
    const/4 v2, 0x0

    move-object v15, v3

    move v3, v2

    goto/16 :goto_1c

    .line 1039
    :cond_39
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YK:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZJ:I

    int-to-float v6, v6

    int-to-float v2, v2

    invoke-virtual {v5, v6, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .line 1040
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YK:Landroid/graphics/Path;

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->ZJ:I

    int-to-float v5, v5

    int-to-float v6, v4

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Path;->lineTo(FF)V

    goto/16 :goto_1d

    .line 1112
    :cond_3a
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->YX:Ljava/lang/String;

    .line 1113
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput v2, v0, Lcom/android/settings_ext/fuelgauge/BatteryHistoryChart;->Zr:I

    goto/16 :goto_0

    :cond_3b
    move-object v15, v3

    move v3, v2

    goto/16 :goto_1c

    :cond_3c
    move-object v2, v3

    goto/16 :goto_1b

    :cond_3d
    move/from16 v2, v20

    move-wide/from16 v20, v22

    move-wide/from16 v22, v24

    goto/16 :goto_16

    :cond_3e
    move-wide/from16 v22, v2

    move-wide/from16 v24, v28

    goto/16 :goto_18

    :cond_3f
    move-object v3, v15

    goto/16 :goto_19

    .line 912
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method
