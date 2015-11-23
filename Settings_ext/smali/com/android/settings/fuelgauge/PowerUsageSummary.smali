.class public Lcom/android/settings/fuelgauge/PowerUsageSummary;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "PowerUsageSummary.java"


# instance fields
.field private IM:I

.field private IU:Landroid/preference/PreferenceGroup;

.field private aU:Landroid/os/UserManager;

.field private aaR:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

.field private aaS:Ljava/lang/String;

.field private aaT:Ljava/lang/String;

.field private aag:Lcom/android/internal/os/BatteryStatsHelper;

.field mHandler:Landroid/os/Handler;

.field private wS:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->IM:I

    .line 115
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$1;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->wS:Landroid/content/BroadcastReceiver;

    .line 395
    new-instance v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;

    invoke-direct {v0, p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$2;-><init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic a(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Landroid/os/UserManager;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aU:Landroid/os/UserManager;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/fuelgauge/PowerUsageSummary;Landroid/content/Intent;)Z
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->r(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method

.method static synthetic b(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Lcom/android/internal/os/BatteryStatsHelper;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aag:Lcom/android/internal/os/BatteryStatsHelper;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/fuelgauge/PowerUsageSummary;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->jE()V

    return-void
.end method

.method private jE()V
    .locals 18

    .prologue
    .line 306
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->IU:Landroid/preference/PreferenceGroup;

    invoke-virtual {v2}, Landroid/preference/PreferenceGroup;->removeAll()V

    .line 307
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->IU:Landroid/preference/PreferenceGroup;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->setOrderingAsAdded(Z)V

    .line 308
    new-instance v2, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aag:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aag:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v5}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;-><init>(Landroid/content/Context;Landroid/os/BatteryStats;Landroid/content/Intent;)V

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aaR:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    .line 310
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aaR:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->setOrder(I)V

    .line 311
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->IU:Landroid/preference/PreferenceGroup;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aaR:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    invoke-virtual {v2, v3}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 312
    const/4 v4, 0x0

    .line 314
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aag:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getPowerProfile()Lcom/android/internal/os/PowerProfile;

    move-result-object v2

    .line 315
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aag:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v3}, Lcom/android/internal/os/BatteryStatsHelper;->getStats()Landroid/os/BatteryStats;

    move-result-object v3

    .line 316
    const-string v5, "screen.full"

    invoke-virtual {v2, v5}, Lcom/android/internal/os/PowerProfile;->getAveragePower(Ljava/lang/String;)D

    move-result-wide v6

    .line 317
    const-wide/high16 v8, 0x4024000000000000L    # 10.0

    cmpl-double v2, v6, v8

    if-ltz v2, :cond_c

    .line 318
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aU:Landroid/os/UserManager;

    invoke-virtual {v2}, Landroid/os/UserManager;->getUserProfiles()Ljava/util/List;

    move-result-object v2

    .line 320
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aag:Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v2}, Lcom/android/internal/os/BatteryStatsHelper;->refreshStats(ILjava/util/List;)V

    .line 322
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aag:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v2}, Lcom/android/internal/os/BatteryStatsHelper;->getUsageList()Ljava/util/List;

    move-result-object v6

    .line 324
    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->IM:I

    invoke-virtual {v3, v2}, Landroid/os/BatteryStats;->getDischargeAmount(I)I

    move-result v2

    move v3, v2

    .line 325
    :goto_0
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    .line 326
    const/4 v2, 0x0

    move v5, v2

    :goto_1
    if-ge v5, v7, :cond_c

    .line 327
    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/os/BatterySipper;

    .line 328
    iget-wide v8, v2, Lcom/android/internal/os/BatterySipper;->value:D

    const-wide v10, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_2

    move v2, v4

    .line 326
    :cond_0
    :goto_2
    add-int/lit8 v4, v5, 0x1

    move v5, v4

    move v4, v2

    goto :goto_1

    .line 324
    :cond_1
    const/4 v2, 0x0

    move v3, v2

    goto :goto_0

    .line 331
    :cond_2
    iget-wide v8, v2, Lcom/android/internal/os/BatterySipper;->value:D

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aag:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v10}, Lcom/android/internal/os/BatteryStatsHelper;->getTotalPower()D

    move-result-wide v10

    div-double/2addr v8, v10

    int-to-double v10, v3

    mul-double/2addr v8, v10

    .line 333
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    add-double/2addr v10, v8

    double-to-int v10, v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_3

    move v2, v4

    .line 334
    goto :goto_2

    .line 336
    :cond_3
    iget-object v10, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v11, Lcom/android/internal/os/BatterySipper$DrainType;->OVERCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v10, v11, :cond_6

    .line 339
    iget-wide v10, v2, Lcom/android/internal/os/BatterySipper;->value:D

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aag:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    mul-double/2addr v12, v14

    const-wide/high16 v14, 0x4008000000000000L    # 3.0

    div-double/2addr v12, v14

    cmpg-double v10, v10, v12

    if-gez v10, :cond_4

    move v2, v4

    .line 340
    goto :goto_2

    .line 342
    :cond_4
    const-wide/high16 v10, 0x4024000000000000L    # 10.0

    cmpg-double v10, v8, v10

    if-gez v10, :cond_5

    move v2, v4

    .line 343
    goto :goto_2

    .line 345
    :cond_5
    const-string v10, "user"

    sget-object v11, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    move v2, v4

    .line 346
    goto :goto_2

    .line 349
    :cond_6
    iget-object v10, v2, Lcom/android/internal/os/BatterySipper;->drainType:Lcom/android/internal/os/BatterySipper$DrainType;

    sget-object v11, Lcom/android/internal/os/BatterySipper$DrainType;->UNACCOUNTED:Lcom/android/internal/os/BatterySipper$DrainType;

    if-ne v10, v11, :cond_9

    .line 352
    iget-wide v10, v2, Lcom/android/internal/os/BatterySipper;->value:D

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aag:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v12}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxRealPower()D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    cmpg-double v10, v10, v12

    if-gez v10, :cond_7

    move v2, v4

    .line 353
    goto :goto_2

    .line 355
    :cond_7
    const-wide/high16 v10, 0x4014000000000000L    # 5.0

    cmpg-double v10, v8, v10

    if-gez v10, :cond_8

    move v2, v4

    .line 356
    goto :goto_2

    .line 358
    :cond_8
    const-string v10, "user"

    sget-object v11, Landroid/os/Build;->TYPE:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_9

    move v2, v4

    .line 359
    goto :goto_2

    .line 362
    :cond_9
    new-instance v4, Landroid/os/UserHandle;

    invoke-virtual {v2}, Lcom/android/internal/os/BatterySipper;->getUid()I

    move-result v10

    invoke-static {v10}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    invoke-direct {v4, v10}, Landroid/os/UserHandle;-><init>(I)V

    .line 363
    new-instance v10, Lcom/android/settings/fuelgauge/BatteryEntry;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v11

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aU:Landroid/os/UserManager;

    invoke-direct {v10, v11, v12, v13, v2}, Lcom/android/settings/fuelgauge/BatteryEntry;-><init>(Landroid/content/Context;Landroid/os/Handler;Landroid/os/UserManager;Lcom/android/internal/os/BatterySipper;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aU:Landroid/os/UserManager;

    invoke-virtual {v10}, Lcom/android/settings/fuelgauge/BatteryEntry;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-virtual {v11, v12, v4}, Landroid/os/UserManager;->getBadgedIconForUser(Landroid/graphics/drawable/Drawable;Landroid/os/UserHandle;)Landroid/graphics/drawable/Drawable;

    move-result-object v11

    .line 366
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aU:Landroid/os/UserManager;

    invoke-virtual {v10}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v13

    invoke-virtual {v12, v13, v4}, Landroid/os/UserManager;->getBadgedLabelForUser(Ljava/lang/CharSequence;Landroid/os/UserHandle;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 368
    new-instance v12, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v13

    invoke-direct {v12, v13, v11, v4, v10}, Lcom/android/settings/fuelgauge/PowerGaugePreference;-><init>(Landroid/content/Context;Landroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;Lcom/android/settings/fuelgauge/BatteryEntry;)V

    .line 371
    iget-wide v14, v2, Lcom/android/internal/os/BatterySipper;->value:D

    const-wide/high16 v16, 0x4059000000000000L    # 100.0

    mul-double v14, v14, v16

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aag:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v4}, Lcom/android/internal/os/BatteryStatsHelper;->getMaxPower()D

    move-result-wide v16

    div-double v14, v14, v16

    .line 372
    iput-wide v8, v2, Lcom/android/internal/os/BatterySipper;->percent:D

    .line 373
    invoke-virtual {v10}, Lcom/android/settings/fuelgauge/BatteryEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setTitle(Ljava/lang/CharSequence;)V

    .line 374
    add-int/lit8 v4, v5, 0x1

    invoke-virtual {v12, v4}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setOrder(I)V

    .line 375
    invoke-virtual {v12, v14, v15, v8, v9}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->a(DD)V

    .line 376
    iget-object v4, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    if-eqz v4, :cond_a

    .line 377
    iget-object v2, v2, Lcom/android/internal/os/BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    invoke-virtual {v2}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v12, v2}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->setKey(Ljava/lang/String;)V

    .line 379
    :cond_a
    const/4 v2, 0x1

    .line 380
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->IU:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4, v12}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 381
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->IU:Landroid/preference/PreferenceGroup;

    invoke-virtual {v4}, Landroid/preference/PreferenceGroup;->getPreferenceCount()I

    move-result v4

    const/16 v8, 0xb

    if-le v4, v8, :cond_0

    .line 386
    :goto_3
    if-nez v2, :cond_b

    .line 387
    invoke-direct/range {p0 .. p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->px()V

    .line 390
    :cond_b
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->pj()V

    .line 391
    return-void

    :cond_c
    move v2, v4

    goto :goto_3
.end method

.method private px()V
    .locals 3

    .prologue
    .line 275
    new-instance v0, Landroid/preference/Preference;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 276
    const v1, 0x7f0906a2

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setTitle(I)V

    .line 277
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aaR:Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;->aB(Z)V

    .line 278
    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->IU:Landroid/preference/PreferenceGroup;

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceGroup;->addPreference(Landroid/preference/Preference;)Z

    .line 279
    return-void
.end method

.method private r(Landroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 282
    if-eqz p1, :cond_1

    .line 283
    invoke-static {p1}, Lcom/android/settings/hl;->n(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v0

    .line 284
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-static {v1, p1}, Lcom/android/settings/hl;->a(Landroid/content/res/Resources;Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v1

    .line 286
    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aaS:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aaT:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 287
    :cond_0
    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aaS:Ljava/lang/String;

    .line 288
    iput-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aaT:Ljava/lang/String;

    .line 289
    const/4 v0, 0x1

    .line 292
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onAttach(Landroid/app/Activity;)V
    .locals 2

    .prologue
    .line 131
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 132
    const-string v0, "user"

    invoke-virtual {p1, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aU:Landroid/os/UserManager;

    .line 133
    new-instance v0, Lcom/android/internal/os/BatteryStatsHelper;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lcom/android/internal/os/BatteryStatsHelper;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aag:Lcom/android/internal/os/BatteryStatsHelper;

    .line 134
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 138
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 139
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aag:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0, p1}, Lcom/android/internal/os/BatteryStatsHelper;->create(Landroid/os/Bundle;)V

    .line 141
    const v0, 0x7f06005d

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->addPreferencesFromResource(I)V

    .line 142
    const-string v0, "app_list"

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->IU:Landroid/preference/PreferenceGroup;

    .line 143
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->setHasOptionsMenu(Z)V

    .line 144
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 225
    const/4 v0, 0x2

    const v1, 0x7f0906fa

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    sget v1, Lmiui/R$drawable;->action_button_refresh_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    move-result-object v0

    const/16 v1, 0x72

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setAlphabeticShortcut(C)Landroid/view/MenuItem;

    move-result-object v0

    .line 230
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 233
    const/4 v0, 0x3

    const v1, 0x7f0906fd

    invoke-interface {p1, v3, v0, v3, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 234
    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 237
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f09093b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    const/4 v1, 0x4

    const v2, 0x7f090934

    invoke-interface {p1, v3, v1, v3, v2}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v1

    .line 239
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2, v1, v0}, Lcom/android/settings/cF;->a(Landroid/content/Context;Landroid/view/MenuItem;Ljava/lang/String;)Z

    .line 241
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 181
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 182
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->isChangingConfigurations()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aag:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->storeState()V

    .line 184
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->pl()V

    .line 186
    :cond_0
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 8

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x0

    const/4 v7, 0x1

    .line 245
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 270
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 247
    :pswitch_0
    iget v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->IM:I

    if-nez v0, :cond_0

    .line 248
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->IM:I

    .line 252
    :goto_1
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->jE()V

    move v0, v7

    .line 253
    goto :goto_0

    .line 250
    :cond_0
    iput v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->IM:I

    goto :goto_1

    .line 255
    :pswitch_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aag:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 256
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->jE()V

    .line 257
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    move v0, v7

    .line 258
    goto :goto_0

    .line 263
    :pswitch_2
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings/fuelgauge/BatterySaverSettings;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0906fd

    move-object v4, v2

    move-object v5, v2

    invoke-static/range {v0 .. v6}, Lcom/android/settings/eK;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    move v0, v7

    .line 266
    goto :goto_0

    .line 245
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 167
    invoke-static {}, Lcom/android/settings/fuelgauge/BatteryEntry;->pk()V

    .line 168
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 169
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->wS:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 170
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    .line 171
    return-void
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x0

    .line 190
    instance-of v0, p2, Lcom/android/settings/fuelgauge/BatteryHistoryPreference;

    if-eqz v0, :cond_1

    .line 191
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aag:Lcom/android/internal/os/BatteryStatsHelper;

    const-string v1, "tmp_bat_history.bin"

    invoke-virtual {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->storeStatsHistoryInFile(Ljava/lang/String;)V

    .line 192
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 193
    const-string v0, "stats"

    const-string v1, "tmp_bat_history.bin"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v0, "broadcast"

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aag:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v1}, Lcom/android/internal/os/BatteryStatsHelper;->getBatteryBroadcast()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 199
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-class v1, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f0906bc

    move-object v5, v4

    invoke-static/range {v0 .. v6}, Lcom/android/settings/eK;->a(Landroid/app/Activity;Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 202
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    .line 213
    :cond_0
    :goto_0
    return v6

    .line 204
    :cond_1
    instance-of v0, p2, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    if-eqz v0, :cond_0

    move-object v0, p2

    .line 207
    check-cast v0, Lcom/android/settings/fuelgauge/PowerGaugePreference;

    .line 208
    invoke-virtual {v0}, Lcom/android/settings/fuelgauge/PowerGaugePreference;->ps()Lcom/android/settings/fuelgauge/BatteryEntry;

    move-result-object v0

    .line 211
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aag:Lcom/android/internal/os/BatteryStatsHelper;

    iget v3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->IM:I

    const/4 v4, 0x1

    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/settings/fuelgauge/PowerUsageDetail;->a(Landroid/app/Activity;Lcom/android/internal/os/BatteryStatsHelper;ILcom/android/settings/fuelgauge/BatteryEntry;Z)V

    .line 213
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v6

    goto :goto_0
.end method

.method public onResume()V
    .locals 5

    .prologue
    const/16 v4, 0x64

    .line 154
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 155
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "tmp_bat_history.bin"

    invoke-static {v0, v1}, Lcom/android/internal/os/BatteryStatsHelper;->dropFile(Landroid/content/Context;Ljava/lang/String;)V

    .line 156
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->wS:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->r(Landroid/content/Intent;)Z

    .line 158
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 159
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 160
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aag:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 162
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->jE()V

    .line 163
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStart()V

    .line 149
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->aag:Lcom/android/internal/os/BatteryStatsHelper;

    invoke-virtual {v0}, Lcom/android/internal/os/BatteryStatsHelper;->clearStats()V

    .line 150
    return-void
.end method

.method public onStop()V
    .locals 2

    .prologue
    .line 175
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onStop()V

    .line 176
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 177
    return-void
.end method
