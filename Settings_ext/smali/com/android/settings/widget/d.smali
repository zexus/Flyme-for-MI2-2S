.class public Lcom/android/settings/widget/d;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/a;


# static fields
.field private static final aoW:Ljava/lang/Object;

.field private static final aoX:Ljava/lang/Object;


# instance fields
.field private aoT:J

.field private aoU:J

.field private aoV:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 531
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/widget/d;->aoW:Ljava/lang/Object;

    .line 532
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/widget/d;->aoX:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 473
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 11

    .prologue
    .line 539
    const-wide/32 v0, 0x3e800000

    cmp-long v0, p3, v0

    if-gez v0, :cond_0

    .line 542
    const v0, 0x11070053

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 543
    const-wide/32 v0, 0x100000

    move-wide v9, v0

    move-object v1, v2

    move-wide v2, v9

    .line 551
    :goto_0
    long-to-double v4, p3

    long-to-double v6, v2

    div-double/2addr v4, v6

    .line 555
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    cmpg-double v0, v4, v6

    if-gez v0, :cond_1

    .line 556
    const-string v0, "%.1f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 557
    const-wide/high16 v6, 0x4024000000000000L    # 10.0

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    mul-long/2addr v2, v4

    const-wide/16 v4, 0xa

    div-long/2addr v2, v4

    long-to-double v2, v2

    .line 563
    :goto_1
    sget-object v4, Lcom/android/settings/widget/d;->aoW:Ljava/lang/Object;

    const-string v5, "^1"

    invoke-static {p2, v4, v0, v5}, Lcom/android/settings/widget/ChartDataUsageView;->b(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 564
    sget-object v0, Lcom/android/settings/widget/d;->aoX:Ljava/lang/Object;

    const-string v4, "^2"

    invoke-static {p2, v0, v1, v4}, Lcom/android/settings/widget/ChartDataUsageView;->b(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    .line 566
    double-to-long v0, v2

    return-wide v0

    .line 547
    :cond_0
    const v0, 0x11070057

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 548
    const-wide/32 v0, 0x40000000

    move-wide v9, v0

    move-object v1, v2

    move-wide v2, v9

    goto :goto_0

    .line 559
    :cond_1
    const-string v0, "%.0f"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v0, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 560
    invoke-static {v4, v5}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    mul-long/2addr v2, v4

    long-to-double v2, v2

    goto :goto_1
.end method

.method public c(JJ)Z
    .locals 3

    .prologue
    .line 487
    iget-wide v0, p0, Lcom/android/settings/widget/d;->aoT:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/settings/widget/d;->aoU:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 488
    :cond_0
    iput-wide p1, p0, Lcom/android/settings/widget/d;->aoT:J

    .line 489
    iput-wide p3, p0, Lcom/android/settings/widget/d;->aoU:J

    .line 490
    const/4 v0, 0x1

    .line 492
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 482
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/settings/widget/d;->aoT:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/settings/widget/d;->aoU:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/settings/widget/d;->aoV:F

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public k(F)Z
    .locals 1

    .prologue
    .line 498
    iget v0, p0, Lcom/android/settings/widget/d;->aoV:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 499
    iput p1, p0, Lcom/android/settings/widget/d;->aoV:F

    .line 500
    const/4 v0, 0x1

    .line 502
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l(F)J
    .locals 6

    .prologue
    .line 527
    iget-wide v0, p0, Lcom/android/settings/widget/d;->aoT:J

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/android/settings/widget/d;->aoU:J

    iget-wide v4, p0, Lcom/android/settings/widget/d;->aoT:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/settings/widget/d;->aoV:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public sY()[F
    .locals 7

    .prologue
    .line 571
    iget-wide v0, p0, Lcom/android/settings/widget/d;->aoU:J

    iget-wide v2, p0, Lcom/android/settings/widget/d;->aoT:J

    sub-long/2addr v0, v2

    .line 574
    const-wide/16 v2, 0x10

    div-long v2, v0, v2

    invoke-static {v2, v3}, Lcom/android/settings/widget/ChartDataUsageView;->w(J)J

    move-result-wide v4

    .line 575
    div-long/2addr v0, v4

    long-to-int v0, v0

    .line 576
    new-array v1, v0, [F

    .line 577
    iget-wide v2, p0, Lcom/android/settings/widget/d;->aoT:J

    .line 578
    const/4 v0, 0x0

    :goto_0
    array-length v6, v1

    if-ge v0, v6, :cond_0

    .line 579
    invoke-virtual {p0, v2, v3}, Lcom/android/settings/widget/d;->t(J)F

    move-result v6

    aput v6, v1, v0

    .line 580
    add-long/2addr v2, v4

    .line 578
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 583
    :cond_0
    return-object v1
.end method

.method public t(J)F
    .locals 7

    .prologue
    .line 515
    iget v0, p0, Lcom/android/settings/widget/d;->aoV:F

    iget-wide v2, p0, Lcom/android/settings/widget/d;->aoT:J

    sub-long v2, p1, v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    iget-wide v2, p0, Lcom/android/settings/widget/d;->aoU:J

    iget-wide v4, p0, Lcom/android/settings/widget/d;->aoT:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public u(J)I
    .locals 9

    .prologue
    .line 588
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/widget/d;->t(J)F

    move-result v0

    .line 589
    float-to-double v2, v0

    iget v1, p0, Lcom/android/settings/widget/d;->aoV:F

    float-to-double v4, v1

    const-wide v6, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, v6

    cmpg-double v1, v2, v4

    if-gez v1, :cond_0

    .line 590
    const/4 v0, -0x1

    .line 594
    :goto_0
    return v0

    .line 591
    :cond_0
    float-to-double v0, v0

    iget v2, p0, Lcom/android/settings/widget/d;->aoV:F

    float-to-double v2, v2

    const-wide v4, 0x3feb333333333333L    # 0.85

    mul-double/2addr v2, v4

    cmpl-double v0, v0, v2

    if-lez v0, :cond_1

    .line 592
    const/4 v0, 0x1

    goto :goto_0

    .line 594
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
