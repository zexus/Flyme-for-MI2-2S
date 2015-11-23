.class public Lcom/android/settings/widget/f;
.super Ljava/lang/Object;
.source "ChartDataUsageView.java"

# interfaces
.implements Lcom/android/settings/widget/a;


# static fields
.field private static final aoY:I


# instance fields
.field private aoT:J

.field private aoU:J

.field private aoV:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 387
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Calendar;->getFirstDayOfWeek()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lcom/android/settings/widget/f;->aoY:I

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .prologue
    .line 393
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 394
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 395
    const-wide v2, 0x9a7ec800L

    sub-long v2, v0, v2

    invoke-virtual {p0, v2, v3, v0, v1}, Lcom/android/settings/widget/f;->c(JJ)Z

    .line 396
    return-void
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Landroid/text/SpannableStringBuilder;J)J
    .locals 3

    .prologue
    .line 437
    const/4 v0, 0x0

    invoke-virtual {p2}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    invoke-static {p3, p4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v0, v1, v2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 438
    return-wide p3
.end method

.method public c(JJ)Z
    .locals 3

    .prologue
    .line 405
    iget-wide v0, p0, Lcom/android/settings/widget/f;->aoT:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    iget-wide v0, p0, Lcom/android/settings/widget/f;->aoU:J

    cmp-long v0, v0, p3

    if-eqz v0, :cond_1

    .line 406
    :cond_0
    iput-wide p1, p0, Lcom/android/settings/widget/f;->aoT:J

    .line 407
    iput-wide p3, p0, Lcom/android/settings/widget/f;->aoU:J

    .line 408
    const/4 v0, 0x1

    .line 410
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 400
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    iget-wide v2, p0, Lcom/android/settings/widget/f;->aoT:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-wide v2, p0, Lcom/android/settings/widget/f;->aoU:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    iget v2, p0, Lcom/android/settings/widget/f;->aoV:F

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
    .line 416
    iget v0, p0, Lcom/android/settings/widget/f;->aoV:F

    cmpl-float v0, v0, p1

    if-eqz v0, :cond_0

    .line 417
    iput p1, p0, Lcom/android/settings/widget/f;->aoV:F

    .line 418
    const/4 v0, 0x1

    .line 420
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public l(F)J
    .locals 6

    .prologue
    .line 431
    iget-wide v0, p0, Lcom/android/settings/widget/f;->aoT:J

    long-to-float v0, v0

    iget-wide v2, p0, Lcom/android/settings/widget/f;->aoU:J

    iget-wide v4, p0, Lcom/android/settings/widget/f;->aoT:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/settings/widget/f;->aoV:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-long v0, v0

    return-wide v0
.end method

.method public sY()[F
    .locals 9

    .prologue
    const/4 v2, 0x0

    const/4 v8, 0x1

    .line 443
    const/16 v0, 0x20

    new-array v4, v0, [F

    .line 447
    new-instance v5, Landroid/text/format/Time;

    invoke-direct {v5}, Landroid/text/format/Time;-><init>()V

    .line 448
    iget-wide v0, p0, Lcom/android/settings/widget/f;->aoU:J

    invoke-virtual {v5, v0, v1}, Landroid/text/format/Time;->set(J)V

    .line 449
    iget v0, v5, Landroid/text/format/Time;->monthDay:I

    iget v1, v5, Landroid/text/format/Time;->weekDay:I

    sget v3, Lcom/android/settings/widget/f;->aoY:I

    sub-int/2addr v1, v3

    sub-int/2addr v0, v1

    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 450
    iput v2, v5, Landroid/text/format/Time;->second:I

    iput v2, v5, Landroid/text/format/Time;->minute:I

    iput v2, v5, Landroid/text/format/Time;->hour:I

    .line 452
    invoke-virtual {v5, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 453
    invoke-virtual {v5, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    .line 454
    :goto_0
    iget-wide v6, p0, Lcom/android/settings/widget/f;->aoT:J

    cmp-long v3, v0, v6

    if-lez v3, :cond_1

    .line 455
    iget-wide v6, p0, Lcom/android/settings/widget/f;->aoU:J

    cmp-long v3, v0, v6

    if-gtz v3, :cond_0

    .line 456
    add-int/lit8 v3, v2, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/f;->t(J)F

    move-result v0

    aput v0, v4, v2

    move v2, v3

    .line 458
    :cond_0
    iget v0, v5, Landroid/text/format/Time;->monthDay:I

    add-int/lit8 v0, v0, -0x7

    iput v0, v5, Landroid/text/format/Time;->monthDay:I

    .line 459
    invoke-virtual {v5, v8}, Landroid/text/format/Time;->normalize(Z)J

    .line 460
    invoke-virtual {v5, v8}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v0

    goto :goto_0

    .line 463
    :cond_1
    invoke-static {v4, v2}, Ljava/util/Arrays;->copyOf([FI)[F

    move-result-object v0

    return-object v0
.end method

.method public t(J)F
    .locals 7

    .prologue
    .line 426
    iget v0, p0, Lcom/android/settings/widget/f;->aoV:F

    iget-wide v2, p0, Lcom/android/settings/widget/f;->aoT:J

    sub-long v2, p1, v2

    long-to-float v1, v2

    mul-float/2addr v0, v1

    iget-wide v2, p0, Lcom/android/settings/widget/f;->aoU:J

    iget-wide v4, p0, Lcom/android/settings/widget/f;->aoT:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    div-float/2addr v0, v1

    return v0
.end method

.method public u(J)I
    .locals 1

    .prologue
    .line 469
    const/4 v0, 0x0

    return v0
.end method
