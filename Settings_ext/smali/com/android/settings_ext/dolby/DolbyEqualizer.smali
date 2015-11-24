.class public Lcom/android/settings_ext/dolby/DolbyEqualizer;
.super Landroid/app/Activity;
.source "DolbyEqualizer.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lcom/android/settings_ext/hn;


# static fields
.field static final TAG:Ljava/lang/String;

.field private static final XJ:[I

.field private static final XK:I

.field private static final XL:[I

.field private static final XM:[I

.field private static final XN:I

.field private static final XO:[F


# instance fields
.field private XF:Landroid/dolby/DsClient;

.field private final XG:Landroid/dolby/IDsClientEvents;

.field final XP:[Lcom/android/settings_ext/VerticalSeekBar;

.field private XQ:Lcom/android/settings_ext/EqualizerView;

.field private XR:Landroid/widget/TextView;

.field private XS:[Ljava/lang/String;

.field private final XT:Landroid/content/DialogInterface$OnClickListener;

.field private mn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/16 v6, 0xe

    const/16 v5, 0xa

    const/4 v4, 0x4

    const/4 v3, 0x7

    .line 28
    const-class v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->TAG:Ljava/lang/String;

    .line 30
    new-array v0, v3, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XJ:[I

    .line 40
    sget-object v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XJ:[I

    array-length v0, v0

    sput v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XK:I

    .line 46
    new-array v0, v3, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XL:[I

    .line 47
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XM:[I

    .line 54
    sget-object v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XM:[I

    array-length v0, v0

    sput v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XN:I

    .line 55
    sget v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XN:I

    new-array v0, v0, [F

    sput-object v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XO:[F

    .line 58
    sget-object v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XO:[F

    const/4 v1, 0x2

    const/4 v2, 0x2

    invoke-static {v7, v2, v4}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->b(III)F

    move-result v2

    aput v2, v0, v1

    .line 59
    sget-object v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XO:[F

    const/4 v1, 0x3

    const/4 v2, 0x3

    invoke-static {v7, v2, v4}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->b(III)F

    move-result v2

    aput v2, v0, v1

    .line 61
    sget-object v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XO:[F

    const/4 v1, 0x5

    const/4 v2, 0x5

    invoke-static {v4, v2, v3}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->b(III)F

    move-result v2

    aput v2, v0, v1

    .line 62
    sget-object v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XO:[F

    const/4 v1, 0x6

    const/4 v2, 0x6

    invoke-static {v4, v2, v3}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->b(III)F

    move-result v2

    aput v2, v0, v1

    .line 64
    sget-object v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XO:[F

    const/16 v1, 0x8

    const/16 v2, 0x8

    invoke-static {v3, v2, v5}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->b(III)F

    move-result v2

    aput v2, v0, v1

    .line 65
    sget-object v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XO:[F

    const/16 v1, 0x9

    const/16 v2, 0x9

    invoke-static {v3, v2, v5}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->b(III)F

    move-result v2

    aput v2, v0, v1

    .line 67
    sget-object v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XO:[F

    const/16 v1, 0xb

    const/16 v2, 0xb

    const/16 v3, 0xc

    invoke-static {v5, v2, v3}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->b(III)F

    move-result v2

    aput v2, v0, v1

    .line 69
    sget-object v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XO:[F

    const/16 v1, 0xd

    const/16 v2, 0xc

    const/16 v3, 0xd

    invoke-static {v2, v3, v6}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->b(III)F

    move-result v2

    aput v2, v0, v1

    .line 71
    sget-object v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XO:[F

    const/16 v1, 0xf

    const/16 v2, 0xf

    const/16 v3, 0x11

    invoke-static {v6, v2, v3}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->b(III)F

    move-result v2

    aput v2, v0, v1

    .line 72
    sget-object v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XO:[F

    const/16 v1, 0x10

    const/16 v2, 0x10

    const/16 v3, 0x11

    invoke-static {v6, v2, v3}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->b(III)F

    move-result v2

    aput v2, v0, v1

    .line 73
    return-void

    .line 30
    nop

    :array_0
    .array-data 4
        0x7f100152
        0x7f100153
        0x7f100154
        0x7f100155
        0x7f100156
        0x7f100157
        0x7f100158
    .end array-data

    .line 46
    :array_1
    .array-data 4
        0x1
        0x4
        0x7
        0xa
        0xc
        0xe
        0x11
    .end array-data

    .line 47
    :array_2
    .array-data 4
        0x2e
        0x8c
        0xea
        0x148
        0x1d4
        0x292
        0x34b
        0x407
        0x520
        0x697
        0x8ca
        0xbb8
        0xea6
        0x124f
        0x16b4
        0x1bd5
        0x2328
        0x2af8
        0x36b0
        0x4e20
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 108
    sget v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XK:I

    new-array v0, v0, [Lcom/android/settings_ext/VerticalSeekBar;

    iput-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XP:[Lcom/android/settings_ext/VerticalSeekBar;

    .line 290
    new-instance v0, Lcom/android/settings_ext/dolby/DolbyEqualizer$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer$1;-><init>(Lcom/android/settings_ext/dolby/DolbyEqualizer;)V

    iput-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XT:Landroid/content/DialogInterface$OnClickListener;

    .line 361
    new-instance v0, Lcom/android/settings_ext/dolby/DolbyEqualizer$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer$2;-><init>(Lcom/android/settings_ext/dolby/DolbyEqualizer;)V

    iput-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XG:Landroid/dolby/IDsClientEvents;

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/dolby/DolbyEqualizer;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->pg()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/dolby/DolbyEqualizer;Z)Z
    .locals 0

    .prologue
    .line 26
    iput-boolean p1, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->mn:Z

    return p1
.end method

.method private static b(III)F
    .locals 6

    .prologue
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    .line 76
    sget-object v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XM:[I

    aget v0, v0, p1

    int-to-double v0, v0

    mul-double/2addr v0, v4

    sget-object v2, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XM:[I

    aget v2, v2, p0

    int-to-double v2, v2

    div-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D

    move-result-wide v0

    sget-object v2, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XM:[I

    aget v2, v2, p2

    int-to-double v2, v2

    mul-double/2addr v2, v4

    sget-object v4, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XM:[I

    aget v4, v4, p0

    int-to-double v4, v4

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->log(D)D

    move-result-wide v2

    div-double/2addr v0, v2

    double-to-float v0, v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings_ext/dolby/DolbyEqualizer;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->pf()V

    return-void
.end method

.method private b([F)[F
    .locals 11

    .prologue
    const/16 v10, 0xa

    const/16 v9, 0xe

    const/4 v8, 0x1

    const/4 v7, 0x7

    const/4 v6, 0x4

    .line 80
    sget v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XN:I

    new-array v0, v0, [F

    .line 82
    const/4 v1, 0x0

    const/4 v2, 0x0

    aget v2, p1, v2

    aput v2, v0, v8

    aput v2, v0, v1

    .line 83
    aget v1, p1, v8

    aput v1, v0, v6

    .line 84
    const/4 v1, 0x2

    aget v1, p1, v1

    aput v1, v0, v7

    .line 85
    const/4 v1, 0x3

    aget v1, p1, v1

    aput v1, v0, v10

    .line 86
    const/16 v1, 0xc

    aget v2, p1, v6

    aput v2, v0, v1

    .line 87
    const/4 v1, 0x5

    aget v1, p1, v1

    aput v1, v0, v9

    .line 88
    const/16 v1, 0x11

    const/16 v2, 0x12

    const/16 v3, 0x13

    const/4 v4, 0x6

    aget v4, p1, v4

    aput v4, v0, v3

    aput v4, v0, v2

    aput v4, v0, v1

    .line 90
    const/4 v1, 0x2

    aget v2, v0, v8

    aget v3, v0, v6

    aget v4, v0, v8

    sub-float/2addr v3, v4

    sget-object v4, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XO:[F

    const/4 v5, 0x2

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 91
    const/4 v1, 0x3

    aget v2, v0, v8

    aget v3, v0, v6

    aget v4, v0, v8

    sub-float/2addr v3, v4

    sget-object v4, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XO:[F

    const/4 v5, 0x3

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 93
    const/4 v1, 0x5

    aget v2, v0, v6

    aget v3, v0, v7

    aget v4, v0, v6

    sub-float/2addr v3, v4

    sget-object v4, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XO:[F

    const/4 v5, 0x5

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 94
    const/4 v1, 0x6

    aget v2, v0, v6

    aget v3, v0, v7

    aget v4, v0, v6

    sub-float/2addr v3, v4

    sget-object v4, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XO:[F

    const/4 v5, 0x6

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 96
    const/16 v1, 0x8

    aget v2, v0, v7

    aget v3, v0, v10

    aget v4, v0, v7

    sub-float/2addr v3, v4

    sget-object v4, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XO:[F

    const/16 v5, 0x8

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 97
    const/16 v1, 0x9

    aget v2, v0, v7

    aget v3, v0, v10

    aget v4, v0, v7

    sub-float/2addr v3, v4

    sget-object v4, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XO:[F

    const/16 v5, 0x9

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 99
    const/16 v1, 0xb

    aget v2, v0, v10

    const/16 v3, 0xc

    aget v3, v0, v3

    aget v4, v0, v10

    sub-float/2addr v3, v4

    sget-object v4, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XO:[F

    const/16 v5, 0xb

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 101
    const/16 v1, 0xd

    const/16 v2, 0xc

    aget v2, v0, v2

    aget v3, v0, v9

    const/16 v4, 0xc

    aget v4, v0, v4

    sub-float/2addr v3, v4

    sget-object v4, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XO:[F

    const/16 v5, 0xd

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 103
    const/16 v1, 0xf

    aget v2, v0, v9

    const/16 v3, 0x11

    aget v3, v0, v3

    aget v4, v0, v9

    sub-float/2addr v3, v4

    sget-object v4, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XO:[F

    const/16 v5, 0xf

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 104
    const/16 v1, 0x10

    aget v2, v0, v9

    const/16 v3, 0x11

    aget v3, v0, v3

    aget v4, v0, v9

    sub-float/2addr v3, v4

    sget-object v4, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XO:[F

    const/16 v5, 0x10

    aget v4, v4, v5

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    aput v2, v0, v1

    .line 105
    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/dolby/DolbyEqualizer;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->ph()V

    return-void
.end method

.method static synthetic d(Lcom/android/settings_ext/dolby/DolbyEqualizer;)Landroid/dolby/DsClient;
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XF:Landroid/dolby/DsClient;

    return-object v0
.end method

.method private pe()[F
    .locals 6

    .prologue
    .line 156
    sget v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XK:I

    new-array v1, v0, [F

    .line 158
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XF:Landroid/dolby/DsClient;

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XF:Landroid/dolby/DsClient;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/dolby/DsClient;->getIeqPreset(I)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Landroid/dolby/DsClient;->getGeq(II)[F

    move-result-object v2

    .line 159
    const/4 v0, 0x0

    :goto_0
    sget v3, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XK:I

    if-ge v0, v3, :cond_0

    .line 160
    sget-object v3, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XL:[I

    aget v3, v3, v0

    aget v3, v2, v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 161
    iget-object v4, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XQ:Lcom/android/settings_ext/EqualizerView;

    invoke-virtual {v4}, Lcom/android/settings_ext/EqualizerView;->getMinLevel()I

    move-result v4

    iget-object v5, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XQ:Lcom/android/settings_ext/EqualizerView;

    invoke-virtual {v5}, Lcom/android/settings_ext/EqualizerView;->getMaxLevel()I

    move-result v5

    invoke-static {v5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v4, v3}, Ljava/lang/Math;->max(II)I

    move-result v3

    int-to-float v3, v3

    aput v3, v1, v0
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    .line 159
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    .line 178
    :cond_0
    :goto_1
    return-object v1

    .line 165
    :catch_1
    move-exception v0

    .line 166
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_1

    .line 167
    :catch_2
    move-exception v0

    .line 168
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_1

    .line 169
    :catch_3
    move-exception v0

    .line 170
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_1

    .line 171
    :catch_4
    move-exception v0

    .line 172
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_1

    .line 173
    :catch_5
    move-exception v0

    .line 174
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_1

    .line 175
    :catch_6
    move-exception v0

    .line 176
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_1
.end method

.method private pf()V
    .locals 4

    .prologue
    .line 182
    invoke-direct {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->pe()[F

    move-result-object v1

    .line 183
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 184
    iget-object v2, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XP:[Lcom/android/settings_ext/VerticalSeekBar;

    aget-object v2, v2, v0

    aget v3, v1, v0

    float-to-int v3, v3

    invoke-virtual {p0, v3}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->bJ(I)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/VerticalSeekBar;->setProgress(I)V

    .line 183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 186
    :cond_0
    return-void
.end method

.method private pg()V
    .locals 2

    .prologue
    .line 189
    invoke-direct {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->pe()[F

    move-result-object v0

    .line 190
    iget-object v1, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XQ:Lcom/android/settings_ext/EqualizerView;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/EqualizerView;->a([F)V

    .line 191
    return-void
.end method

.method private ph()V
    .locals 3

    .prologue
    .line 194
    const/4 v0, 0x0

    .line 196
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XF:Landroid/dolby/DsClient;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/dolby/DsClient;->getIeqPreset(I)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    move-result v0

    .line 212
    :goto_0
    iget-object v1, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XR:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XS:[Ljava/lang/String;

    aget-object v0, v2, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    return-void

    .line 197
    :catch_0
    move-exception v1

    .line 198
    invoke-virtual {v1}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_0

    .line 199
    :catch_1
    move-exception v1

    .line 200
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 201
    :catch_2
    move-exception v1

    .line 202
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 203
    :catch_3
    move-exception v1

    .line 204
    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0

    .line 205
    :catch_4
    move-exception v1

    .line 206
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 207
    :catch_5
    move-exception v1

    .line 208
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 209
    :catch_6
    move-exception v1

    .line 210
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/VerticalSeekBar;)V
    .locals 0

    .prologue
    .line 233
    return-void
.end method

.method public a(Lcom/android/settings_ext/VerticalSeekBar;IZ)V
    .locals 3

    .prologue
    .line 239
    invoke-virtual {p1}, Lcom/android/settings_ext/VerticalSeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 240
    invoke-virtual {p0, p2}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->bI(I)I

    move-result v1

    .line 241
    invoke-direct {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->pe()[F

    move-result-object v2

    .line 242
    int-to-float v1, v1

    aput v1, v2, v0

    .line 243
    invoke-virtual {p0, v2}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->c([F)V

    .line 244
    invoke-direct {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->pg()V

    .line 245
    return-void
.end method

.method public b(Lcom/android/settings_ext/VerticalSeekBar;)V
    .locals 3

    .prologue
    .line 249
    invoke-virtual {p1}, Lcom/android/settings_ext/VerticalSeekBar;->getProgress()I

    move-result v1

    .line 250
    invoke-virtual {p1}, Lcom/android/settings_ext/VerticalSeekBar;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 251
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->bI(I)I

    move-result v1

    .line 252
    invoke-direct {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->pe()[F

    move-result-object v2

    .line 253
    int-to-float v1, v1

    aput v1, v2, v0

    .line 254
    invoke-virtual {p0, v2}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->c([F)V

    .line 255
    invoke-direct {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->pg()V

    .line 256
    return-void
.end method

.method bH(I)V
    .locals 3

    .prologue
    .line 307
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XF:Landroid/dolby/DsClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/dolby/DsClient;->getProfileSettings(I)Landroid/dolby/DsClientSettings;

    move-result-object v0

    .line 308
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/dolby/DsClientSettings;->setGeqOn(Z)V

    .line 309
    iget-object v1, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XF:Landroid/dolby/DsClient;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/dolby/DsClient;->setProfileSettings(ILandroid/dolby/DsClientSettings;)V

    .line 310
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XF:Landroid/dolby/DsClient;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/dolby/DsClient;->setIeqPreset(II)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    .line 326
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    .line 312
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_0

    .line 313
    :catch_1
    move-exception v0

    .line 314
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 315
    :catch_2
    move-exception v0

    .line 316
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 317
    :catch_3
    move-exception v0

    .line 318
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0

    .line 319
    :catch_4
    move-exception v0

    .line 320
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 321
    :catch_5
    move-exception v0

    .line 322
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 323
    :catch_6
    move-exception v0

    .line 324
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method bI(I)I
    .locals 1

    .prologue
    .line 352
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XQ:Lcom/android/settings_ext/EqualizerView;

    invoke-virtual {v0}, Lcom/android/settings_ext/EqualizerView;->getMinLevel()I

    move-result v0

    add-int/2addr v0, p1

    return v0
.end method

.method bJ(I)I
    .locals 1

    .prologue
    .line 356
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XQ:Lcom/android/settings_ext/EqualizerView;

    invoke-virtual {v0}, Lcom/android/settings_ext/EqualizerView;->getMinLevel()I

    move-result v0

    sub-int v0, p1, v0

    return v0
.end method

.method c([F)V
    .locals 4

    .prologue
    .line 329
    iget-boolean v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->mn:Z

    if-eqz v0, :cond_0

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XF:Landroid/dolby/DsClient;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XF:Landroid/dolby/DsClient;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/dolby/DsClient;->getIeqPreset(I)I

    move-result v2

    invoke-direct {p0, p1}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->b([F)[F

    move-result-object v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/dolby/DsClient;->setGeq(II[F)V
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    .line 349
    :cond_0
    :goto_0
    return-void

    .line 333
    :catch_0
    move-exception v0

    .line 334
    invoke-virtual {v0}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_0

    .line 335
    :catch_1
    move-exception v0

    .line 336
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 337
    :catch_2
    move-exception v0

    .line 338
    invoke-virtual {v0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 339
    :catch_3
    move-exception v0

    .line 340
    invoke-virtual {v0}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0

    .line 341
    :catch_4
    move-exception v0

    .line 342
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 343
    :catch_5
    move-exception v0

    .line 344
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 345
    :catch_6
    move-exception v0

    .line 346
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 260
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XR:Landroid/widget/TextView;

    if-ne p1, v0, :cond_1

    .line 261
    const/4 v0, 0x0

    .line 263
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XF:Landroid/dolby/DsClient;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/dolby/DsClient;->getIeqPreset(I)I
    :try_end_0
    .catch Landroid/os/DeadObjectException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_6

    move-result v0

    .line 279
    :goto_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 280
    const v2, 0x7f09000a

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XS:[Ljava/lang/String;

    iget-object v3, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XT:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v1, v2, v0, v3}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    iget-object v2, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XT:Landroid/content/DialogInterface$OnClickListener;

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 288
    :cond_0
    :goto_1
    return-void

    .line 264
    :catch_0
    move-exception v1

    .line 265
    invoke-virtual {v1}, Landroid/os/DeadObjectException;->printStackTrace()V

    goto :goto_0

    .line 266
    :catch_1
    move-exception v1

    .line 267
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 268
    :catch_2
    move-exception v1

    .line 269
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_0

    .line 270
    :catch_3
    move-exception v1

    .line 271
    invoke-virtual {v1}, Ljava/lang/UnsupportedOperationException;->printStackTrace()V

    goto :goto_0

    .line 272
    :catch_4
    move-exception v1

    .line 273
    invoke-virtual {v1}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0

    .line 274
    :catch_5
    move-exception v1

    .line 275
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 276
    :catch_6
    move-exception v1

    .line 277
    invoke-virtual {v1}, Ljava/lang/RuntimeException;->printStackTrace()V

    goto :goto_0

    .line 285
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f1000d3

    if-ne v0, v1, :cond_0

    .line 286
    invoke-virtual {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->finish()V

    goto :goto_1
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 118
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 120
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V

    .line 122
    const v0, 0x7f040090

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->setContentView(I)V

    .line 124
    const v0, 0x7f10014f

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 125
    const v1, 0x7f1000d3

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    const v1, 0x7f1000d4

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 128
    const v0, 0x7f100151

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/EqualizerView;

    iput-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XQ:Lcom/android/settings_ext/EqualizerView;

    .line 129
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XQ:Lcom/android/settings_ext/EqualizerView;

    invoke-virtual {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f0c0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0001

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ext/EqualizerView;->a(II)V

    .line 132
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XQ:Lcom/android/settings_ext/EqualizerView;

    invoke-virtual {v0}, Lcom/android/settings_ext/EqualizerView;->getMaxLevel()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XQ:Lcom/android/settings_ext/EqualizerView;

    invoke-virtual {v1}, Lcom/android/settings_ext/EqualizerView;->getMinLevel()I

    move-result v1

    sub-int v2, v0, v1

    .line 133
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    sget v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XK:I

    if-ge v1, v0, :cond_0

    .line 134
    iget-object v3, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XP:[Lcom/android/settings_ext/VerticalSeekBar;

    sget-object v0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XJ:[I

    aget v0, v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/VerticalSeekBar;

    aput-object v0, v3, v1

    .line 135
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XP:[Lcom/android/settings_ext/VerticalSeekBar;

    aget-object v0, v0, v1

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/VerticalSeekBar;->a(Lcom/android/settings_ext/hn;)V

    .line 136
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XP:[Lcom/android/settings_ext/VerticalSeekBar;

    aget-object v0, v0, v1

    invoke-virtual {v0, v2}, Lcom/android/settings_ext/VerticalSeekBar;->setMax(I)V

    .line 137
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XP:[Lcom/android/settings_ext/VerticalSeekBar;

    aget-object v0, v0, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/settings_ext/VerticalSeekBar;->setTag(Ljava/lang/Object;)V

    .line 133
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 139
    :cond_0
    const v0, 0x7f100150

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XR:Landroid/widget/TextView;

    .line 140
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XR:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    new-instance v0, Landroid/dolby/DsClient;

    invoke-direct {v0}, Landroid/dolby/DsClient;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XF:Landroid/dolby/DsClient;

    .line 144
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XF:Landroid/dolby/DsClient;

    iget-object v1, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XG:Landroid/dolby/IDsClientEvents;

    invoke-virtual {v0, v1}, Landroid/dolby/DsClient;->setEventListener(Landroid/dolby/IDsClientEvents;)V

    .line 145
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XF:Landroid/dolby/DsClient;

    invoke-virtual {v0, p0}, Landroid/dolby/DsClient;->bindDsService(Landroid/content/Context;)Z

    .line 147
    invoke-virtual {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 148
    const/high16 v1, 0x7f0b0000

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XS:[Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->pf()V

    .line 151
    invoke-direct {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->ph()V

    .line 152
    invoke-direct {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->pg()V

    .line 153
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 225
    iget-boolean v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->mn:Z

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/android/settings_ext/dolby/DolbyEqualizer;->XF:Landroid/dolby/DsClient;

    invoke-virtual {v0, p0}, Landroid/dolby/DsClient;->unBindDsService(Landroid/content/Context;)V

    .line 228
    :cond_0
    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    .line 229
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 217
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 218
    invoke-direct {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->pf()V

    .line 219
    invoke-direct {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->ph()V

    .line 220
    invoke-direct {p0}, Lcom/android/settings_ext/dolby/DolbyEqualizer;->pg()V

    .line 221
    return-void
.end method
