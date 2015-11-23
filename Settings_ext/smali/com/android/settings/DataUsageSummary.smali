.class public Lcom/android/settings_ext/DataUsageSummary;
.super Lcom/android/settings_ext/HighlightingFragment;
.source "DataUsageSummary.java"

# interfaces
.implements Lcom/android/settings_ext/search/k;


# static fields
.field private static final gE:Ljava/lang/StringBuilder;

.field private static final gF:Ljava/util/Formatter;

.field public static final gG:Lcom/android/settings_ext/search/l;


# instance fields
.field private fA:Lcom/android/settings_ext/bs;

.field private fB:I

.field private fC:Landroid/view/ViewGroup;

.field private fD:Landroid/view/ViewGroup;

.field private fE:Landroid/widget/LinearLayout;

.field private fF:Z

.field private fG:Landroid/widget/Switch;

.field private fH:Landroid/view/View;

.field private fI:Z

.field private fJ:Landroid/widget/Switch;

.field private fK:Landroid/view/View;

.field private fL:Landroid/view/View;

.field private fM:Landroid/widget/Spinner;

.field private fN:Lcom/android/settings_ext/bo;

.field private fO:Landroid/widget/TextView;

.field private fP:Lcom/android/settings_ext/widget/ChartDataUsageView;

.field private fQ:Landroid/view/View;

.field private fR:Landroid/widget/TextView;

.field private fS:Landroid/view/View;

.field private fT:Landroid/view/View;

.field private fU:Landroid/widget/ImageView;

.field private fV:Landroid/view/ViewGroup;

.field private fW:Landroid/widget/TextView;

.field private fX:Landroid/widget/TextView;

.field private fY:Landroid/widget/TextView;

.field private fZ:Landroid/widget/Button;

.field private fr:Landroid/os/INetworkManagementService;

.field private fs:Landroid/net/INetworkStatsService;

.field private ft:Landroid/net/NetworkPolicyManager;

.field private fu:Landroid/net/INetworkStatsSession;

.field private fv:Landroid/content/SharedPreferences;

.field private fw:Landroid/widget/TabHost;

.field private fx:Landroid/view/ViewGroup;

.field private fy:Landroid/widget/TabWidget;

.field private fz:Landroid/widget/ListView;

.field private gA:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private final gB:Landroid/app/LoaderManager$LoaderCallbacks;

.field private final gC:Landroid/app/LoaderManager$LoaderCallbacks;

.field private gD:Lcom/android/settings_ext/widget/e;

.field private ga:Landroid/widget/LinearLayout;

.field private gb:Landroid/widget/Switch;

.field private gc:Landroid/view/View;

.field private gd:Z

.field private ge:Z

.field private gf:Landroid/net/NetworkTemplate;

.field private gg:Lcom/android/settings_ext/b/a;

.field private gh:Lcom/android/settings_ext/DataUsageSummary$AppItem;

.field private gi:Landroid/content/Intent;

.field private gj:Lcom/android/settings_ext/b/f;

.field private gk:Ljava/lang/String;

.field private gl:Ljava/lang/String;

.field private gm:Landroid/view/MenuItem;

.field private gn:Landroid/view/MenuItem;

.field private go:Landroid/view/MenuItem;

.field private gp:Landroid/view/MenuItem;

.field private gq:Landroid/view/MenuItem;

.field private gr:Z

.field private gs:Lcom/android/settings_ext/b/j;

.field private gt:Landroid/widget/TabHost$TabContentFactory;

.field private gu:Landroid/widget/TabHost$OnTabChangeListener;

.field private gv:Ljava/lang/Boolean;

.field private gw:Landroid/view/View$OnClickListener;

.field private gx:Landroid/view/View$OnClickListener;

.field private gy:Landroid/view/View$OnClickListener;

.field private gz:Landroid/widget/AdapterView$OnItemClickListener;

.field private mTelephonyManager:Landroid/telephony/TelephonyManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 1459
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    sput-object v0, Lcom/android/settings_ext/DataUsageSummary;->gE:Ljava/lang/StringBuilder;

    .line 1460
    new-instance v0, Ljava/util/Formatter;

    sget-object v1, Lcom/android/settings_ext/DataUsageSummary;->gE:Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/Formatter;-><init>(Ljava/lang/Appendable;Ljava/util/Locale;)V

    sput-object v0, Lcom/android/settings_ext/DataUsageSummary;->gF:Ljava/util/Formatter;

    .line 2529
    new-instance v0, Lcom/android/settings_ext/ba;

    invoke-direct {v0}, Lcom/android/settings_ext/ba;-><init>()V

    sput-object v0, Lcom/android/settings_ext/DataUsageSummary;->gG:Lcom/android/settings_ext/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0}, Lcom/android/settings_ext/HighlightingFragment;-><init>()V

    .line 214
    iput v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fB:I

    .line 249
    iput-boolean v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gd:Z

    .line 250
    iput-boolean v0, p0, Lcom/android/settings_ext/DataUsageSummary;->ge:Z

    .line 255
    iput-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->gh:Lcom/android/settings_ext/DataUsageSummary$AppItem;

    .line 261
    iput-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->gk:Ljava/lang/String;

    .line 262
    iput-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->gl:Ljava/lang/String;

    .line 709
    new-instance v0, Lcom/android/settings_ext/bc;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/bc;-><init>(Lcom/android/settings_ext/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gt:Landroid/widget/TabHost$TabContentFactory;

    .line 729
    new-instance v0, Lcom/android/settings_ext/bd;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/bd;-><init>(Lcom/android/settings_ext/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gu:Landroid/widget/TabHost$OnTabChangeListener;

    .line 1141
    new-instance v0, Lcom/android/settings_ext/bf;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/bf;-><init>(Lcom/android/settings_ext/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gw:Landroid/view/View$OnClickListener;

    .line 1162
    new-instance v0, Lcom/android/settings_ext/bg;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/bg;-><init>(Lcom/android/settings_ext/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gx:Landroid/view/View$OnClickListener;

    .line 1176
    new-instance v0, Lcom/android/settings_ext/bh;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/bh;-><init>(Lcom/android/settings_ext/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gy:Landroid/view/View$OnClickListener;

    .line 1192
    new-instance v0, Lcom/android/settings_ext/bi;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/bi;-><init>(Lcom/android/settings_ext/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gz:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1206
    new-instance v0, Lcom/android/settings_ext/aW;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/aW;-><init>(Lcom/android/settings_ext/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gA:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1306
    new-instance v0, Lcom/android/settings_ext/aX;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/aX;-><init>(Lcom/android/settings_ext/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gB:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1337
    new-instance v0, Lcom/android/settings_ext/aY;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/aY;-><init>(Lcom/android/settings_ext/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gC:Landroid/app/LoaderManager$LoaderCallbacks;

    .line 1399
    new-instance v0, Lcom/android/settings_ext/aZ;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/aZ;-><init>(Lcom/android/settings_ext/DataUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gD:Lcom/android/settings_ext/widget/e;

    .line 2274
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/DataUsageSummary;)Landroid/net/INetworkStatsService;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fs:Landroid/net/INetworkStatsService;

    return-object v0
.end method

.method private static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2424
    invoke-virtual {p0}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x0

    sget-object v2, Lcom/android/internal/R$styleable;->Preference:[I

    const v3, 0x101008c

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 2427
    const/4 v1, 0x3

    invoke-virtual {v0, v1, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 2428
    invoke-virtual {p0, v0, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private static a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 2416
    const v0, 0x7f0400a5

    const/4 v1, 0x0

    invoke-virtual {p0, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 2417
    const v0, 0x1020018

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 2419
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2420
    return-object v1
.end method

.method static synthetic a(Lcom/android/settings_ext/DataUsageSummary;Lcom/android/settings_ext/DataUsageSummary$AppItem;)Lcom/android/settings_ext/DataUsageSummary$AppItem;
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/settings_ext/DataUsageSummary;->gh:Lcom/android/settings_ext/DataUsageSummary$AppItem;

    return-object p1
.end method

.method static synthetic a(Lcom/android/settings_ext/DataUsageSummary;Lcom/android/settings_ext/b/a;)Lcom/android/settings_ext/b/a;
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/android/settings_ext/DataUsageSummary;->gg:Lcom/android/settings_ext/b/a;

    return-object p1
.end method

.method public static a(Landroid/content/Context;JJ)Ljava/lang/String;
    .locals 9

    .prologue
    .line 1464
    .line 1466
    sget-object v8, Lcom/android/settings_ext/DataUsageSummary;->gE:Ljava/lang/StringBuilder;

    monitor-enter v8

    .line 1467
    :try_start_0
    sget-object v0, Lcom/android/settings_ext/DataUsageSummary;->gE:Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1468
    sget-object v1, Lcom/android/settings_ext/DataUsageSummary;->gF:Ljava/util/Formatter;

    const v6, 0x10010

    const/4 v7, 0x0

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    invoke-static/range {v0 .. v7}, Landroid/text/format/DateUtils;->formatDateRange(Landroid/content/Context;Ljava/util/Formatter;JJILjava/lang/String;)Ljava/util/Formatter;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Formatter;->toString()Ljava/lang/String;

    move-result-object v0

    monitor-exit v8

    return-object v0

    .line 1470
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private static a(Landroid/view/View;I)V
    .locals 1

    .prologue
    .line 2512
    const v0, 0x1020016

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2513
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    .line 2514
    return-void
.end method

.method private static a(Landroid/view/View;Ljava/lang/CharSequence;)V
    .locals 2

    .prologue
    .line 2521
    const v0, 0x1020010

    invoke-virtual {p0, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2522
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2523
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2524
    return-void
.end method

.method private static a(Landroid/widget/ListView;I)V
    .locals 4

    .prologue
    .line 2494
    invoke-virtual {p0}, Landroid/widget/ListView;->getSelector()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 2495
    invoke-virtual {p0}, Landroid/widget/ListView;->getDivider()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 2499
    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 2500
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2501
    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2503
    new-instance v2, Lcom/android/settings_ext/a/c;

    invoke-direct {v2, v0, p1}, Lcom/android/settings_ext/a/c;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v2}, Landroid/widget/ListView;->setSelector(Landroid/graphics/drawable/Drawable;)V

    .line 2504
    new-instance v0, Lcom/android/settings_ext/a/c;

    invoke-direct {v0, v1, p1}, Lcom/android/settings_ext/a/c;-><init>(Landroid/graphics/drawable/Drawable;I)V

    invoke-virtual {p0, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 2505
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/DataUsageSummary;J)V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/DataUsageSummary;->e(J)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/DataUsageSummary;Z)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/settings_ext/DataUsageSummary;->l(Z)V

    return-void
.end method

.method private a(Landroid/net/NetworkPolicy;)Z
    .locals 1

    .prologue
    .line 994
    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fG:Landroid/widget/Switch;

    invoke-virtual {v0}, Landroid/widget/Switch;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private aY()V
    .locals 2

    .prologue
    .line 537
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->ft:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 538
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gm:Landroid/view/MenuItem;

    const v1, 0x7f09084e

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 543
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gd:Z

    if-eqz v0, :cond_1

    .line 544
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gn:Landroid/view/MenuItem;

    const v1, 0x7f090851

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 549
    :goto_1
    iget-boolean v0, p0, Lcom/android/settings_ext/DataUsageSummary;->ge:Z

    if-eqz v0, :cond_2

    .line 550
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->go:Landroid/view/MenuItem;

    const v1, 0x7f090853

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    .line 554
    :goto_2
    return-void

    .line 540
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gm:Landroid/view/MenuItem;

    const v1, 0x7f09084d

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_0

    .line 546
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gn:Landroid/view/MenuItem;

    const v1, 0x7f090850

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_1

    .line 552
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->go:Landroid/view/MenuItem;

    const v1, 0x7f090852

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_2
.end method

.method private aZ()V
    .locals 2

    .prologue
    .line 635
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fP:Lcom/android/settings_ext/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings_ext/widget/ChartDataUsageView;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 645
    :goto_0
    return-void

    .line 637
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fx:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings_ext/DataUsageSummary;->ba()Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 638
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fC:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings_ext/DataUsageSummary;->ba()Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 639
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fD:Landroid/view/ViewGroup;

    invoke-static {}, Lcom/android/settings_ext/DataUsageSummary;->ba()Landroid/animation/LayoutTransition;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 641
    invoke-static {}, Lcom/android/settings_ext/DataUsageSummary;->ba()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 642
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 643
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 644
    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fP:Lcom/android/settings_ext/widget/ChartDataUsageView;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/widget/ChartDataUsageView;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    goto :goto_0
.end method

.method static synthetic b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .prologue
    .line 157
    invoke-static {p0, p1}, Lcom/android/settings_ext/DataUsageSummary;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;
    .locals 2

    .prologue
    .line 720
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fw:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {p0, p2}, Lcom/android/settings_ext/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->gt:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private b(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2

    .prologue
    .line 725
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fw:Landroid/widget/TabHost;

    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->gt:Landroid/widget/TabHost$TabContentFactory;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/widget/TabHost$TabContentFactory;)Landroid/widget/TabHost$TabSpec;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/net/NetworkPolicy;)V
    .locals 14

    .prologue
    const-wide v10, 0x7fffffffffffffffL

    const-wide/high16 v4, -0x8000000000000000L

    const/4 v7, 0x0

    .line 1075
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fM:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedItem()Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/settings_ext/br;

    .line 1076
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fN:Lcom/android/settings_ext/bo;

    invoke-virtual {v0}, Lcom/android/settings_ext/bo;->clear()V

    .line 1078
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fM:Landroid/widget/Spinner;

    invoke-virtual {v0}, Landroid/widget/Spinner;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 1082
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gg:Lcom/android/settings_ext/b/a;

    if-eqz v0, :cond_8

    .line 1083
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gg:Lcom/android/settings_ext/b/a;

    iget-object v0, v0, Lcom/android/settings_ext/b/a;->adk:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getStart()J

    move-result-wide v8

    .line 1084
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gg:Lcom/android/settings_ext/b/a;

    iget-object v0, v0, Lcom/android/settings_ext/b/a;->adk:Landroid/net/NetworkStatsHistory;

    invoke-virtual {v0}, Landroid/net/NetworkStatsHistory;->getEnd()J

    move-result-wide v2

    .line 1087
    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    .line 1088
    cmp-long v0, v8, v10

    if-nez v0, :cond_7

    move-wide v10, v12

    .line 1089
    :goto_1
    cmp-long v0, v2, v4

    if-nez v0, :cond_6

    const-wide/16 v2, 0x1

    add-long v8, v12, v2

    .line 1092
    :goto_2
    if-eqz p1, :cond_5

    .line 1094
    invoke-static {v8, v9, p1}, Landroid/net/NetworkPolicyManager;->computeNextCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v4

    move v0, v7

    .line 1097
    :goto_3
    cmp-long v2, v4, v10

    if-lez v2, :cond_0

    .line 1098
    invoke-static {v4, v5, p1}, Landroid/net/NetworkPolicyManager;->computeLastCycleBoundary(JLandroid/net/NetworkPolicy;)J

    move-result-wide v2

    .line 1099
    const-string v0, "DataUsage"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "generating cs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " to ce="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, " waiting for hs="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v0, v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1101
    iget-object v12, p0, Lcom/android/settings_ext/DataUsageSummary;->fN:Lcom/android/settings_ext/bo;

    new-instance v0, Lcom/android/settings_ext/br;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ext/br;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v12, v0}, Lcom/android/settings_ext/bo;->add(Ljava/lang/Object;)V

    .line 1103
    const/4 v0, 0x1

    move-wide v4, v2

    .line 1104
    goto :goto_3

    .line 1107
    :cond_0
    iget-object v2, p0, Lcom/android/settings_ext/DataUsageSummary;->fN:Lcom/android/settings_ext/bo;

    invoke-direct {p0, p1}, Lcom/android/settings_ext/DataUsageSummary;->a(Landroid/net/NetworkPolicy;)Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/bo;->o(Z)V

    .line 1110
    :goto_4
    if-nez v0, :cond_2

    move-wide v4, v8

    .line 1113
    :goto_5
    cmp-long v0, v4, v10

    if-lez v0, :cond_1

    .line 1114
    const-wide v2, 0x90321000L

    sub-long v2, v4, v2

    .line 1115
    iget-object v8, p0, Lcom/android/settings_ext/DataUsageSummary;->fN:Lcom/android/settings_ext/bo;

    new-instance v0, Lcom/android/settings_ext/br;

    invoke-direct/range {v0 .. v5}, Lcom/android/settings_ext/br;-><init>(Landroid/content/Context;JJ)V

    invoke-virtual {v8, v0}, Lcom/android/settings_ext/bo;->add(Ljava/lang/Object;)V

    move-wide v4, v2

    .line 1117
    goto :goto_5

    .line 1119
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fN:Lcom/android/settings_ext/bo;

    invoke-virtual {v0, v7}, Lcom/android/settings_ext/bo;->o(Z)V

    .line 1123
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fN:Lcom/android/settings_ext/bo;

    invoke-virtual {v0}, Lcom/android/settings_ext/bo;->getCount()I

    move-result v0

    if-lez v0, :cond_4

    .line 1124
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fN:Lcom/android/settings_ext/bo;

    invoke-virtual {v0, v6}, Lcom/android/settings_ext/bo;->a(Lcom/android/settings_ext/br;)I

    move-result v3

    .line 1125
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fM:Landroid/widget/Spinner;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setSelection(I)V

    .line 1129
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fN:Lcom/android/settings_ext/bo;

    invoke-virtual {v0, v3}, Lcom/android/settings_ext/bo;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/br;

    .line 1130
    invoke-static {v0, v6}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1131
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gA:Landroid/widget/AdapterView$OnItemSelectedListener;

    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fM:Landroid/widget/Spinner;

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    invoke-interface/range {v0 .. v5}, Landroid/widget/AdapterView$OnItemSelectedListener;->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 1139
    :goto_6
    return-void

    .line 1134
    :cond_3
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bh()V

    goto :goto_6

    .line 1137
    :cond_4
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bh()V

    goto :goto_6

    :cond_5
    move v0, v7

    goto :goto_4

    :cond_6
    move-wide v8, v2

    goto/16 :goto_2

    :cond_7
    move-wide v10, v8

    goto/16 :goto_1

    :cond_8
    move-wide v2, v4

    move-wide v8, v10

    goto/16 :goto_0
.end method

.method static synthetic b(Lcom/android/settings_ext/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bc()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/DataUsageSummary;J)V
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/DataUsageSummary;->d(J)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/DataUsageSummary;Z)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/settings_ext/DataUsageSummary;->n(Z)V

    return-void
.end method

.method private static ba()Landroid/animation/LayoutTransition;
    .locals 2

    .prologue
    .line 648
    new-instance v0, Landroid/animation/LayoutTransition;

    invoke-direct {v0}, Landroid/animation/LayoutTransition;-><init>()V

    .line 652
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->setAnimateParentHierarchy(Z)V

    .line 653
    return-object v0
.end method

.method private bb()V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 662
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 663
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fw:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->clearAllTabs()V

    .line 665
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bi()Z

    move-result v0

    .line 666
    if-eqz v0, :cond_4

    invoke-static {v3}, Lcom/android/settings_ext/DataUsageSummary;->f(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 667
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fw:Landroid/widget/TabHost;

    const-string v4, "3g"

    const v5, 0x7f09086b

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ext/DataUsageSummary;->b(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 668
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fw:Landroid/widget/TabHost;

    const-string v4, "4g"

    const v5, 0x7f09086a

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ext/DataUsageSummary;->b(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 680
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gd:Z

    if-eqz v0, :cond_1

    invoke-static {v3}, Lcom/android/settings_ext/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 681
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fw:Landroid/widget/TabHost;

    const-string v4, "wifi"

    const v5, 0x7f090866

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ext/DataUsageSummary;->b(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 683
    :cond_1
    iget-boolean v0, p0, Lcom/android/settings_ext/DataUsageSummary;->ge:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/DataUsageSummary;->h(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 684
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fw:Landroid/widget/TabHost;

    const-string v3, "ethernet"

    const v4, 0x7f090867

    invoke-direct {p0, v3, v4}, Lcom/android/settings_ext/DataUsageSummary;->b(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 687
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fy:Landroid/widget/TabWidget;

    invoke-virtual {v0}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v0

    if-nez v0, :cond_6

    move v0, v1

    .line 688
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->fy:Landroid/widget/TabWidget;

    invoke-virtual {v3}, Landroid/widget/TabWidget;->getTabCount()I

    move-result v3

    if-le v3, v1, :cond_7

    .line 689
    :goto_2
    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->fy:Landroid/widget/TabWidget;

    if-eqz v1, :cond_8

    :goto_3
    invoke-virtual {v3, v2}, Landroid/widget/TabWidget;->setVisibility(I)V

    .line 690
    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->gl:Ljava/lang/String;

    if-eqz v1, :cond_a

    .line 691
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gl:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fw:Landroid/widget/TabHost;

    invoke-virtual {v1}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Llibcore/util/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 693
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bc()V

    .line 697
    :goto_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gl:Ljava/lang/String;

    .line 704
    :cond_3
    :goto_5
    return-void

    .line 669
    :cond_4
    invoke-static {v3}, Lcom/android/settings_ext/DataUsageSummary;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 670
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    .line 671
    if-le v4, v1, :cond_5

    move v0, v2

    .line 672
    :goto_6
    if-ge v0, v4, :cond_0

    .line 673
    iget-object v5, p0, Lcom/android/settings_ext/DataUsageSummary;->fw:Landroid/widget/TabHost;

    add-int/lit8 v6, v0, 0x1

    invoke-direct {p0, v6}, Lcom/android/settings_ext/DataUsageSummary;->n(I)Ljava/lang/String;

    move-result-object v6

    add-int/lit8 v7, v0, 0x1

    invoke-direct {p0, v7}, Lcom/android/settings_ext/DataUsageSummary;->o(I)Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0, v6, v7}, Lcom/android/settings_ext/DataUsageSummary;->b(Ljava/lang/String;Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 672
    add-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 676
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fw:Landroid/widget/TabHost;

    const-string v4, "mobile"

    const v5, 0x7f090868

    invoke-direct {p0, v4, v5}, Lcom/android/settings_ext/DataUsageSummary;->b(Ljava/lang/String;I)Landroid/widget/TabHost$TabSpec;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    goto/16 :goto_0

    :cond_6
    move v0, v2

    .line 687
    goto :goto_1

    :cond_7
    move v1, v2

    .line 688
    goto :goto_2

    .line 689
    :cond_8
    const/16 v2, 0x8

    goto :goto_3

    .line 695
    :cond_9
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fw:Landroid/widget/TabHost;

    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->gl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    goto :goto_4

    .line 698
    :cond_a
    if-eqz v0, :cond_3

    .line 700
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bc()V

    goto :goto_5
.end method

.method private bc()V
    .locals 8

    .prologue
    const v7, 0x7f09086e

    const v6, 0x7f090862

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 743
    iput-boolean v2, p0, Lcom/android/settings_ext/DataUsageSummary;->gr:Z

    .line 744
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 821
    :goto_0
    return-void

    .line 746
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 747
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fw:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v4

    .line 748
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v2

    .line 750
    :goto_1
    if-nez v4, :cond_2

    .line 751
    const-string v0, "DataUsage"

    const-string v1, "no tab selected; hiding body"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 752
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fz:Landroid/widget/ListView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 748
    goto :goto_1

    .line 755
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ext/DataUsageSummary;->fz:Landroid/widget/ListView;

    invoke-virtual {v5, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 758
    iput-object v4, p0, Lcom/android/settings_ext/DataUsageSummary;->gk:Ljava/lang/String;

    .line 762
    iput-boolean v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fF:Z

    .line 763
    iput-boolean v2, p0, Lcom/android/settings_ext/DataUsageSummary;->fI:Z

    .line 767
    const-string v0, "mobile"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 768
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fH:Landroid/view/View;

    invoke-static {v0, v7}, Lcom/android/settings_ext/DataUsageSummary;->a(Landroid/view/View;I)V

    .line 769
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fK:Landroid/view/View;

    invoke-static {v0, v6}, Lcom/android/settings_ext/DataUsageSummary;->a(Landroid/view/View;I)V

    .line 770
    invoke-static {v3}, Lcom/android/settings_ext/DataUsageSummary;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gf:Landroid/net/NetworkTemplate;

    .line 814
    :cond_3
    :goto_2
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->gf:Landroid/net/NetworkTemplate;

    iget-object v4, p0, Lcom/android/settings_ext/DataUsageSummary;->gh:Lcom/android/settings_ext/DataUsageSummary$AppItem;

    invoke-static {v3, v4}, Lcom/android/settings_ext/b/b;->a(Landroid/net/NetworkTemplate;Lcom/android/settings_ext/DataUsageSummary$AppItem;)Landroid/os/Bundle;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings_ext/DataUsageSummary;->gB:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v2, v3, v4}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    .line 818
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    .line 820
    iput-boolean v1, p0, Lcom/android/settings_ext/DataUsageSummary;->gr:Z

    goto :goto_0

    .line 772
    :cond_4
    const-string v0, "SIM"

    invoke-virtual {v4, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    move v0, v1

    .line 773
    :goto_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 775
    add-int/lit8 v2, v0, 0x1

    invoke-direct {p0, v2}, Lcom/android/settings_ext/DataUsageSummary;->n(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 776
    iget-object v2, p0, Lcom/android/settings_ext/DataUsageSummary;->fH:Landroid/view/View;

    invoke-static {v2, v7}, Lcom/android/settings_ext/DataUsageSummary;->a(Landroid/view/View;I)V

    .line 778
    iget-object v2, p0, Lcom/android/settings_ext/DataUsageSummary;->fK:Landroid/view/View;

    invoke-static {v2, v6}, Lcom/android/settings_ext/DataUsageSummary;->a(Landroid/view/View;I)V

    .line 780
    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->m(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/NetworkTemplate;->buildTemplateMobileAll(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings_ext/DataUsageSummary;->gf:Landroid/net/NetworkTemplate;

    .line 774
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 783
    :cond_6
    const-string v0, "3g"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 784
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fH:Landroid/view/View;

    const v2, 0x7f09086f

    invoke-static {v0, v2}, Lcom/android/settings_ext/DataUsageSummary;->a(Landroid/view/View;I)V

    .line 785
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fK:Landroid/view/View;

    const v2, 0x7f090864

    invoke-static {v0, v2}, Lcom/android/settings_ext/DataUsageSummary;->a(Landroid/view/View;I)V

    .line 787
    invoke-static {v3}, Lcom/android/settings_ext/DataUsageSummary;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile3gLower(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gf:Landroid/net/NetworkTemplate;

    goto :goto_2

    .line 789
    :cond_7
    const-string v0, "4g"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 790
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fH:Landroid/view/View;

    const v2, 0x7f090870

    invoke-static {v0, v2}, Lcom/android/settings_ext/DataUsageSummary;->a(Landroid/view/View;I)V

    .line 791
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fK:Landroid/view/View;

    const v2, 0x7f090863

    invoke-static {v0, v2}, Lcom/android/settings_ext/DataUsageSummary;->a(Landroid/view/View;I)V

    .line 793
    invoke-static {v3}, Lcom/android/settings_ext/DataUsageSummary;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/NetworkTemplate;->buildTemplateMobile4g(Ljava/lang/String;)Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gf:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 795
    :cond_8
    const-string v0, "wifi"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 797
    iput-boolean v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fF:Z

    .line 798
    iput-boolean v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fI:Z

    .line 799
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateWifiWildcard()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gf:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 801
    :cond_9
    const-string v0, "ethernet"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 803
    iput-boolean v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fF:Z

    .line 804
    iput-boolean v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fI:Z

    .line 805
    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gf:Landroid/net/NetworkTemplate;

    goto/16 :goto_2

    .line 808
    :cond_a
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unknown tab: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private bd()Z
    .locals 1

    .prologue
    .line 824
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gh:Lcom/android/settings_ext/DataUsageSummary$AppItem;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private be()V
    .locals 13

    .prologue
    .line 832
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 833
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 834
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v5

    .line 836
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bd()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 837
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fT:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 838
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fN:Lcom/android/settings_ext/bo;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/bo;->p(Z)V

    .line 849
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fP:Lcom/android/settings_ext/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/ChartDataUsageView;->c(Landroid/net/NetworkPolicy;)V

    .line 852
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gh:Lcom/android/settings_ext/DataUsageSummary$AppItem;

    iget v6, v0, Lcom/android/settings_ext/DataUsageSummary$AppItem;->key:I

    .line 853
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gs:Lcom/android/settings_ext/b/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v6, v1}, Lcom/android/settings_ext/b/j;->g(IZ)Lcom/android/settings_ext/b/i;

    move-result-object v7

    .line 854
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fU:Landroid/widget/ImageView;

    iget-object v1, v7, Lcom/android/settings_ext/b/i;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 856
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fV:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 858
    const/4 v1, 0x0

    .line 859
    iget-object v0, v7, Lcom/android/settings_ext/b/i;->adw:[Ljava/lang/CharSequence;

    if-eqz v0, :cond_1

    .line 860
    iget-object v0, v7, Lcom/android/settings_ext/b/i;->adw:[Ljava/lang/CharSequence;

    array-length v8, v0

    .line 861
    const/4 v0, 0x0

    move v12, v0

    move-object v0, v1

    move v1, v12

    :goto_0
    if-ge v1, v8, :cond_2

    .line 862
    iget-object v0, v7, Lcom/android/settings_ext/b/i;->adw:[Ljava/lang/CharSequence;

    aget-object v9, v0, v1

    .line 863
    iget-object v0, v7, Lcom/android/settings_ext/b/i;->adx:[Ljava/lang/CharSequence;

    aget-object v10, v0, v1

    .line 864
    const v0, 0x7f04003d

    iget-object v2, p0, Lcom/android/settings_ext/DataUsageSummary;->fV:Landroid/view/ViewGroup;

    const/4 v11, 0x0

    invoke-virtual {v5, v0, v2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 865
    const v0, 0x7f100083

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 866
    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 867
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 868
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fV:Landroid/view/ViewGroup;

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 861
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_0

    .line 840
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fT:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 841
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fN:Lcom/android/settings_ext/bo;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/bo;->p(Z)V

    .line 844
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fP:Lcom/android/settings_ext/widget/ChartDataUsageView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/widget/ChartDataUsageView;->b(Landroid/net/NetworkStatsHistory;)V

    .line 936
    :goto_1
    return-void

    .line 871
    :cond_1
    const v0, 0x7f04003d

    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fV:Landroid/view/ViewGroup;

    const/4 v2, 0x0

    invoke-virtual {v5, v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 872
    const v0, 0x7f100083

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 873
    iget-object v2, v7, Lcom/android/settings_ext/b/i;->label:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 874
    iget-object v2, v7, Lcom/android/settings_ext/b/i;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 875
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fV:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    move-object v0, v1

    .line 879
    :cond_2
    if-eqz v0, :cond_4

    .line 880
    const v1, 0x7f100084

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fW:Landroid/widget/TextView;

    .line 886
    :goto_2
    invoke-virtual {v4, v6}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v2

    .line 887
    if-eqz v2, :cond_6

    array-length v0, v2

    if-lez v0, :cond_6

    .line 888
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MANAGE_NETWORK_USAGE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gi:Landroid/content/Intent;

    .line 889
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gi:Landroid/content/Intent;

    const-string v1, "android.intent.category.DEFAULT"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 892
    const/4 v0, 0x0

    .line 893
    array-length v5, v2

    const/4 v1, 0x0

    :goto_3
    if-ge v1, v5, :cond_3

    aget-object v7, v2, v1

    .line 894
    iget-object v8, p0, Lcom/android/settings_ext/DataUsageSummary;->gi:Landroid/content/Intent;

    invoke-virtual {v8, v7}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 895
    iget-object v7, p0, Lcom/android/settings_ext/DataUsageSummary;->gi:Landroid/content/Intent;

    const/4 v8, 0x0

    invoke-virtual {v4, v7, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v7

    if-eqz v7, :cond_5

    .line 896
    const/4 v0, 0x1

    .line 901
    :cond_3
    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fZ:Landroid/widget/Button;

    new-instance v2, Lcom/android/settings_ext/be;

    invoke-direct {v2, p0, v6}, Lcom/android/settings_ext/be;-><init>(Lcom/android/settings_ext/DataUsageSummary;I)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 913
    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fZ:Landroid/widget/Button;

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    .line 914
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fZ:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    .line 922
    :goto_4
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bh()V

    .line 924
    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->ft:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->isBandwidthControlEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-static {v3}, Lcom/android/settings_ext/DataUsageSummary;->e(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 926
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gc:Landroid/view/View;

    const v1, 0x7f090874

    invoke-static {v0, v1}, Lcom/android/settings_ext/DataUsageSummary;->a(Landroid/view/View;I)V

    .line 927
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gc:Landroid/view/View;

    const v1, 0x7f090875

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/DataUsageSummary;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/settings_ext/DataUsageSummary;->a(Landroid/view/View;Ljava/lang/CharSequence;)V

    .line 930
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gc:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 931
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gb:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bg()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    goto/16 :goto_1

    .line 882
    :cond_4
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fW:Landroid/widget/TextView;

    goto/16 :goto_2

    .line 893
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 917
    :cond_6
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gi:Landroid/content/Intent;

    .line 918
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fZ:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 919
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fZ:Landroid/widget/Button;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_4

    .line 934
    :cond_7
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gc:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private bf()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 958
    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->gk:Ljava/lang/String;

    const-string v2, "SIM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 960
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mobile_data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bj()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 968
    :cond_0
    :goto_0
    return v0

    .line 964
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gv:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    .line 966
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gv:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 968
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v0

    goto :goto_0
.end method

.method private bg()Z
    .locals 2

    .prologue
    .line 1013
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gh:Lcom/android/settings_ext/DataUsageSummary$AppItem;

    iget v0, v0, Lcom/android/settings_ext/DataUsageSummary$AppItem;->key:I

    .line 1014
    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->ft:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v1, v0}, Landroid/net/NetworkPolicyManager;->getUidPolicy(I)I

    move-result v0

    .line 1015
    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bh()V
    .locals 14

    .prologue
    .line 1247
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fP:Lcom/android/settings_ext/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings_ext/widget/ChartDataUsageView;->ta()J

    move-result-wide v2

    .line 1248
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fP:Lcom/android/settings_ext/widget/ChartDataUsageView;

    invoke-virtual {v0}, Lcom/android/settings_ext/widget/ChartDataUsageView;->tb()J

    move-result-wide v4

    .line 1249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1251
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v9

    .line 1253
    const/4 v8, 0x0

    .line 1254
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bd()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gg:Lcom/android/settings_ext/b/a;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gg:Lcom/android/settings_ext/b/a;

    iget-object v0, v0, Lcom/android/settings_ext/b/a;->adl:Landroid/net/NetworkStatsHistory;

    if-eqz v0, :cond_2

    .line 1256
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gg:Lcom/android/settings_ext/b/a;

    iget-object v1, v0, Lcom/android/settings_ext/b/a;->adm:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 1257
    iget-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v10, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v10, v0

    .line 1258
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gg:Lcom/android/settings_ext/b/a;

    iget-object v1, v0, Lcom/android/settings_ext/b/a;->adn:Landroid/net/NetworkStatsHistory;

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v0

    .line 1259
    iget-wide v12, v0, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v0, v0, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v0, v12

    .line 1260
    add-long v12, v10, v0

    .line 1262
    iget-object v8, p0, Lcom/android/settings_ext/DataUsageSummary;->fW:Landroid/widget/TextView;

    if-eqz v8, :cond_0

    .line 1263
    iget-object v8, p0, Lcom/android/settings_ext/DataUsageSummary;->fW:Landroid/widget/TextView;

    invoke-static {v9, v12, v13}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v8, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1265
    :cond_0
    iget-object v8, p0, Lcom/android/settings_ext/DataUsageSummary;->fY:Landroid/widget/TextView;

    invoke-static {v9, v10, v11}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v10}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1266
    iget-object v8, p0, Lcom/android/settings_ext/DataUsageSummary;->fX:Landroid/widget/TextView;

    invoke-static {v9, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v8, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1269
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gg:Lcom/android/settings_ext/b/a;

    iget-object v1, v0, Lcom/android/settings_ext/b/a;->adl:Landroid/net/NetworkStatsHistory;

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 1271
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/app/LoaderManager;->destroyLoader(I)V

    .line 1273
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fO:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1287
    :goto_0
    if-eqz v8, :cond_4

    iget-wide v0, v8, Landroid/net/NetworkStatsHistory$Entry;->rxBytes:J

    iget-wide v2, v8, Landroid/net/NetworkStatsHistory$Entry;->txBytes:J

    add-long/2addr v0, v2

    .line 1288
    :goto_1
    invoke-static {v9, v0, v1}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 1289
    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fO:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1291
    const-string v0, "mobile"

    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->gk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "3g"

    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->gk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "4g"

    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->gk:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1293
    :cond_1
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bd()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1294
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fQ:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1303
    :goto_2
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->aZ()V

    .line 1304
    return-void

    .line 1276
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gg:Lcom/android/settings_ext/b/a;

    if-eqz v0, :cond_3

    .line 1277
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gg:Lcom/android/settings_ext/b/a;

    iget-object v1, v0, Lcom/android/settings_ext/b/a;->adk:Landroid/net/NetworkStatsHistory;

    const/4 v8, 0x0

    invoke-virtual/range {v1 .. v8}, Landroid/net/NetworkStatsHistory;->getValues(JJJLandroid/net/NetworkStatsHistory$Entry;)Landroid/net/NetworkStatsHistory$Entry;

    move-result-object v8

    .line 1280
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fO:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1283
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getLoaderManager()Landroid/app/LoaderManager;

    move-result-object v0

    const/4 v1, 0x3

    iget-object v6, p0, Lcom/android/settings_ext/DataUsageSummary;->gf:Landroid/net/NetworkTemplate;

    invoke-static {v6, v2, v3, v4, v5}, Lcom/android/settings_ext/b/h;->a(Landroid/net/NetworkTemplate;JJ)Landroid/os/Bundle;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->gC:Landroid/app/LoaderManager$LoaderCallbacks;

    invoke-virtual {v0, v1, v2, v3}, Landroid/app/LoaderManager;->restartLoader(ILandroid/os/Bundle;Landroid/app/LoaderManager$LoaderCallbacks;)Landroid/content/Loader;

    goto :goto_0

    .line 1287
    :cond_4
    const-wide/16 v0, 0x0

    goto :goto_1

    .line 1296
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fQ:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 1299
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fQ:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2
.end method

.method private bi()Z
    .locals 2

    .prologue
    .line 1367
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 1368
    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->e(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1369
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    .line 1370
    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->gj:Lcom/android/settings_ext/b/f;

    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->d(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/b/f;->aP(Ljava/lang/String;)Z

    move-result v0

    .line 1372
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private bj()I
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 2590
    move v0, v1

    :goto_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 2592
    iget-object v2, p0, Lcom/android/settings_ext/DataUsageSummary;->gk:Ljava/lang/String;

    add-int/lit8 v3, v0, 0x1

    invoke-direct {p0, v3}, Lcom/android/settings_ext/DataUsageSummary;->n(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2598
    :goto_1
    return v0

    .line 2591
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 2598
    goto :goto_1
.end method

.method static synthetic c(Lcom/android/settings_ext/DataUsageSummary;)Landroid/widget/TabHost;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fw:Landroid/widget/TabHost;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/DataUsageSummary;Z)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0, p1}, Lcom/android/settings_ext/DataUsageSummary;->m(Z)V

    return-void
.end method

.method static synthetic d(Lcom/android/settings_ext/DataUsageSummary;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gi:Landroid/content/Intent;

    return-object v0
.end method

.method private static d(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 1386
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    .line 1387
    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getSubscriberId()Ljava/lang/String;

    move-result-object v0

    .line 1388
    const-string v1, "test.subscriberid"

    invoke-static {v1, v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private d(J)V
    .locals 3

    .prologue
    .line 940
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gj:Lcom/android/settings_ext/b/f;

    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->gf:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings_ext/b/f;->a(Landroid/net/NetworkTemplate;J)V

    .line 941
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/DataUsageSummary;->n(Z)V

    .line 942
    return-void
.end method

.method private e(J)V
    .locals 3

    .prologue
    .line 946
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gj:Lcom/android/settings_ext/b/f;

    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->gf:Landroid/net/NetworkTemplate;

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/settings_ext/b/f;->b(Landroid/net/NetworkTemplate;J)V

    .line 947
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/DataUsageSummary;->n(Z)V

    .line 948
    return-void
.end method

.method public static e(Landroid/content/Context;)Z
    .locals 6

    .prologue
    const/4 v0, 0x0

    .line 2339
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v1

    .line 2340
    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v2

    .line 2343
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()J

    move-result-wide v4

    .line 2346
    invoke-static {v4, v5}, Lcom/android/settings_ext/fk;->getSlotId(J)I

    move-result v3

    .line 2347
    invoke-virtual {v1, v0}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v2, v3}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method static synthetic e(Lcom/android/settings_ext/DataUsageSummary;)Z
    .locals 1

    .prologue
    .line 157
    iget-boolean v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gr:Z

    return v0
.end method

.method static synthetic f(Lcom/android/settings_ext/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fG:Landroid/widget/Switch;

    return-object v0
.end method

.method private static f(Landroid/content/Intent;)Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2253
    const-string v0, "android.net.NETWORK_TEMPLATE"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkTemplate;

    .line 2254
    if-nez v0, :cond_0

    move-object v0, v1

    .line 2266
    :goto_0
    return-object v0

    .line 2256
    :cond_0
    invoke-virtual {v0}, Landroid/net/NetworkTemplate;->getMatchRule()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    move-object v0, v1

    .line 2266
    goto :goto_0

    .line 2258
    :pswitch_0
    const-string v0, "3g"

    goto :goto_0

    .line 2260
    :pswitch_1
    const-string v0, "4g"

    goto :goto_0

    .line 2262
    :pswitch_2
    const-string v0, "mobile"

    goto :goto_0

    .line 2264
    :pswitch_3
    const-string v0, "wifi"

    goto :goto_0

    .line 2256
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public static f(Landroid/content/Context;)Z
    .locals 1

    .prologue
    .line 2356
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic g(Lcom/android/settings_ext/DataUsageSummary;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gk:Ljava/lang/String;

    return-object v0
.end method

.method public static g(Landroid/content/Context;)Z
    .locals 2

    .prologue
    .line 2379
    invoke-static {p0}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2380
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v0

    return v0
.end method

.method static synthetic h(Lcom/android/settings_ext/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fJ:Landroid/widget/Switch;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings_ext/DataUsageSummary;)Landroid/widget/Switch;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gb:Landroid/widget/Switch;

    return-object v0
.end method

.method private isBandwidthControlEnabled()Z
    .locals 4

    .prologue
    .line 1000
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fr:Landroid/os/INetworkManagementService;

    invoke-interface {v0}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 1003
    :goto_0
    return v0

    .line 1001
    :catch_0
    move-exception v0

    .line 1002
    const-string v1, "DataUsage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "problem talking with INetworkManagementService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1003
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic j(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/b/j;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gs:Lcom/android/settings_ext/b/j;

    return-object v0
.end method

.method static synthetic k(Lcom/android/settings_ext/DataUsageSummary;)Landroid/widget/Spinner;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fM:Landroid/widget/Spinner;

    return-object v0
.end method

.method static synthetic l(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/widget/ChartDataUsageView;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fP:Lcom/android/settings_ext/widget/ChartDataUsageView;

    return-object v0
.end method

.method private l(Z)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 975
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gk:Ljava/lang/String;

    const-string v2, "SIM"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 976
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bj()I

    move-result v2

    .line 979
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mobile_data"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v3, v4, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 985
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-static {v2}, Lcom/android/settings_ext/fk;->T(I)J

    move-result-wide v2

    invoke-static {v0, v2, v3, p1}, Lcom/android/settings_ext/bO;->a(Landroid/telephony/TelephonyManager;JZ)V

    .line 990
    :goto_1
    invoke-direct {p0, v1}, Lcom/android/settings_ext/DataUsageSummary;->n(Z)V

    .line 991
    return-void

    :cond_0
    move v0, v1

    .line 979
    goto :goto_0

    .line 987
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    invoke-virtual {v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(Z)V

    .line 988
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gv:Ljava/lang/Boolean;

    goto :goto_1
.end method

.method private static m(I)Ljava/lang/String;
    .locals 1

    .prologue
    .line 1395
    invoke-static {p0}, Lcom/android/settings_ext/fk;->m(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic m(Lcom/android/settings_ext/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bh()V

    return-void
.end method

.method private m(Z)V
    .locals 3

    .prologue
    .line 1020
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gh:Lcom/android/settings_ext/DataUsageSummary$AppItem;

    iget v1, v0, Lcom/android/settings_ext/DataUsageSummary$AppItem;->key:I

    .line 1021
    iget-object v2, p0, Lcom/android/settings_ext/DataUsageSummary;->ft:Landroid/net/NetworkPolicyManager;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v1, v0}, Landroid/net/NetworkPolicyManager;->setUidPolicy(II)V

    .line 1023
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gb:Landroid/widget/Switch;

    invoke-virtual {v0, p1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1024
    return-void

    .line 1021
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static synthetic n(Lcom/android/settings_ext/DataUsageSummary;)Landroid/net/INetworkStatsSession;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fu:Landroid/net/INetworkStatsSession;

    return-object v0
.end method

.method private n(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2571
    if-gtz p1, :cond_0

    .line 2572
    const-string v0, ""

    .line 2574
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SIM"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private n(Z)V
    .locals 12

    .prologue
    const/16 v4, 0x8

    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1031
    iget-boolean v2, p0, Lcom/android/settings_ext/DataUsageSummary;->fF:Z

    .line 1032
    iget-boolean v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fI:Z

    .line 1034
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bd()Z

    move-result v5

    if-eqz v5, :cond_0

    move v0, v1

    move v2, v1

    .line 1040
    :cond_0
    const-string v5, "mobile"

    iget-object v6, p0, Lcom/android/settings_ext/DataUsageSummary;->gk:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/android/settings_ext/DataUsageSummary;->gk:Ljava/lang/String;

    const-string v6, "SIM"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1041
    :cond_1
    iput-boolean v3, p0, Lcom/android/settings_ext/DataUsageSummary;->gr:Z

    .line 1042
    iget-object v5, p0, Lcom/android/settings_ext/DataUsageSummary;->fG:Landroid/widget/Switch;

    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bf()Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1043
    iput-boolean v1, p0, Lcom/android/settings_ext/DataUsageSummary;->gr:Z

    .line 1046
    :cond_2
    iget-object v5, p0, Lcom/android/settings_ext/DataUsageSummary;->gj:Lcom/android/settings_ext/b/f;

    iget-object v6, p0, Lcom/android/settings_ext/DataUsageSummary;->gf:Landroid/net/NetworkTemplate;

    invoke-virtual {v5, v6}, Lcom/android/settings_ext/b/f;->b(Landroid/net/NetworkTemplate;)Landroid/net/NetworkPolicy;

    move-result-object v5

    .line 1047
    invoke-direct {p0, v5}, Lcom/android/settings_ext/DataUsageSummary;->a(Landroid/net/NetworkPolicy;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 1048
    iget-object v6, p0, Lcom/android/settings_ext/DataUsageSummary;->fJ:Landroid/widget/Switch;

    if-eqz v5, :cond_5

    iget-wide v8, v5, Landroid/net/NetworkPolicy;->limitBytes:J

    const-wide/16 v10, -0x1

    cmp-long v7, v8, v10

    if-eqz v7, :cond_5

    :goto_0
    invoke-virtual {v6, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 1049
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bd()Z

    move-result v3

    if-nez v3, :cond_3

    .line 1050
    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->fP:Lcom/android/settings_ext/widget/ChartDataUsageView;

    invoke-virtual {v3, v5}, Lcom/android/settings_ext/widget/ChartDataUsageView;->c(Landroid/net/NetworkPolicy;)V

    .line 1059
    :cond_3
    :goto_1
    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->fH:Landroid/view/View;

    if-eqz v2, :cond_7

    move v2, v1

    :goto_2
    invoke-virtual {v3, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1060
    iget-object v2, p0, Lcom/android/settings_ext/DataUsageSummary;->fK:Landroid/view/View;

    if-eqz v0, :cond_8

    :goto_3
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1062
    if-eqz p1, :cond_4

    .line 1064
    invoke-direct {p0, v5}, Lcom/android/settings_ext/DataUsageSummary;->b(Landroid/net/NetworkPolicy;)V

    .line 1066
    :cond_4
    return-void

    :cond_5
    move v3, v1

    .line 1048
    goto :goto_0

    .line 1056
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fP:Lcom/android/settings_ext/widget/ChartDataUsageView;

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/settings_ext/widget/ChartDataUsageView;->c(Landroid/net/NetworkPolicy;)V

    move v0, v1

    goto :goto_1

    :cond_7
    move v2, v4

    .line 1059
    goto :goto_2

    :cond_8
    move v1, v4

    .line 1060
    goto :goto_3
.end method

.method static synthetic o(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/b/a;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gg:Lcom/android/settings_ext/b/a;

    return-object v0
.end method

.method private o(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 2580
    if-gtz p1, :cond_0

    .line 2581
    const-string v0, ""

    .line 2583
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f090869

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/DataUsageSummary;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic p(Lcom/android/settings_ext/DataUsageSummary;)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->be()V

    return-void
.end method

.method static synthetic q(Lcom/android/settings_ext/DataUsageSummary;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fz:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic r(Lcom/android/settings_ext/DataUsageSummary;)Landroid/net/NetworkPolicyManager;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->ft:Landroid/net/NetworkPolicyManager;

    return-object v0
.end method

.method static synthetic s(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/bs;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fA:Lcom/android/settings_ext/bs;

    return-object v0
.end method

.method static synthetic t(Lcom/android/settings_ext/DataUsageSummary;)Z
    .locals 1

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bd()Z

    move-result v0

    return v0
.end method

.method static synthetic u(Lcom/android/settings_ext/DataUsageSummary;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fR:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic v(Lcom/android/settings_ext/DataUsageSummary;)Landroid/view/View;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fS:Landroid/view/View;

    return-object v0
.end method

.method static synthetic w(Lcom/android/settings_ext/DataUsageSummary;)Landroid/net/NetworkTemplate;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gf:Landroid/net/NetworkTemplate;

    return-object v0
.end method

.method static synthetic x(Lcom/android/settings_ext/DataUsageSummary;)Lcom/android/settings_ext/b/f;
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gj:Lcom/android/settings_ext/b/f;

    return-object v0
.end method


# virtual methods
.method public h(Landroid/content/Context;)Z
    .locals 9

    .prologue
    const-wide/16 v6, 0x0

    .line 2391
    invoke-static {p1}, Landroid/net/ConnectivityManager;->from(Landroid/content/Context;)Landroid/net/ConnectivityManager;

    move-result-object v0

    .line 2392
    const/16 v1, 0x9

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->isNetworkSupported(I)Z

    move-result v8

    .line 2395
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fu:Landroid/net/INetworkStatsSession;

    if-eqz v0, :cond_0

    .line 2397
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fu:Landroid/net/INetworkStatsSession;

    invoke-static {}, Landroid/net/NetworkTemplate;->buildTemplateEthernet()Landroid/net/NetworkTemplate;

    move-result-object v1

    const-wide/high16 v2, -0x8000000000000000L

    const-wide v4, 0x7fffffffffffffffL

    invoke-interface/range {v0 .. v5}, Landroid/net/INetworkStatsSession;->getSummaryForNetwork(Landroid/net/NetworkTemplate;JJ)Landroid/net/NetworkStats;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkStats;->getTotalBytes()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 2408
    :goto_0
    if-eqz v8, :cond_1

    cmp-long v0, v0, v6

    if-lez v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    return v0

    .line 2400
    :catch_0
    move-exception v0

    .line 2401
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :cond_0
    move-wide v0, v6

    .line 2404
    goto :goto_0

    .line 2408
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 277
    invoke-super {p0, p1}, Lcom/android/settings_ext/HighlightingFragment;->onCreate(Landroid/os/Bundle;)V

    .line 278
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    .line 280
    const-string v1, "network_management"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/os/INetworkManagementService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/INetworkManagementService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fr:Landroid/os/INetworkManagementService;

    .line 282
    const-string v1, "netstats"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    invoke-static {v1}, Landroid/net/INetworkStatsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/INetworkStatsService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fs:Landroid/net/INetworkStatsService;

    .line 284
    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->from(Landroid/content/Context;)Landroid/net/NetworkPolicyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->ft:Landroid/net/NetworkPolicyManager;

    .line 285
    invoke-static {v0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->mTelephonyManager:Landroid/telephony/TelephonyManager;

    .line 287
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "data_usage"

    invoke-virtual {v1, v2, v3}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fv:Landroid/content/SharedPreferences;

    .line 289
    new-instance v1, Lcom/android/settings_ext/b/f;

    iget-object v2, p0, Lcom/android/settings_ext/DataUsageSummary;->ft:Landroid/net/NetworkPolicyManager;

    invoke-direct {v1, v2}, Lcom/android/settings_ext/b/f;-><init>(Landroid/net/NetworkPolicyManager;)V

    iput-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->gj:Lcom/android/settings_ext/b/f;

    .line 290
    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->gj:Lcom/android/settings_ext/b/f;

    invoke-virtual {v1}, Lcom/android/settings_ext/b/f;->read()V

    .line 293
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fr:Landroid/os/INetworkManagementService;

    invoke-interface {v1}, Landroid/os/INetworkManagementService;->isBandwidthControlEnabled()Z

    move-result v1

    if-nez v1, :cond_0

    .line 294
    const-string v1, "DataUsage"

    const-string v2, "No bandwidth control; leaving"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 295
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 303
    :cond_0
    :goto_0
    :try_start_1
    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fs:Landroid/net/INetworkStatsService;

    invoke-interface {v1}, Landroid/net/INetworkStatsService;->openSession()Landroid/net/INetworkStatsSession;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fu:Landroid/net/INetworkStatsSession;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 308
    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fv:Landroid/content/SharedPreferences;

    const-string v2, "show_wifi"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ext/DataUsageSummary;->gd:Z

    .line 309
    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fv:Landroid/content/SharedPreferences;

    const-string v2, "show_ethernet"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/settings_ext/DataUsageSummary;->ge:Z

    .line 312
    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->e(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 313
    iput-boolean v4, p0, Lcom/android/settings_ext/DataUsageSummary;->gd:Z

    .line 314
    iput-boolean v4, p0, Lcom/android/settings_ext/DataUsageSummary;->ge:Z

    .line 317
    :cond_1
    invoke-virtual {p0, v4}, Lcom/android/settings_ext/DataUsageSummary;->setHasOptionsMenu(Z)V

    .line 318
    return-void

    .line 297
    :catch_0
    move-exception v1

    .line 298
    const-string v1, "DataUsage"

    const-string v2, "No bandwidth control; leaving"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 304
    :catch_1
    move-exception v0

    .line 305
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 483
    const v0, 0x7f110001

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 484
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/high16 v7, 0x7f100000

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 324
    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 325
    const v0, 0x7f040047

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 327
    new-instance v0, Lcom/android/settings_ext/b/j;

    invoke-direct {v0, v1}, Lcom/android/settings_ext/b/j;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gs:Lcom/android/settings_ext/b/j;

    .line 329
    const v0, 0x1020012

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost;

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fw:Landroid/widget/TabHost;

    .line 330
    const v0, 0x7f100098

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fx:Landroid/view/ViewGroup;

    .line 331
    const v0, 0x1020013

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fy:Landroid/widget/TabWidget;

    .line 332
    const v0, 0x102000a

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fz:Landroid/widget/ListView;

    .line 336
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fz:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getScrollBarStyle()I

    move-result v0

    const/high16 v3, 0x2000000

    if-ne v0, v3, :cond_0

    .line 338
    :cond_0
    iput v5, p0, Lcom/android/settings_ext/DataUsageSummary;->fB:I

    .line 341
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fz:Landroid/widget/ListView;

    invoke-static {p2, v2, v0, v5}, Lcom/android/settings_ext/hl;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 343
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fw:Landroid/widget/TabHost;

    invoke-virtual {v0}, Landroid/widget/TabHost;->setup()V

    .line 344
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fw:Landroid/widget/TabHost;

    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->gu:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {v0, v3}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 346
    const v0, 0x7f040045

    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->fz:Landroid/widget/ListView;

    invoke-virtual {p1, v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fC:Landroid/view/ViewGroup;

    .line 347
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fC:Landroid/view/ViewGroup;

    invoke-virtual {v0, v6}, Landroid/view/ViewGroup;->setClickable(Z)V

    .line 349
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fz:Landroid/widget/ListView;

    new-instance v3, Landroid/view/View;

    invoke-direct {v3, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3, v8, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 350
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fz:Landroid/widget/ListView;

    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->fC:Landroid/view/ViewGroup;

    invoke-virtual {v0, v3, v8, v6}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 351
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fz:Landroid/widget/ListView;

    invoke-virtual {v0, v6}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 353
    iget v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fB:I

    if-lez v0, :cond_1

    .line 355
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fz:Landroid/widget/ListView;

    iget v3, p0, Lcom/android/settings_ext/DataUsageSummary;->fB:I

    invoke-static {v0, v3}, Lcom/android/settings_ext/DataUsageSummary;->a(Landroid/widget/ListView;I)V

    .line 356
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fC:Landroid/view/ViewGroup;

    iget v3, p0, Lcom/android/settings_ext/DataUsageSummary;->fB:I

    iget v4, p0, Lcom/android/settings_ext/DataUsageSummary;->fB:I

    invoke-virtual {v0, v3, v5, v4, v5}, Landroid/view/ViewGroup;->setPaddingRelative(IIII)V

    .line 361
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fC:Landroid/view/ViewGroup;

    const v3, 0x7f100094

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fD:Landroid/view/ViewGroup;

    .line 363
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fC:Landroid/view/ViewGroup;

    const v3, 0x7f100095

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fE:Landroid/widget/LinearLayout;

    .line 365
    new-instance v0, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fG:Landroid/widget/Switch;

    .line 366
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fG:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setClickable(Z)V

    .line 367
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fG:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 368
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fE:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->fG:Landroid/widget/Switch;

    invoke-static {p1, v0, v3}, Lcom/android/settings_ext/DataUsageSummary;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fH:Landroid/view/View;

    .line 369
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fH:Landroid/view/View;

    const-string v3, "data_usage_enable_mobile"

    invoke-virtual {v0, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 371
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fH:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 372
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fH:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 373
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fH:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->gw:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 374
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fE:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->fH:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 376
    new-instance v0, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fJ:Landroid/widget/Switch;

    .line 377
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fJ:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setClickable(Z)V

    .line 378
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fJ:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 379
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fE:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->fJ:Landroid/widget/Switch;

    invoke-static {p1, v0, v3}, Lcom/android/settings_ext/DataUsageSummary;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fK:Landroid/view/View;

    .line 380
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fK:Landroid/view/View;

    const-string v3, "data_usage_disable_mobile_limit"

    invoke-virtual {v0, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 382
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fK:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 383
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fK:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 384
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fK:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->gx:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 385
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fE:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->fK:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 387
    const v0, 0x7f040043

    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->fE:Landroid/widget/LinearLayout;

    invoke-virtual {p1, v0, v3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fL:Landroid/view/View;

    .line 388
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fL:Landroid/view/View;

    const-string v3, "data_usage_cycle"

    invoke-virtual {v0, v7, v3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 389
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fL:Landroid/view/View;

    const v3, 0x7f10008d

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fM:Landroid/widget/Spinner;

    .line 390
    new-instance v0, Lcom/android/settings_ext/bo;

    invoke-direct {v0, v1}, Lcom/android/settings_ext/bo;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fN:Lcom/android/settings_ext/bo;

    .line 391
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fM:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->fN:Lcom/android/settings_ext/bo;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 392
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fM:Landroid/widget/Spinner;

    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->gA:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 393
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fL:Landroid/view/View;

    const v3, 0x7f10008e

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fO:Landroid/widget/TextView;

    .line 394
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fE:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->fL:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 397
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fC:Landroid/view/ViewGroup;

    const v3, 0x7f100086

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/widget/ChartDataUsageView;

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fP:Lcom/android/settings_ext/widget/ChartDataUsageView;

    .line 398
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fP:Lcom/android/settings_ext/widget/ChartDataUsageView;

    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->gD:Lcom/android/settings_ext/widget/e;

    invoke-virtual {v0, v3}, Lcom/android/settings_ext/widget/ChartDataUsageView;->a(Lcom/android/settings_ext/widget/e;)V

    .line 399
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fP:Lcom/android/settings_ext/widget/ChartDataUsageView;

    invoke-virtual {v0, v8}, Lcom/android/settings_ext/widget/ChartDataUsageView;->c(Landroid/net/NetworkPolicy;)V

    .line 403
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fC:Landroid/view/ViewGroup;

    const v3, 0x7f10008f

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fT:Landroid/view/View;

    .line 404
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fT:Landroid/view/View;

    const v3, 0x7f100013

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fU:Landroid/widget/ImageView;

    .line 405
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fT:Landroid/view/View;

    const v3, 0x7f100090

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fV:Landroid/view/ViewGroup;

    .line 406
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fT:Landroid/view/View;

    const v3, 0x7f100091

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fX:Landroid/widget/TextView;

    .line 407
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fT:Landroid/view/View;

    const v3, 0x7f100092

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fY:Landroid/widget/TextView;

    .line 408
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fT:Landroid/view/View;

    const v3, 0x7f100093

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->ga:Landroid/widget/LinearLayout;

    .line 410
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fT:Landroid/view/View;

    const v3, 0x7f100015

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fZ:Landroid/widget/Button;

    .line 412
    new-instance v0, Landroid/widget/Switch;

    invoke-virtual {p1}, Landroid/view/LayoutInflater;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v0, v3}, Landroid/widget/Switch;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gb:Landroid/widget/Switch;

    .line 413
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gb:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setClickable(Z)V

    .line 414
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gb:Landroid/widget/Switch;

    invoke-virtual {v0, v5}, Landroid/widget/Switch;->setFocusable(Z)V

    .line 415
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->ga:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->gb:Landroid/widget/Switch;

    invoke-static {p1, v0, v3}, Lcom/android/settings_ext/DataUsageSummary;->a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gc:Landroid/view/View;

    .line 416
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gc:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setClickable(Z)V

    .line 417
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gc:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setFocusable(Z)V

    .line 418
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gc:Landroid/view/View;

    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->gy:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->ga:Landroid/widget/LinearLayout;

    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->gc:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 422
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fC:Landroid/view/ViewGroup;

    const v3, 0x7f100096

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fQ:Landroid/view/View;

    .line 423
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fC:Landroid/view/ViewGroup;

    const v3, 0x1020004

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fR:Landroid/widget/TextView;

    .line 424
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fC:Landroid/view/ViewGroup;

    const v3, 0x7f100097

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fS:Landroid/view/View;

    .line 426
    const-string v0, "user"

    invoke-virtual {v1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 427
    new-instance v1, Lcom/android/settings_ext/bs;

    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->gs:Lcom/android/settings_ext/b/j;

    iget v4, p0, Lcom/android/settings_ext/DataUsageSummary;->fB:I

    invoke-direct {v1, v0, v3, v4}, Lcom/android/settings_ext/bs;-><init>(Landroid/os/UserManager;Lcom/android/settings_ext/b/j;I)V

    iput-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fA:Lcom/android/settings_ext/bs;

    .line 428
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->gz:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 429
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fA:Lcom/android/settings_ext/bs;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 431
    return-object v2
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 618
    iput-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fH:Landroid/view/View;

    .line 619
    iput-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->fK:Landroid/view/View;

    .line 621
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gs:Lcom/android/settings_ext/b/j;

    invoke-virtual {v0}, Lcom/android/settings_ext/b/j;->clearCache()V

    .line 622
    iput-object v1, p0, Lcom/android/settings_ext/DataUsageSummary;->gs:Lcom/android/settings_ext/b/j;

    .line 624
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fu:Landroid/net/INetworkStatsSession;

    invoke-static {v0}, Landroid/net/TrafficStats;->closeQuietly(Landroid/net/INetworkStatsSession;)V

    .line 626
    invoke-super {p0}, Lcom/android/settings_ext/HighlightingFragment;->onDestroy()V

    .line 627
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    .line 558
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    move v7, v6

    .line 613
    :goto_0
    :sswitch_0
    return v7

    .line 560
    :sswitch_1
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->ft:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0}, Landroid/net/NetworkPolicyManager;->getRestrictBackground()Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v7

    .line 561
    :goto_1
    if-eqz v0, :cond_1

    .line 562
    invoke-static {p0}, Lcom/android/settings_ext/DataUsageSummary$ConfirmRestrictFragment;->y(Lcom/android/settings_ext/DataUsageSummary;)V

    goto :goto_0

    :cond_0
    move v0, v6

    .line 560
    goto :goto_1

    .line 565
    :cond_1
    invoke-virtual {p0, v6}, Lcom/android/settings_ext/DataUsageSummary;->setRestrictBackground(Z)V

    goto :goto_0

    .line 570
    :sswitch_2
    iget-boolean v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gd:Z

    if-nez v0, :cond_2

    move v6, v7

    :cond_2
    iput-boolean v6, p0, Lcom/android/settings_ext/DataUsageSummary;->gd:Z

    .line 571
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fv:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_wifi"

    iget-boolean v2, p0, Lcom/android/settings_ext/DataUsageSummary;->gd:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 572
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->aY()V

    .line 573
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bb()V

    goto :goto_0

    .line 577
    :sswitch_3
    iget-boolean v0, p0, Lcom/android/settings_ext/DataUsageSummary;->ge:Z

    if-nez v0, :cond_3

    move v6, v7

    :cond_3
    iput-boolean v6, p0, Lcom/android/settings_ext/DataUsageSummary;->ge:Z

    .line 578
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->fv:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "show_ethernet"

    iget-boolean v2, p0, Lcom/android/settings_ext/DataUsageSummary;->ge:Z

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 579
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->aY()V

    .line 580
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bb()V

    goto :goto_0

    .line 588
    :sswitch_4
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 589
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-le v1, v7, :cond_4

    .line 590
    const-string v1, "com.android.phone"

    const-string v2, "com.android.phone.SelectSubscription"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 592
    const-string v1, "PACKAGE"

    const-string v2, "com.android.phone"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 594
    const-string v1, "TARGET_CLASS"

    const-string v2, "com.android.phone.MSimMobileNetworkSubSettings"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    :goto_2
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DataUsageSummary;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    .line 597
    :cond_4
    new-instance v1, Landroid/content/ComponentName;

    const-string v2, "com.android.phone"

    const-string v3, "com.android.phone.MobileNetworkSettings"

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    goto :goto_2

    .line 607
    :sswitch_5
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings_ext/b/c;

    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09088f

    move-object v4, v2

    move-object v5, p0

    invoke-static/range {v0 .. v6}, Lcom/android/settings_ext/eK;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    goto/16 :goto_0

    .line 558
    :sswitch_data_0
    .sparse-switch
        0x7f1001e1 -> :sswitch_5
        0x7f100396 -> :sswitch_1
        0x7f100397 -> :sswitch_2
        0x7f100398 -> :sswitch_3
        0x7f100399 -> :sswitch_0
        0x7f10039a -> :sswitch_4
    .end sparse-switch
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 7

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 488
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v4

    .line 489
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bd()Z

    move-result v5

    .line 490
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    .line 492
    :goto_0
    const v3, 0x7f100397

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->gn:Landroid/view/MenuItem;

    .line 493
    invoke-static {v4}, Lcom/android/settings_ext/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-static {v4}, Lcom/android/settings_ext/DataUsageSummary;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 494
    iget-object v6, p0, Lcom/android/settings_ext/DataUsageSummary;->gn:Landroid/view/MenuItem;

    if-nez v5, :cond_2

    move v3, v1

    :goto_1
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 499
    :goto_2
    const v3, 0x7f100398

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->go:Landroid/view/MenuItem;

    .line 500
    invoke-virtual {p0, v4}, Lcom/android/settings_ext/DataUsageSummary;->h(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-static {v4}, Lcom/android/settings_ext/DataUsageSummary;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 501
    iget-object v6, p0, Lcom/android/settings_ext/DataUsageSummary;->go:Landroid/view/MenuItem;

    if-nez v5, :cond_4

    move v3, v1

    :goto_3
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 506
    :goto_4
    const v3, 0x7f100396

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->gm:Landroid/view/MenuItem;

    .line 507
    iget-object v6, p0, Lcom/android/settings_ext/DataUsageSummary;->gm:Landroid/view/MenuItem;

    invoke-static {v4}, Lcom/android/settings_ext/DataUsageSummary;->e(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-eqz v0, :cond_6

    if-nez v5, :cond_6

    move v3, v1

    :goto_5
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 510
    const v3, 0x7f1001e1

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v6

    .line 511
    invoke-static {v4}, Lcom/android/settings_ext/DataUsageSummary;->e(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-static {v4}, Lcom/android/settings_ext/DataUsageSummary;->g(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 512
    :cond_0
    if-nez v5, :cond_7

    move v3, v1

    :goto_6
    invoke-interface {v6, v3}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 518
    :goto_7
    const v3, 0x7f100399

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->gp:Landroid/view/MenuItem;

    .line 519
    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->gp:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 521
    const v3, 0x7f10039a

    invoke-interface {p1, v3}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v3

    iput-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->gq:Landroid/view/MenuItem;

    .line 522
    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->gq:Landroid/view/MenuItem;

    invoke-static {v4}, Lcom/android/settings_ext/DataUsageSummary;->e(Landroid/content/Context;)Z

    move-result v6

    if-eqz v6, :cond_9

    if-nez v5, :cond_9

    if-eqz v0, :cond_9

    :goto_8
    invoke-interface {v3, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 525
    const v0, 0x7f10039b

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 527
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090937

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 528
    invoke-static {v4, v0, v1}, Lcom/android/settings_ext/cF;->a(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 533
    :goto_9
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->aY()V

    .line 534
    return-void

    :cond_1
    move v0, v2

    .line 490
    goto/16 :goto_0

    :cond_2
    move v3, v2

    .line 494
    goto/16 :goto_1

    .line 496
    :cond_3
    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->gn:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_2

    :cond_4
    move v3, v2

    .line 501
    goto/16 :goto_3

    .line 503
    :cond_5
    iget-object v3, p0, Lcom/android/settings_ext/DataUsageSummary;->go:Landroid/view/MenuItem;

    invoke-interface {v3, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto/16 :goto_4

    :cond_6
    move v3, v2

    .line 507
    goto :goto_5

    :cond_7
    move v3, v2

    .line 512
    goto :goto_6

    .line 514
    :cond_8
    invoke-interface {v6, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_7

    :cond_9
    move v1, v2

    .line 522
    goto :goto_8

    .line 530
    :cond_a
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    goto :goto_9
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 449
    invoke-super {p0}, Lcom/android/settings_ext/HighlightingFragment;->onResume()V

    .line 451
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getView()Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/android/settings_ext/aV;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/aV;-><init>(Lcom/android/settings_ext/DataUsageSummary;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 459
    new-instance v0, Lcom/android/settings_ext/bb;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/bb;-><init>(Lcom/android/settings_ext/DataUsageSummary;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ext/bb;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 479
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 436
    invoke-super {p0, p1}, Lcom/android/settings_ext/HighlightingFragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 439
    invoke-virtual {p0}, Lcom/android/settings_ext/DataUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 440
    invoke-static {v0}, Lcom/android/settings_ext/DataUsageSummary;->f(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->gl:Ljava/lang/String;

    .line 444
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->bb()V

    .line 445
    return-void
.end method

.method public setRestrictBackground(Z)V
    .locals 1

    .prologue
    .line 1008
    iget-object v0, p0, Lcom/android/settings_ext/DataUsageSummary;->ft:Landroid/net/NetworkPolicyManager;

    invoke-virtual {v0, p1}, Landroid/net/NetworkPolicyManager;->setRestrictBackground(Z)V

    .line 1009
    invoke-direct {p0}, Lcom/android/settings_ext/DataUsageSummary;->aY()V

    .line 1010
    return-void
.end method
