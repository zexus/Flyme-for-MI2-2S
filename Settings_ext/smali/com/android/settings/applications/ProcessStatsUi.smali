.class public Lcom/android/settings/applications/ProcessStatsUi;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "ProcessStatsUi.java"

# interfaces
.implements Lcom/android/settings/applications/LinearColorBar$OnRegionTappedListener;


# static fields
.field static final IG:Ljava/util/Comparator;

.field private static IH:Lcom/android/internal/app/ProcessStats;

.field private static final IW:J

.field private static IX:[J

.field private static IY:[I

.field public static final IZ:[I

.field public static final Ja:[I

.field public static final Jb:[I

.field public static final Jc:[I

.field public static final Jd:[I


# instance fields
.field IA:D

.field IB:D

.field IC:D

.field II:Lcom/android/internal/app/IProcessStats;

.field IJ:I

.field private IK:J

.field private IL:Z

.field private IM:I

.field private IN:I

.field private IO:[Landroid/view/MenuItem;

.field private IP:Landroid/view/MenuItem;

.field private IQ:Landroid/view/MenuItem;

.field private IR:Landroid/view/MenuItem;

.field private IS:Landroid/view/MenuItem;

.field private IT:Landroid/view/MenuItem;

.field private IU:Landroid/preference/PreferenceGroup;

.field private IV:Landroid/preference/Preference;

.field private Il:Z

.field Im:J

.field Iv:[J

.field Iw:[D

.field Ix:D

.field Iy:D

.field Iz:D

.field aU:Landroid/os/UserManager;

.field private mDuration:J

.field mStats:Lcom/android/internal/app/ProcessStats;

.field mTotalTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x4

    const/4 v10, 0x0

    const-wide/16 v8, 0x2

    const/4 v7, 0x3

    const/4 v6, 0x1

    .line 79
    new-instance v0, Lcom/android/settings/applications/ProcessStatsUi$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ProcessStatsUi$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->IG:Ljava/util/Comparator;

    .line 136
    sget-wide v0, Lcom/android/internal/app/ProcessStats;->COMMIT_PERIOD:J

    sput-wide v0, Lcom/android/settings/applications/ProcessStatsUi;->IW:J

    .line 137
    new-array v0, v11, [J

    const-wide/32 v2, 0xa4cb80

    sget-wide v4, Lcom/android/settings/applications/ProcessStatsUi;->IW:J

    div-long/2addr v4, v8

    sub-long/2addr v2, v4

    aput-wide v2, v0, v10

    const-wide/32 v2, 0x1499700

    sget-wide v4, Lcom/android/settings/applications/ProcessStatsUi;->IW:J

    div-long/2addr v4, v8

    sub-long/2addr v2, v4

    aput-wide v2, v0, v6

    const/4 v1, 0x2

    const-wide/32 v2, 0x2932e00

    sget-wide v4, Lcom/android/settings/applications/ProcessStatsUi;->IW:J

    div-long/2addr v4, v8

    sub-long/2addr v2, v4

    aput-wide v2, v0, v1

    const-wide/32 v2, 0x5265c00

    sget-wide v4, Lcom/android/settings/applications/ProcessStatsUi;->IW:J

    div-long/2addr v4, v8

    sub-long/2addr v2, v4

    aput-wide v2, v0, v7

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->IX:[J

    .line 141
    new-array v0, v11, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->IY:[I

    .line 362
    const/16 v0, 0x8

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->IZ:[I

    .line 369
    new-array v0, v6, [I

    aput v6, v0, v10

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->Ja:[I

    .line 373
    new-array v0, v7, [I

    fill-array-data v0, :array_2

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->Jb:[I

    .line 378
    new-array v0, v6, [I

    aput v7, v0, v10

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->Jc:[I

    .line 382
    new-array v0, v7, [I

    fill-array-data v0, :array_3

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->Jd:[I

    return-void

    .line 141
    nop

    :array_0
    .array-data 4
        0x7f090717
        0x7f090718
        0x7f090719
        0x7f09071a
    .end array-data

    .line 362
    :array_1
    .array-data 4
        0x0
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
    .end array-data

    .line 373
    :array_2
    .array-data 4
        0xb
        0xc
        0xd
    .end array-data

    .line 382
    :array_3
    .array-data 4
        0x3
        0x2
        0x1
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 58
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 109
    new-array v0, v1, [Landroid/view/MenuItem;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IO:[Landroid/view/MenuItem;

    .line 122
    new-array v0, v1, [J

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->Iv:[J

    .line 123
    const/16 v0, 0xe

    new-array v0, v0, [D

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->Iw:[D

    return-void
.end method

.method private jE()V
    .locals 28

    .prologue
    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->jD()V

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    if-eqz v2, :cond_0

    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->IK:J

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_1

    .line 397
    :cond_0
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->load()V

    .line 402
    :cond_1
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->IM:I

    const/16 v3, 0x9

    if-ne v2, v3, :cond_2

    .line 403
    sget-object v3, Lcom/android/settings/applications/ProcessStatsUi;->Ja:[I

    .line 404
    const v2, 0x7f090706

    move-object v10, v3

    .line 414
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ProcessStatsUi;->IU:Landroid/preference/PreferenceGroup;

    invoke-virtual {v3}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 415
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ProcessStatsUi;->IU:Landroid/preference/PreferenceGroup;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 417
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v4, v3, Lcom/android/internal/app/ProcessStats;->mTimePeriodEndRealtime:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v6, v3, Lcom/android/internal/app/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long v14, v4, v6

    .line 419
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ProcessStatsUi;->IV:Landroid/preference/Preference;

    const/4 v4, -0x2

    invoke-virtual {v3, v4}, Landroid/preference/Preference;->setOrder(I)V

    .line 420
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ProcessStatsUi;->IU:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/ProcessStatsUi;->IV:Landroid/preference/Preference;

    invoke-virtual {v3, v4}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 421
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v3

    long-to-double v4, v14

    const/4 v6, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/android/settings/hl;->a(Landroid/content/Context;DZ)Ljava/lang/String;

    move-result-object v4

    .line 423
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v5, 0x7f0b0063

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v3

    .line 424
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/applications/ProcessStatsUi;->IJ:I

    if-ltz v5, :cond_5

    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/applications/ProcessStatsUi;->IJ:I

    array-length v6, v3

    if-ge v5, v6, :cond_5

    .line 425
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/settings/applications/ProcessStatsUi;->IJ:I

    aget-object v3, v3, v5

    .line 429
    :goto_1
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ProcessStatsUi;->IV:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v6

    const v7, 0x7f090704

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v11

    invoke-virtual {v11, v2}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v9

    const/4 v2, 0x1

    aput-object v4, v8, v2

    invoke-virtual {v6, v7, v8}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Landroid/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 431
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->IV:Landroid/preference/Preference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v4

    const v5, 0x7f090708

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v3, v6, v7

    invoke-virtual {v4, v5, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 444
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    .line 446
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v21

    .line 448
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v5, v5, Lcom/android/internal/app/ProcessStats;->mMemFactor:I

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-wide v6, v6, Lcom/android/internal/app/ProcessStats;->mStartTime:J

    invoke-static/range {v2 .. v9}, Lcom/android/internal/app/ProcessStats;->dumpSingleTime(Ljava/io/PrintWriter;Ljava/lang/String;[JIJJ)J

    move-result-wide v2

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    .line 452
    const/4 v2, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ProcessStatsUi;->Iv:[J

    array-length v3, v3

    if-ge v2, v3, :cond_6

    .line 453
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ProcessStatsUi;->Iv:[J

    const-wide/16 v4, 0x0

    aput-wide v4, v3, v2

    .line 452
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 405
    :cond_2
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->IM:I

    const/16 v3, 0xa

    if-ne v2, v3, :cond_3

    .line 406
    sget-object v3, Lcom/android/settings/applications/ProcessStatsUi;->Jb:[I

    .line 407
    const v2, 0x7f090707

    move-object v10, v3

    goto/16 :goto_0

    .line 409
    :cond_3
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->IL:Z

    if-eqz v2, :cond_4

    sget-object v2, Lcom/android/settings/applications/ProcessStatsUi;->IZ:[I

    .line 411
    :goto_3
    const v3, 0x7f090705

    move-object v10, v2

    move v2, v3

    goto/16 :goto_0

    .line 409
    :cond_4
    sget-object v2, Lcom/android/internal/app/ProcessStats;->BACKGROUND_PROC_STATES:[I

    goto :goto_3

    .line 427
    :cond_5
    const-string v3, "?"

    goto/16 :goto_1

    .line 455
    :cond_6
    const/4 v2, 0x0

    move v3, v2

    :goto_4
    const/16 v2, 0x8

    if-ge v3, v2, :cond_8

    .line 456
    const/4 v2, 0x0

    :goto_5
    const/4 v4, 0x4

    if-ge v2, v4, :cond_7

    .line 457
    add-int v4, v2, v3

    .line 458
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ProcessStatsUi;->Iv:[J

    aget-wide v6, v5, v2

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v11, v11, Lcom/android/internal/app/ProcessStats;->mMemFactorDurations:[J

    aget-wide v12, v11, v4

    add-long/2addr v6, v12

    aput-wide v6, v5, v2

    .line 456
    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    .line 455
    :cond_7
    add-int/lit8 v2, v3, 0x4

    move v3, v2

    goto :goto_4

    .line 465
    :cond_8
    new-instance v11, Lcom/android/settings/applications/LinearColorPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v11, v2}, Lcom/android/settings/applications/LinearColorPreference;-><init>(Landroid/content/Context;)V

    .line 466
    const/4 v2, -0x1

    invoke-virtual {v11, v2}, Lcom/android/settings/applications/LinearColorPreference;->setOrder(I)V

    .line 467
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->IN:I

    packed-switch v2, :pswitch_data_0

    .line 479
    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    .line 480
    sget-object v2, Lcom/android/internal/app/ProcessStats;->ALL_MEM_ADJ:[I

    move-object v3, v2

    move-wide v12, v4

    .line 483
    :goto_6
    const/4 v2, 0x1

    invoke-virtual {v11, v2}, Lcom/android/settings/applications/LinearColorPreference;->aB(I)V

    .line 486
    sget-object v2, Lcom/android/settings/hl;->zB:[I

    .line 487
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/ProcessStatsUi;->Iv:[J

    const/4 v5, 0x0

    aget-wide v4, v4, v5

    .line 488
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->Iv:[J

    const/4 v7, 0x1

    aget-wide v6, v6, v7

    const-wide/16 v16, 0x2

    mul-long v6, v6, v16

    const-wide/16 v16, 0x3

    div-long v6, v6, v16

    add-long/2addr v4, v6

    .line 489
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->Iv:[J

    const/4 v7, 0x2

    aget-wide v6, v6, v7

    const-wide/16 v16, 0x3

    div-long v6, v6, v16

    add-long/2addr v4, v6

    .line 490
    long-to-float v4, v4

    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    long-to-float v5, v6

    div-float/2addr v4, v5

    .line 491
    array-length v5, v2

    add-int/lit8 v5, v5, -0x2

    int-to-float v5, v5

    mul-float/2addr v4, v5

    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    aget v2, v2, v4

    .line 492
    invoke-virtual {v11, v2, v2, v2}, Lcom/android/settings/applications/LinearColorPreference;->a(III)V

    .line 499
    const/4 v2, 0x0

    :goto_7
    const/4 v4, 0x4

    if-ge v2, v4, :cond_9

    .line 500
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/ProcessStatsUi;->Iv:[J

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/applications/ProcessStatsUi;->Iv:[J

    aget-wide v6, v5, v2

    long-to-double v6, v6

    long-to-double v0, v14

    move-wide/from16 v16, v0

    mul-double v6, v6, v16

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    move-wide/from16 v16, v0

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    div-double v6, v6, v16

    double-to-long v6, v6

    aput-wide v6, v4, v2

    .line 499
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 469
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->Iv:[J

    const/4 v3, 0x3

    aget-wide v4, v2, v3

    .line 470
    sget-object v2, Lcom/android/settings/applications/ProcessStatsUi;->Jc:[I

    move-object v3, v2

    move-wide v12, v4

    .line 471
    goto :goto_6

    .line 473
    :pswitch_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->Iv:[J

    const/4 v3, 0x3

    aget-wide v2, v2, v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/ProcessStatsUi;->Iv:[J

    const/4 v5, 0x2

    aget-wide v4, v4, v5

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/ProcessStatsUi;->Iv:[J

    const/4 v5, 0x1

    aget-wide v4, v4, v5

    add-long/2addr v4, v2

    .line 476
    sget-object v2, Lcom/android/settings/applications/ProcessStatsUi;->Jd:[I

    move-object v3, v2

    move-wide v12, v4

    .line 477
    goto/16 :goto_6

    .line 503
    :cond_9
    new-instance v20, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;

    sget-object v2, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    move-object/from16 v0, v20

    invoke-direct {v0, v2, v3}, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;-><init>([I[I)V

    .line 505
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    move-object/from16 v0, v20

    invoke-virtual {v2, v0, v8, v9}, Lcom/android/internal/app/ProcessStats;->computeTotalMemoryUse(Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;J)V

    .line 506
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    add-double/2addr v6, v4

    .line 507
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    add-double/2addr v4, v8

    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    add-double/2addr v4, v8

    .line 509
    const-wide/16 v16, 0x0

    const-wide/16 v14, 0x0

    .line 510
    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemCachedWeight:D

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->Ix:D

    .line 511
    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemFreeWeight:D

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->Iy:D

    .line 512
    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemZRamWeight:D

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->Iz:D

    .line 513
    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemKernelWeight:D

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->IA:D

    .line 514
    move-object/from16 v0, v20

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->sysMemNativeWeight:D

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->IB:D

    .line 515
    const/4 v2, 0x0

    :goto_8
    const/16 v8, 0xe

    if-ge v2, v8, :cond_c

    .line 516
    const/4 v8, 0x7

    if-ne v2, v8, :cond_a

    .line 518
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->Iw:[D

    const-wide/16 v18, 0x0

    aput-wide v18, v8, v2

    move-wide v8, v4

    move-wide v4, v14

    move-wide v14, v6

    move-wide/from16 v6, v16

    .line 515
    :goto_9
    add-int/lit8 v2, v2, 0x1

    move-wide/from16 v16, v6

    move-wide v6, v14

    move-wide v14, v4

    move-wide v4, v8

    goto :goto_8

    .line 520
    :cond_a
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->Iw:[D

    move-object/from16 v0, v20

    iget-object v9, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v18, v9, v2

    aput-wide v18, v8, v2

    .line 521
    const/16 v8, 0x9

    if-lt v2, v8, :cond_b

    .line 522
    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v8, v8, v2

    add-double v18, v6, v8

    move-wide v8, v4

    .line 526
    :goto_a
    const/4 v4, 0x2

    if-lt v2, v4, :cond_2b

    .line 527
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v4, v2

    add-double v6, v16, v4

    .line 528
    move-object/from16 v0, v20

    iget-object v4, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v4, v4, v2

    add-double/2addr v4, v14

    .line 530
    :goto_b
    if-nez v2, :cond_2a

    .line 531
    move-object/from16 v0, v20

    iget-object v14, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v14, v14, v2

    add-double/2addr v4, v14

    move-wide/from16 v14, v18

    goto :goto_9

    .line 524
    :cond_b
    move-object/from16 v0, v20

    iget-object v8, v0, Lcom/android/internal/app/ProcessStats$TotalMemoryUseCollection;->processStateWeight:[D

    aget-wide v8, v8, v2

    add-double/2addr v8, v4

    move-wide/from16 v18, v6

    goto :goto_a

    .line 545
    :cond_c
    add-double v8, v6, v4

    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->IC:D

    .line 553
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double/2addr v4, v8

    long-to-double v8, v12

    div-double/2addr v4, v8

    .line 554
    const-wide/high16 v8, 0x4090000000000000L    # 1024.0

    mul-double/2addr v6, v8

    long-to-double v8, v12

    div-double/2addr v6, v8

    .line 555
    add-double v8, v4, v6

    .line 556
    new-instance v2, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v2}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 557
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 558
    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v18

    move-wide/from16 v0, v18

    long-to-double v0, v0

    move-wide/from16 v18, v0

    .line 559
    div-double v8, v18, v8

    .line 560
    mul-double/2addr v4, v8

    .line 561
    mul-double/2addr v6, v8

    .line 568
    new-instance v18, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct/range {v18 .. v18}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 569
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-string v8, "activity"

    invoke-virtual {v2, v8}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager;

    move-object/from16 v0, v18

    invoke-virtual {v2, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 571
    move-object/from16 v0, v18

    iget-wide v8, v0, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v8, v8

    cmpl-double v2, v8, v6

    if-ltz v2, :cond_e

    .line 573
    const-wide/16 v4, 0x0

    .line 585
    :goto_c
    add-double/2addr v4, v6

    div-double v4, v6, v4

    double-to-float v2, v4

    .line 586
    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    sub-float/2addr v5, v2

    invoke-virtual {v11, v2, v4, v5}, Lcom/android/settings/applications/LinearColorPreference;->a(FFF)V

    .line 616
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->IU:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 618
    new-instance v5, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;

    sget-object v2, Lcom/android/internal/app/ProcessStats;->ALL_SCREEN_ADJ:[I

    invoke-direct {v5, v2, v3, v10}, Lcom/android/internal/app/ProcessStats$ProcessDataCollection;-><init>([I[I[I)V

    .line 621
    new-instance v22, Ljava/util/ArrayList;

    invoke-direct/range {v22 .. v22}, Ljava/util/ArrayList;-><init>()V

    .line 634
    new-instance v23, Lcom/android/internal/app/ProcessMap;

    invoke-direct/range {v23 .. v23}, Lcom/android/internal/app/ProcessMap;-><init>()V

    .line 635
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v3, v3, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v24

    move/from16 v20, v2

    :goto_d
    move/from16 v0, v20

    move/from16 v1, v24

    if-ge v0, v1, :cond_15

    .line 636
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, v2, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    move/from16 v0, v20

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v8, v2

    check-cast v8, Landroid/util/SparseArray;

    .line 638
    const/4 v2, 0x0

    move v11, v2

    :goto_e
    invoke-virtual {v8}, Landroid/util/SparseArray;->size()I

    move-result v2

    if-ge v11, v2, :cond_14

    .line 639
    invoke-virtual {v8, v11}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Landroid/util/SparseArray;

    .line 640
    const/4 v2, 0x0

    move/from16 v18, v2

    :goto_f
    invoke-virtual {v9}, Landroid/util/SparseArray;->size()I

    move-result v2

    move/from16 v0, v18

    if-ge v0, v2, :cond_13

    .line 641
    move/from16 v0, v18

    invoke-virtual {v9, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 642
    const/4 v2, 0x0

    move/from16 v19, v2

    :goto_10
    iget-object v2, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    move/from16 v0, v19

    if-ge v0, v2, :cond_12

    .line 643
    iget-object v2, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    move/from16 v0, v19

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 644
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v3, v3, Lcom/android/internal/app/ProcessStats;->mProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v4, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    iget v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v3, v4, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 646
    if-nez v3, :cond_f

    .line 647
    const-string v3, "ProcessStatsUi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No process found for pkg "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, "/"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v6, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mUid:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " proc name "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v2, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 642
    :cond_d
    :goto_11
    add-int/lit8 v2, v19, 0x1

    move/from16 v19, v2

    goto :goto_10

    .line 575
    :cond_e
    move-object/from16 v0, v18

    iget-wide v8, v0, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v8, v8

    add-double/2addr v8, v4

    .line 576
    move-object/from16 v0, v18

    iget-wide v4, v0, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    long-to-double v4, v4

    sub-double v4, v6, v4

    move-wide v6, v8

    goto/16 :goto_c

    .line 651
    :cond_f
    iget-object v2, v3, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    iget v4, v3, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v2, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry;

    .line 652
    if-nez v2, :cond_11

    .line 653
    new-instance v2, Lcom/android/settings/applications/ProcStatsEntry;

    iget-object v4, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-boolean v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->Il:Z

    move-object/from16 v0, p0

    iget v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->IM:I

    const/16 v25, 0x8

    move/from16 v0, v25

    if-ne v7, v0, :cond_10

    const/4 v7, 0x1

    :goto_12
    invoke-direct/range {v2 .. v7}, Lcom/android/settings/applications/ProcStatsEntry;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;ZZ)V

    .line 655
    iget-wide v6, v2, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    const-wide/16 v26, 0x0

    cmp-long v4, v6, v26

    if-lez v4, :cond_d

    .line 660
    iget-object v4, v3, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    iget v3, v3, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    move-object/from16 v0, v23

    invoke-virtual {v0, v4, v3, v2}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 661
    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 653
    :cond_10
    const/4 v7, 0x0

    goto :goto_12

    .line 664
    :cond_11
    iget-object v3, v10, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/settings/applications/ProcStatsEntry;->addPackage(Ljava/lang/String;)V

    goto :goto_11

    .line 640
    :cond_12
    add-int/lit8 v2, v18, 0x1

    move/from16 v18, v2

    goto/16 :goto_f

    .line 638
    :cond_13
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_e

    .line 635
    :cond_14
    add-int/lit8 v2, v20, 0x1

    move/from16 v20, v2

    goto/16 :goto_d

    .line 674
    :cond_15
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->IM:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_1b

    .line 675
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v3, v3, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v3}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3}, Landroid/util/ArrayMap;->size()I

    move-result v18

    move v11, v2

    :goto_13
    move/from16 v0, v18

    if-ge v11, v0, :cond_1b

    .line 676
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, v2, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v11}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 678
    const/4 v3, 0x0

    move v8, v3

    :goto_14
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    if-ge v8, v3, :cond_1a

    .line 679
    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 680
    const/4 v4, 0x0

    move v9, v4

    :goto_15
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v9, v4, :cond_19

    .line 681
    invoke-virtual {v3, v9}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 682
    const/4 v6, 0x0

    iget-object v7, v4, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v7}, Landroid/util/ArrayMap;->size()I

    move-result v19

    move v10, v6

    :goto_16
    move/from16 v0, v19

    if-ge v10, v0, :cond_18

    .line 683
    iget-object v6, v4, Lcom/android/internal/app/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    invoke-virtual {v6, v10}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/app/ProcessStats$ServiceState;

    .line 684
    iget-object v7, v6, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    if-eqz v7, :cond_16

    .line 685
    iget-object v7, v6, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v20

    move-object/from16 v0, v23

    move/from16 v1, v20

    invoke-virtual {v0, v7, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/settings/applications/ProcStatsEntry;

    .line 686
    if-eqz v7, :cond_17

    .line 690
    invoke-virtual {v7, v6}, Lcom/android/settings/applications/ProcStatsEntry;->a(Lcom/android/internal/app/ProcessStats$ServiceState;)V

    .line 682
    :cond_16
    :goto_17
    add-int/lit8 v6, v10, 0x1

    move v10, v6

    goto :goto_16

    .line 692
    :cond_17
    const-string v7, "ProcessStatsUi"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "No process "

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v0, v6, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    move-object/from16 v24, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v24, "/"

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual {v2, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v24

    move-object/from16 v0, v20

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v24, " for service "

    move-object/from16 v0, v20

    move-object/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    iget-object v6, v6, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_17

    .line 680
    :cond_18
    add-int/lit8 v4, v9, 0x1

    move v9, v4

    goto/16 :goto_15

    .line 678
    :cond_19
    add-int/lit8 v3, v8, 0x1

    move v8, v3

    goto/16 :goto_14

    .line 675
    :cond_1a
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto/16 :goto_13

    .line 727
    :cond_1b
    sget-object v2, Lcom/android/settings/applications/ProcessStatsUi;->IG:Ljava/util/Comparator;

    move-object/from16 v0, v22

    invoke-static {v0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 729
    const-wide/16 v6, 0x1

    .line 730
    const/4 v4, 0x0

    if-eqz v22, :cond_1d

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v3, v2

    :goto_18
    if-ge v4, v3, :cond_1e

    .line 731
    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry;

    .line 732
    iget-wide v8, v2, Lcom/android/settings/applications/ProcStatsEntry;->Id:J

    cmp-long v8, v6, v8

    if-gez v8, :cond_1c

    .line 733
    iget-wide v6, v2, Lcom/android/settings/applications/ProcStatsEntry;->Id:J

    .line 730
    :cond_1c
    add-int/lit8 v2, v4, 0x1

    move v4, v2

    goto :goto_18

    :cond_1d
    const/4 v2, 0x0

    move v3, v2

    goto :goto_18

    .line 736
    :cond_1e
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->IM:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_25

    .line 737
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->IL:Z

    if-eqz v2, :cond_24

    :goto_19
    double-to-long v2, v14

    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->Im:J

    .line 738
    move-object/from16 v0, p0

    iget-wide v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->Im:J

    cmp-long v2, v2, v6

    if-gez v2, :cond_1f

    .line 739
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->Im:J

    .line 753
    :cond_1f
    :goto_1a
    if-eqz v22, :cond_26

    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    :goto_1b
    move v10, v2

    .line 754
    :goto_1c
    if-ltz v10, :cond_20

    .line 755
    move-object/from16 v0, v22

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry;

    .line 756
    iget-wide v6, v2, Lcom/android/settings/applications/ProcStatsEntry;->Id:J

    long-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/settings/applications/ProcessStatsUi;->Im:J

    long-to-double v8, v8

    div-double/2addr v6, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v6, v8

    .line 757
    iget-wide v2, v2, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    long-to-double v2, v2

    long-to-double v8, v12

    div-double/2addr v2, v8

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v8

    .line 758
    const-wide/high16 v8, 0x3ff0000000000000L    # 1.0

    cmpl-double v4, v6, v8

    if-gez v4, :cond_20

    const-wide/high16 v6, 0x4039000000000000L    # 25.0

    cmpl-double v2, v2, v6

    if-ltz v2, :cond_27

    .line 763
    :cond_20
    const/4 v2, 0x0

    move v9, v2

    :goto_1d
    if-gt v9, v10, :cond_23

    .line 764
    move-object/from16 v0, v22

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings/applications/ProcStatsEntry;

    .line 765
    iget-wide v6, v2, Lcom/android/settings/applications/ProcStatsEntry;->Id:J

    long-to-double v6, v6

    move-object/from16 v0, p0

    iget-wide v14, v0, Lcom/android/settings/applications/ProcessStatsUi;->Im:J

    long-to-double v14, v14

    div-double/2addr v6, v14

    const-wide/high16 v14, 0x4059000000000000L    # 100.0

    mul-double/2addr v14, v6

    .line 766
    iget-wide v6, v2, Lcom/android/settings/applications/ProcStatsEntry;->mDuration:J

    long-to-double v6, v6

    long-to-double v0, v12

    move-wide/from16 v16, v0

    div-double v6, v6, v16

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v16, v16, v6

    .line 767
    new-instance v11, Lcom/android/settings/applications/ProcessStatsPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v11, v3}, Lcom/android/settings/applications/ProcessStatsPreference;-><init>(Landroid/content/Context;)V

    .line 768
    const/4 v3, 0x0

    invoke-virtual {v11, v3, v2}, Lcom/android/settings/applications/ProcessStatsPreference;->a(Landroid/graphics/drawable/Drawable;Lcom/android/settings/applications/ProcStatsEntry;)V

    .line 769
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    sget-object v6, Lcom/android/settings/applications/ProcessStatsUi;->IG:Ljava/util/Comparator;

    move-object/from16 v0, p0

    iget-boolean v7, v0, Lcom/android/settings/applications/ProcessStatsUi;->Il:Z

    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/settings/applications/ProcessStatsUi;->IM:I

    const/16 v8, 0x8

    if-ne v3, v8, :cond_28

    const/4 v8, 0x1

    :goto_1e
    move-object/from16 v3, v21

    invoke-virtual/range {v2 .. v8}, Lcom/android/settings/applications/ProcStatsEntry;->a(Landroid/content/pm/PackageManager;Lcom/android/internal/app/ProcessStats;Lcom/android/internal/app/ProcessStats$ProcessDataCollection;Ljava/util/Comparator;ZZ)V

    .line 771
    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Lcom/android/settings/applications/ProcStatsEntry;->b(Landroid/content/pm/PackageManager;)V

    .line 772
    iget-object v3, v2, Lcom/android/settings/applications/ProcStatsEntry;->Ig:Ljava/lang/String;

    invoke-virtual {v11, v3}, Lcom/android/settings/applications/ProcessStatsPreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 773
    iget-object v3, v2, Lcom/android/settings/applications/ProcStatsEntry;->If:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_21

    .line 774
    iget-object v2, v2, Lcom/android/settings/applications/ProcStatsEntry;->If:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, v21

    invoke-virtual {v2, v0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v11, v2}, Lcom/android/settings/applications/ProcessStatsPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 776
    :cond_21
    invoke-virtual {v11, v9}, Lcom/android/settings/applications/ProcessStatsPreference;->setOrder(I)V

    .line 777
    move-wide/from16 v0, v16

    invoke-virtual {v11, v14, v15, v0, v1}, Lcom/android/settings/applications/ProcessStatsPreference;->a(DD)V

    .line 778
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->IU:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2, v11}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 779
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->IM:I

    const/16 v3, 0x8

    if-ne v2, v3, :cond_22

    .line 789
    :cond_22
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/applications/ProcessStatsUi;->IU:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v2

    const/16 v3, 0x3d

    if-le v2, v3, :cond_29

    .line 794
    :cond_23
    return-void

    :cond_24
    move-wide/from16 v14, v16

    .line 737
    goto/16 :goto_19

    .line 746
    :cond_25
    move-object/from16 v0, p0

    iput-wide v6, v0, Lcom/android/settings/applications/ProcessStatsUi;->Im:J

    goto/16 :goto_1a

    .line 753
    :cond_26
    const/4 v2, -0x1

    goto/16 :goto_1b

    .line 761
    :cond_27
    add-int/lit8 v2, v10, -0x1

    move v10, v2

    .line 762
    goto/16 :goto_1c

    .line 769
    :cond_28
    const/4 v8, 0x0

    goto :goto_1e

    .line 763
    :cond_29
    add-int/lit8 v2, v9, 0x1

    move v9, v2

    goto/16 :goto_1d

    :cond_2a
    move-wide/from16 v14, v18

    goto/16 :goto_9

    :cond_2b
    move-wide v4, v14

    move-wide/from16 v6, v16

    goto/16 :goto_b

    .line 467
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private load()V
    .locals 4

    .prologue
    .line 798
    :try_start_0
    iget-wide v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    iput-wide v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IK:J

    .line 799
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->II:Lcom/android/internal/app/IProcessStats;

    invoke-interface {v0}, Lcom/android/internal/app/IProcessStats;->getCurrentMemoryState()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IJ:I

    .line 800
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->II:Lcom/android/internal/app/IProcessStats;

    iget-wide v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    invoke-interface {v0, v2, v3}, Lcom/android/internal/app/IProcessStats;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 801
    new-instance v1, Lcom/android/internal/app/ProcessStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/app/ProcessStats;-><init>(Z)V

    iput-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    .line 802
    new-instance v1, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v1, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 803
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ProcessStats;->read(Ljava/io/InputStream;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 805
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 808
    :goto_0
    :try_start_2
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 809
    const-string v0, "ProcessStatsUi"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failure reading process stats: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, v2, Lcom/android/internal/app/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 814
    :cond_0
    :goto_1
    return-void

    .line 811
    :catch_0
    move-exception v0

    .line 812
    const-string v1, "ProcessStatsUi"

    const-string v2, "RemoteException:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 806
    :catch_1
    move-exception v0

    goto :goto_0
.end method


# virtual methods
.method public aC(I)V
    .locals 1

    .prologue
    .line 350
    iget v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IN:I

    if-eq v0, p1, :cond_0

    .line 351
    iput p1, p0, Lcom/android/settings/applications/ProcessStatsUi;->IN:I

    .line 352
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->jE()V

    .line 354
    :cond_0
    return-void
.end method

.method jD()V
    .locals 12

    .prologue
    const/16 v11, 0x8

    const/4 v10, 0x4

    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 282
    .line 283
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->IX:[J

    aget-wide v0, v0, v7

    iget-wide v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    move v4, v6

    move v5, v7

    .line 284
    :goto_0
    if-ge v4, v10, :cond_0

    .line 285
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->IX:[J

    aget-wide v0, v0, v4

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    sub-long/2addr v0, v8

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    .line 286
    cmp-long v8, v0, v2

    if-gez v8, :cond_d

    move v2, v4

    .line 284
    :goto_1
    add-int/lit8 v4, v4, 0x1

    move v5, v2

    move-wide v2, v0

    goto :goto_0

    :cond_0
    move v1, v7

    .line 291
    :goto_2
    if-ge v1, v10, :cond_3

    .line 292
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IO:[Landroid/view/MenuItem;

    aget-object v0, v0, v1

    if-eqz v0, :cond_1

    .line 293
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IO:[Landroid/view/MenuItem;

    aget-object v2, v0, v1

    if-ne v1, v5, :cond_2

    move v0, v6

    :goto_3
    invoke-interface {v2, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 291
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_2
    move v0, v7

    .line 293
    goto :goto_3

    .line 296
    :cond_3
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->IX:[J

    aget-wide v0, v0, v5

    iput-wide v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    .line 297
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IP:Landroid/view/MenuItem;

    if-eqz v0, :cond_4

    .line 298
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IP:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->IL:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 299
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->IP:Landroid/view/MenuItem;

    iget v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IM:I

    if-ne v0, v11, :cond_9

    move v0, v6

    :goto_4
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    .line 301
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IQ:Landroid/view/MenuItem;

    if-eqz v0, :cond_5

    .line 302
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IQ:Landroid/view/MenuItem;

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->Il:Z

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 304
    :cond_5
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IR:Landroid/view/MenuItem;

    if-eqz v0, :cond_6

    .line 305
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->IR:Landroid/view/MenuItem;

    iget v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IM:I

    if-ne v0, v11, :cond_a

    move v0, v6

    :goto_5
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 307
    :cond_6
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IS:Landroid/view/MenuItem;

    if-eqz v0, :cond_7

    .line 308
    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->IS:Landroid/view/MenuItem;

    iget v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IM:I

    const/16 v2, 0x9

    if-ne v0, v2, :cond_b

    move v0, v6

    :goto_6
    invoke-interface {v1, v0}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 310
    :cond_7
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IT:Landroid/view/MenuItem;

    if-eqz v0, :cond_8

    .line 311
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IT:Landroid/view/MenuItem;

    iget v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->IM:I

    const/16 v2, 0xa

    if-ne v1, v2, :cond_c

    :goto_7
    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    .line 313
    :cond_8
    return-void

    :cond_9
    move v0, v7

    .line 299
    goto :goto_4

    :cond_a
    move v0, v7

    .line 305
    goto :goto_5

    :cond_b
    move v0, v7

    .line 308
    goto :goto_6

    :cond_c
    move v6, v7

    .line 311
    goto :goto_7

    :cond_d
    move-wide v0, v2

    move v2, v5

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/16 v3, 0x8

    const/4 v4, 0x4

    const/4 v2, 0x0

    .line 148
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 150
    if-eqz p1, :cond_0

    .line 151
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->IH:Lcom/android/internal/app/ProcessStats;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    .line 154
    :cond_0
    const v0, 0x7f060063

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsUi;->addPreferencesFromResource(I)V

    .line 155
    const-string v0, "procstats"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IProcessStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IProcessStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->II:Lcom/android/internal/app/IProcessStats;

    .line 157
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->aU:Landroid/os/UserManager;

    .line 158
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsUi;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IU:Landroid/preference/PreferenceGroup;

    .line 159
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IU:Landroid/preference/PreferenceGroup;

    const-string v1, "mem_status"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceGroup;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IV:Landroid/preference/Preference;

    .line 160
    if-eqz p1, :cond_2

    const-string v0, "duration"

    sget-object v1, Lcom/android/settings/applications/ProcessStatsUi;->IX:[J

    aget-wide v6, v1, v2

    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    :goto_0
    iput-wide v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    .line 161
    if-eqz p1, :cond_3

    const-string v0, "show_system"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IL:Z

    .line 162
    if-eqz p1, :cond_1

    const-string v0, "use_uss"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v2

    :cond_1
    iput-boolean v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->Il:Z

    .line 163
    if-eqz p1, :cond_4

    const-string v0, "stats_type"

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_2
    iput v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IM:I

    .line 165
    if-eqz p1, :cond_5

    const-string v0, "mem_region"

    invoke-virtual {p1, v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    :goto_3
    iput v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IN:I

    .line 167
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/applications/ProcessStatsUi;->setHasOptionsMenu(Z)V

    .line 168
    return-void

    .line 160
    :cond_2
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->IX:[J

    aget-wide v0, v0, v2

    goto :goto_0

    :cond_3
    move v0, v2

    .line 161
    goto :goto_1

    :cond_4
    move v0, v3

    .line 163
    goto :goto_2

    :cond_5
    move v0, v4

    .line 165
    goto :goto_3
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    const/4 v1, 0x0

    .line 239
    const v0, 0x7f0906fa

    invoke-interface {p1, v1, v6, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v2, Lmiui/R$drawable;->action_button_refresh_light:I

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x72

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 244
    const/4 v2, 0x5

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 246
    const v0, 0x7f09070d

    invoke-interface {p1, v0}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v2

    move v0, v1

    .line 247
    :goto_0
    const/4 v3, 0x4

    if-ge v0, v3, :cond_0

    .line 248
    iget-object v3, p0, Lcom/android/settings/applications/ProcessStatsUi;->IO:[Landroid/view/MenuItem;

    add-int/lit8 v4, v0, 0x2

    sget-object v5, Lcom/android/settings/applications/ProcessStatsUi;->IY:[I

    aget v5, v5, v0

    invoke-interface {v2, v1, v4, v1, v5}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v4

    invoke-interface {v4, v6}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v4

    aput-object v4, v3, v0

    .line 247
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 251
    :cond_0
    const/4 v0, 0x6

    const v2, 0x7f09071b

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x73

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IP:Landroid/view/MenuItem;

    .line 254
    const/4 v0, 0x7

    const v2, 0x7f09071c

    invoke-interface {p1, v1, v0, v1, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v2, 0x75

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IQ:Landroid/view/MenuItem;

    .line 257
    const v0, 0x7f09071d

    invoke-interface {p1, v0}, Landroid/view/Menu;->addSubMenu(I)Landroid/view/SubMenu;

    move-result-object v0

    .line 258
    const/16 v2, 0x8

    const v3, 0x7f09071e

    invoke-interface {v0, v1, v2, v1, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x62

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->IR:Landroid/view/MenuItem;

    .line 262
    const/16 v2, 0x9

    const v3, 0x7f09071f

    invoke-interface {v0, v1, v2, v1, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v2

    const/16 v3, 0x66

    invoke-interface {v2, v3}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v2

    invoke-interface {v2, v6}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->IS:Landroid/view/MenuItem;

    .line 266
    const/16 v2, 0xa

    const v3, 0x7f090720

    invoke-interface {v0, v1, v2, v1, v3}, Landroid/view/SubMenu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-interface {v0, v6}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IT:Landroid/view/MenuItem;

    .line 270
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->jD()V

    .line 279
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 193
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 194
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    sput-object v0, Lcom/android/settings/applications/ProcessStatsUi;->IH:Lcom/android/internal/app/ProcessStats;

    .line 197
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 317
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    .line 318
    packed-switch v2, :pswitch_data_0

    .line 338
    :pswitch_0
    const/4 v0, 0x2

    if-lt v2, v0, :cond_0

    const/4 v0, 0x6

    if-ge v2, v0, :cond_0

    .line 339
    sget-object v0, Lcom/android/settings/applications/ProcessStatsUi;->IX:[J

    add-int/lit8 v1, v2, -0x2

    aget-wide v0, v0, v1

    iput-wide v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    .line 340
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->jE()V

    .line 344
    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    :goto_0
    return v1

    .line 320
    :pswitch_1
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->mStats:Lcom/android/internal/app/ProcessStats;

    .line 321
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->jE()V

    goto :goto_0

    .line 324
    :pswitch_2
    iget-boolean v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->IL:Z

    if-nez v2, :cond_1

    move v0, v1

    :cond_1
    iput-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IL:Z

    .line 325
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->jE()V

    goto :goto_0

    .line 328
    :pswitch_3
    iget-boolean v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->Il:Z

    if-nez v2, :cond_2

    move v0, v1

    :cond_2
    iput-boolean v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->Il:Z

    .line 329
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->jE()V

    goto :goto_0

    .line 334
    :pswitch_4
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    iput v0, p0, Lcom/android/settings/applications/ProcessStatsUi;->IM:I

    .line 335
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->jE()V

    goto :goto_0

    .line 318
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_4
    .end packed-switch
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 178
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 179
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x0

    .line 201
    instance-of v0, p2, Lcom/android/settings/applications/LinearColorPreference;

    if-eqz v0, :cond_1

    .line 202
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 203
    const-string v0, "mem_times"

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->Iv:[J

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putLongArray(Ljava/lang/String;[J)V

    .line 204
    const-string v0, "mem_state_weights"

    iget-object v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->Iw:[D

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putDoubleArray(Ljava/lang/String;[D)V

    .line 205
    const-string v0, "mem_cached_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->Ix:D

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 206
    const-string v0, "mem_free_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->Iy:D

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 207
    const-string v0, "mem_zram_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->Iz:D

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 208
    const-string v0, "mem_kernel_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->IA:D

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 209
    const-string v0, "mem_native_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->IB:D

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 210
    const-string v0, "mem_total_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->IC:D

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    .line 211
    const-string v0, "use_uss"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->Il:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 212
    const-string v0, "total_time"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 213
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/gh;

    const-class v1, Lcom/android/settings/applications/ProcessStatsMemDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f09070e

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings/gh;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 216
    const/4 v6, 0x1

    .line 234
    :cond_0
    :goto_0
    return v6

    .line 219
    :cond_1
    instance-of v0, p2, Lcom/android/settings/applications/ProcessStatsPreference;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 223
    check-cast v0, Lcom/android/settings/applications/ProcessStatsPreference;

    .line 224
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 225
    const-string v1, "entry"

    invoke-virtual {v0}, Lcom/android/settings/applications/ProcessStatsPreference;->jC()Lcom/android/settings/applications/ProcStatsEntry;

    move-result-object v0

    invoke-virtual {v2, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 226
    const-string v0, "use_uss"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->Il:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 227
    const-string v0, "max_weight"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->Im:J

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 228
    const-string v0, "total_time"

    iget-wide v8, p0, Lcom/android/settings/applications/ProcessStatsUi;->mTotalTime:J

    invoke-virtual {v2, v0, v8, v9}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 232
    invoke-virtual {p0}, Lcom/android/settings/applications/ProcessStatsUi;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings/applications/ProcessStatsDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0906bd

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/android/settings/eK;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 234
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 172
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 173
    invoke-direct {p0}, Lcom/android/settings/applications/ProcessStatsUi;->jE()V

    .line 174
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 183
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 184
    const-string v0, "duration"

    iget-wide v2, p0, Lcom/android/settings/applications/ProcessStatsUi;->mDuration:J

    invoke-virtual {p1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 185
    const-string v0, "show_system"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->IL:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 186
    const-string v0, "use_uss"

    iget-boolean v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->Il:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 187
    const-string v0, "stats_type"

    iget v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->IM:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 188
    const-string v0, "mem_region"

    iget v1, p0, Lcom/android/settings/applications/ProcessStatsUi;->IN:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 189
    return-void
.end method
