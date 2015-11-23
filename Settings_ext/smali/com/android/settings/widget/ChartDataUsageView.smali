.class public Lcom/android/settings/widget/ChartDataUsageView;
.super Lcom/android/settings/widget/i;
.source "ChartDataUsageView.java"


# instance fields
.field private aoH:Lcom/android/settings/widget/ChartGridView;

.field private aoI:Lcom/android/settings/widget/ChartNetworkSeriesView;

.field private aoJ:Lcom/android/settings/widget/ChartNetworkSeriesView;

.field private aoK:Landroid/net/NetworkStatsHistory;

.field private aoL:Lcom/android/settings/widget/ChartSweepView;

.field private aoM:Lcom/android/settings/widget/ChartSweepView;

.field private aoN:J

.field private aoO:J

.field private aoP:J

.field private aoQ:Lcom/android/settings/widget/e;

.field private aoR:Lcom/android/settings/widget/h;

.field private mHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 81
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/widget/ChartDataUsageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 85
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    .prologue
    .line 88
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/widget/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 291
    new-instance v0, Lcom/android/settings/widget/c;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/c;-><init>(Lcom/android/settings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoR:Lcom/android/settings/widget/h;

    .line 89
    new-instance v0, Lcom/android/settings/widget/f;

    invoke-direct {v0}, Lcom/android/settings/widget/f;-><init>()V

    new-instance v1, Lcom/android/settings/widget/k;

    new-instance v2, Lcom/android/settings/widget/d;

    invoke-direct {v2}, Lcom/android/settings/widget/d;-><init>()V

    invoke-direct {v1, v2}, Lcom/android/settings/widget/k;-><init>(Lcom/android/settings/widget/a;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/a;Lcom/android/settings/widget/a;)V

    .line 91
    new-instance v0, Lcom/android/settings/widget/b;

    invoke-direct {v0, p0}, Lcom/android/settings/widget/b;-><init>(Lcom/android/settings/widget/ChartDataUsageView;)V

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    .line 102
    return-void
.end method

.method private static a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 601
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v1

    .line 602
    invoke-virtual {p0, p1}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v0

    .line 603
    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    .line 604
    invoke-static {p0, p3}, Landroid/text/TextUtils;->indexOf(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    .line 605
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    .line 606
    const/16 v2, 0x12

    invoke-virtual {p0, p1, v1, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 608
    :cond_0
    invoke-virtual {p0, v1, v0, p2}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 609
    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/ChartDataUsageView;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->sZ()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/ChartSweepView;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/ChartSweepView;Z)V

    return-void
.end method

.method private a(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0xa

    const-wide/16 v2, 0x0

    .line 202
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoP:J

    .line 205
    if-eqz p1, :cond_6

    .line 206
    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->tt()I

    move-result v4

    .line 207
    if-lez v4, :cond_5

    .line 209
    const-wide/16 v4, 0xb

    mul-long/2addr v0, v4

    div-long/2addr v0, v10

    .line 219
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v4}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v4

    iget-object v6, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v6}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 220
    iget-object v6, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoI:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v6}, Lcom/android/settings/widget/ChartNetworkSeriesView;->ti()J

    move-result-wide v6

    iget-object v8, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoJ:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v8}, Lcom/android/settings/widget/ChartNetworkSeriesView;->ti()J

    move-result-wide v8

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v6

    .line 221
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    const-wide/16 v6, 0xc

    mul-long/2addr v4, v6

    div-long/2addr v4, v10

    .line 222
    const-wide/32 v6, 0x3200000

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    .line 223
    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    .line 226
    iget-wide v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoP:J

    cmp-long v4, v0, v4

    if-eqz v4, :cond_4

    .line 227
    iput-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoP:J

    .line 229
    iget-object v4, p0, Lcom/android/settings/widget/ChartDataUsageView;->apa:Lcom/android/settings/widget/a;

    invoke-interface {v4, v2, v3, v0, v1}, Lcom/android/settings/widget/a;->c(JJ)Z

    move-result v4

    .line 230
    iget-object v5, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v5, v2, v3, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->f(JJ)V

    .line 231
    iget-object v5, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v5, v2, v3, v0, v1}, Lcom/android/settings/widget/ChartSweepView;->f(JJ)V

    .line 233
    if-eqz v4, :cond_1

    .line 234
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoI:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->tf()V

    .line 235
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoJ:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->tf()V

    .line 238
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoH:Lcom/android/settings/widget/ChartGridView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartGridView;->invalidate()V

    .line 241
    if-eqz p1, :cond_2

    .line 242
    invoke-virtual {p1}, Lcom/android/settings/widget/ChartSweepView;->ts()V

    .line 248
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    if-eq v0, p1, :cond_3

    .line 249
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->h(Lcom/android/settings/widget/ChartSweepView;)V

    .line 251
    :cond_3
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    if-eq v0, p1, :cond_4

    .line 252
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->h(Lcom/android/settings/widget/ChartSweepView;)V

    .line 255
    :cond_4
    return-void

    .line 210
    :cond_5
    if-gez v4, :cond_0

    .line 212
    const-wide/16 v4, 0x9

    mul-long/2addr v0, v4

    div-long/2addr v0, v10

    goto :goto_0

    :cond_6
    move-wide v0, v2

    goto :goto_0
.end method

.method private a(Lcom/android/settings/widget/ChartSweepView;Z)V
    .locals 4

    .prologue
    const/16 v2, 0x64

    .line 281
    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2, p1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 282
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0xfa

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 285
    :cond_1
    return-void
.end method

.method static synthetic b(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    return-object v0
.end method

.method static synthetic b(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 48
    invoke-static {p0, p1, p2, p3}, Lcom/android/settings/widget/ChartDataUsageView;->a(Landroid/text/SpannableStringBuilder;Ljava/lang/Object;Ljava/lang/CharSequence;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings/widget/ChartDataUsageView;Lcom/android/settings/widget/ChartSweepView;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->b(Lcom/android/settings/widget/ChartSweepView;)V

    return-void
.end method

.method private b(Lcom/android/settings/widget/ChartSweepView;)V
    .locals 2

    .prologue
    .line 288
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V

    .line 289
    return-void
.end method

.method static synthetic c(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/e;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoQ:Lcom/android/settings/widget/e;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings/widget/ChartDataUsageView;)Lcom/android/settings/widget/ChartSweepView;
    .locals 1

    .prologue
    .line 48
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    return-object v0
.end method

.method private sZ()V
    .locals 8

    .prologue
    const-wide v0, 0x7fffffffffffffffL

    .line 262
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoI:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->th()J

    move-result-wide v4

    .line 266
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 267
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    .line 272
    :goto_0
    const-wide/16 v6, 0x0

    cmp-long v6, v2, v6

    if-gez v6, :cond_2

    .line 276
    :goto_1
    const-wide/16 v2, 0x7

    mul-long/2addr v0, v2

    const-wide/16 v2, 0xa

    div-long/2addr v0, v2

    cmp-long v0, v4, v0

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    .line 277
    :goto_2
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoI:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->aW(Z)V

    .line 278
    return-void

    .line 268
    :cond_0
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 269
    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v2}, Lcom/android/settings/widget/ChartSweepView;->getValue()J

    move-result-wide v2

    goto :goto_0

    .line 276
    :cond_1
    const/4 v0, 0x0

    goto :goto_2

    :cond_2
    move-wide v0, v2

    goto :goto_1

    :cond_3
    move-wide v2, v0

    goto :goto_0
.end method

.method private te()V
    .locals 2

    .prologue
    .line 379
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoJ:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 380
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoI:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->aV(Z)V

    .line 384
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoI:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->aV(Z)V

    goto :goto_0
.end method

.method private static v(J)J
    .locals 6

    .prologue
    const-wide/16 v4, 0x1

    .line 614
    sub-long v0, p0, v4

    .line 617
    const/4 v2, 0x1

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 618
    const/4 v2, 0x2

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 619
    const/4 v2, 0x4

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 620
    const/16 v2, 0x8

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 621
    const/16 v2, 0x10

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 622
    const/16 v2, 0x20

    ushr-long v2, v0, v2

    or-long/2addr v0, v2

    .line 624
    add-long/2addr v0, v4

    .line 626
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method static synthetic w(J)J
    .locals 2

    .prologue
    .line 48
    invoke-static {p0, p1}, Lcom/android/settings/widget/ChartDataUsageView;->v(J)J

    move-result-wide v0

    return-wide v0
.end method


# virtual methods
.method public a(Landroid/net/NetworkStatsHistory;)V
    .locals 1

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoI:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->a(Landroid/net/NetworkStatsHistory;)V

    .line 146
    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoK:Landroid/net/NetworkStatsHistory;

    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/ChartSweepView;)V

    .line 148
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->sZ()V

    .line 149
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->te()V

    .line 150
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 151
    return-void
.end method

.method public a(Lcom/android/settings/widget/e;)V
    .locals 0

    .prologue
    .line 141
    iput-object p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoQ:Lcom/android/settings/widget/e;

    .line 142
    return-void
.end method

.method public b(Landroid/net/NetworkStatsHistory;)V
    .locals 4

    .prologue
    .line 154
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoJ:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0, p1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->a(Landroid/net/NetworkStatsHistory;)V

    .line 155
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoJ:Lcom/android/settings/widget/ChartNetworkSeriesView;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoK:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_0

    .line 157
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoJ:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoK:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v1}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/widget/ChartNetworkSeriesView;->x(J)V

    .line 159
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/ChartSweepView;)V

    .line 160
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->sZ()V

    .line 161
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->te()V

    .line 162
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 163
    return-void

    .line 155
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public c(Landroid/net/NetworkPolicy;)V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x4

    const-wide/16 v4, -0x1

    .line 166
    if-nez p1, :cond_0

    .line 167
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 168
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 169
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 170
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 195
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v7}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 177
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    iget-wide v2, p1, Landroid/net/NetworkPolicy;->limitBytes:J

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 184
    :goto_1
    iget-wide v0, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_2

    .line 185
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v7}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    iget-wide v2, p1, Landroid/net/NetworkPolicy;->warningBytes:J

    invoke-virtual {v0, v2, v3}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    .line 192
    :goto_2
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/ChartSweepView;)V

    .line 193
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->invalidate()V

    goto :goto_0

    .line 179
    :cond_1
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v7}, Lcom/android/settings/widget/ChartSweepView;->setEnabled(Z)V

    .line 181
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    goto :goto_1

    .line 188
    :cond_2
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6}, Lcom/android/settings/widget/ChartSweepView;->setVisibility(I)V

    .line 189
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v4, v5}, Lcom/android/settings/widget/ChartSweepView;->setValue(J)V

    goto :goto_2
.end method

.method public d(JJ)V
    .locals 3

    .prologue
    .line 358
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoZ:Lcom/android/settings/widget/a;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/settings/widget/a;->c(JJ)Z

    move-result v0

    .line 359
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoH:Lcom/android/settings/widget/ChartGridView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartGridView;->e(JJ)V

    .line 360
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoI:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->e(JJ)V

    .line 361
    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoJ:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/settings/widget/ChartNetworkSeriesView;->e(JJ)V

    .line 363
    iput-wide p1, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoN:J

    .line 364
    iput-wide p3, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoO:J

    .line 366
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->requestLayout()V

    .line 367
    if-eqz v0, :cond_0

    .line 368
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoI:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->tf()V

    .line 369
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoJ:Lcom/android/settings/widget/ChartNetworkSeriesView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartNetworkSeriesView;->tf()V

    .line 372
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->a(Lcom/android/settings/widget/ChartSweepView;)V

    .line 373
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->sZ()V

    .line 374
    invoke-direct {p0}, Lcom/android/settings/widget/ChartDataUsageView;->te()V

    .line 375
    return-void
.end method

.method protected onFinishInflate()V
    .locals 8

    .prologue
    const-wide/32 v6, 0x500000

    const/4 v2, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 106
    invoke-super {p0}, Lcom/android/settings/widget/i;->onFinishInflate()V

    .line 108
    const v0, 0x7f100087

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartGridView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoH:Lcom/android/settings/widget/ChartGridView;

    .line 109
    const v0, 0x7f100088

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoI:Lcom/android/settings/widget/ChartNetworkSeriesView;

    .line 110
    const v0, 0x7f100089

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartNetworkSeriesView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoJ:Lcom/android/settings/widget/ChartNetworkSeriesView;

    .line 111
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoJ:Lcom/android/settings/widget/ChartNetworkSeriesView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartNetworkSeriesView;->setVisibility(I)V

    .line 113
    const v0, 0x7f10008b

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    .line 114
    const v0, 0x7f10008a

    invoke-virtual {p0, v0}, Lcom/android/settings/widget/ChartDataUsageView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/widget/ChartSweepView;

    iput-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    .line 117
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v2, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 118
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/ChartSweepView;Lcom/android/settings/widget/ChartSweepView;)V

    .line 121
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a([Lcom/android/settings/widget/ChartSweepView;)V

    .line 122
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    new-array v1, v4, [Lcom/android/settings/widget/ChartSweepView;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a([Lcom/android/settings/widget/ChartSweepView;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoR:Lcom/android/settings/widget/h;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/h;)V

    .line 125
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoR:Lcom/android/settings/widget/h;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/h;)V

    .line 127
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6, v7}, Lcom/android/settings/widget/ChartSweepView;->y(J)V

    .line 128
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0, v6, v7}, Lcom/android/settings/widget/ChartSweepView;->y(J)V

    .line 131
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoH:Lcom/android/settings/widget/ChartGridView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoZ:Lcom/android/settings/widget/a;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->apa:Lcom/android/settings/widget/a;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartGridView;->a(Lcom/android/settings/widget/a;Lcom/android/settings/widget/a;)V

    .line 132
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoI:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoZ:Lcom/android/settings/widget/a;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->apa:Lcom/android/settings/widget/a;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->a(Lcom/android/settings/widget/a;Lcom/android/settings/widget/a;)V

    .line 133
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoJ:Lcom/android/settings/widget/ChartNetworkSeriesView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoZ:Lcom/android/settings/widget/a;

    iget-object v2, p0, Lcom/android/settings/widget/ChartDataUsageView;->apa:Lcom/android/settings/widget/a;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/widget/ChartNetworkSeriesView;->a(Lcom/android/settings/widget/a;Lcom/android/settings/widget/a;)V

    .line 134
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->apa:Lcom/android/settings/widget/a;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/a;)V

    .line 135
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    iget-object v1, p0, Lcom/android/settings/widget/ChartDataUsageView;->apa:Lcom/android/settings/widget/a;

    invoke-virtual {v0, v1}, Lcom/android/settings/widget/ChartSweepView;->a(Lcom/android/settings/widget/a;)V

    .line 137
    invoke-virtual {p0, v3}, Lcom/android/settings/widget/ChartDataUsageView;->setActivated(Z)V

    .line 138
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 321
    invoke-virtual {p0}, Lcom/android/settings/widget/ChartDataUsageView;->isActivated()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    :goto_0
    return v0

    .line 322
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    move v0, v1

    .line 324
    goto :goto_0

    .line 327
    :pswitch_1
    invoke-virtual {p0, v1}, Lcom/android/settings/widget/ChartDataUsageView;->setActivated(Z)V

    move v0, v1

    .line 328
    goto :goto_0

    .line 322
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public ta()J
    .locals 2

    .prologue
    .line 337
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoN:J

    return-wide v0
.end method

.method public tb()J
    .locals 2

    .prologue
    .line 341
    iget-wide v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoO:J

    return-wide v0
.end method

.method public tc()J
    .locals 2

    .prologue
    .line 345
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoL:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->tq()J

    move-result-wide v0

    return-wide v0
.end method

.method public td()J
    .locals 2

    .prologue
    .line 349
    iget-object v0, p0, Lcom/android/settings/widget/ChartDataUsageView;->aoM:Lcom/android/settings/widget/ChartSweepView;

    invoke-virtual {v0}, Lcom/android/settings/widget/ChartSweepView;->tq()J

    move-result-wide v0

    return-wide v0
.end method
