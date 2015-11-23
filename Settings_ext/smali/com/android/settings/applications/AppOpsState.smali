.class public Lcom/android/settings/applications/AppOpsState;
.super Ljava/lang/Object;
.source "AppOpsState.java"


# static fields
.field public static final CX:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final CY:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final CZ:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final Da:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final Db:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final Dc:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final Dd:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

.field public static final De:Ljava/util/Comparator;


# instance fields
.field final CV:[Ljava/lang/CharSequence;

.field final CW:[Ljava/lang/CharSequence;

.field final i:Landroid/content/pm/PackageManager;

.field final mAppOps:Landroid/app/AppOpsManager;

.field final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v2, 0x7

    const/4 v6, 0x5

    const/4 v5, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 99
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    new-array v2, v2, [Z

    fill-array-data v2, :array_1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->CX:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 116
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    const/16 v1, 0x8

    new-array v1, v1, [I

    fill-array-data v1, :array_2

    const/16 v2, 0x8

    new-array v2, v2, [Z

    fill-array-data v2, :array_3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->CY:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 135
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    const/16 v1, 0xa

    new-array v1, v1, [I

    fill-array-data v1, :array_4

    const/16 v2, 0xa

    new-array v2, v2, [Z

    fill-array-data v2, :array_5

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->CZ:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 158
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v5, [I

    fill-array-data v1, :array_6

    new-array v2, v5, [Z

    fill-array-data v2, :array_7

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->Da:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 165
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v6, [I

    fill-array-data v1, :array_8

    new-array v2, v6, [Z

    fill-array-data v2, :array_9

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->Db:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 178
    new-instance v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    new-array v1, v3, [I

    const/16 v2, 0x31

    aput v2, v1, v4

    new-array v2, v3, [Z

    aput-boolean v3, v2, v4

    invoke-direct {v0, v1, v2}, Lcom/android/settings/applications/AppOpsState$OpsTemplate;-><init>([I[Z)V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->Dc:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 183
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    sget-object v1, Lcom/android/settings/applications/AppOpsState;->CX:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/settings/applications/AppOpsState;->CY:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/settings/applications/AppOpsState;->CZ:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v5

    const/4 v1, 0x3

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->Da:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    sget-object v2, Lcom/android/settings/applications/AppOpsState;->Db:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v2, v0, v1

    sget-object v1, Lcom/android/settings/applications/AppOpsState;->Dc:Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    aput-object v1, v0, v6

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->Dd:[Lcom/android/settings/applications/AppOpsState$OpsTemplate;

    .line 397
    new-instance v0, Lcom/android/settings/applications/AppOpsState$1;

    invoke-direct {v0}, Lcom/android/settings/applications/AppOpsState$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/AppOpsState;->De:Ljava/util/Comparator;

    return-void

    .line 99
    :array_0
    .array-data 4
        0x0
        0x1
        0x2
        0xa
        0xc
        0x29
        0x2a
    .end array-data

    :array_1
    .array-data 1
        0x1t
        0x1t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
    .end array-data

    .line 116
    :array_2
    .array-data 4
        0x4
        0x5
        0x6
        0x7
        0x8
        0x9
        0x36
        0x37
    .end array-data

    :array_3
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 135
    :array_4
    .array-data 4
        0xe
        0x2f
        0xf
        0x30
        0x14
        0x2e
        0x15
        0x16
        0x34
        0x35
    .end array-data

    :array_5
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data

    .line 158
    nop

    :array_6
    .array-data 4
        0x1a
        0x1b
    .end array-data

    :array_7
    .array-data 1
        0x1t
        0x1t
    .end array-data

    .line 165
    nop

    :array_8
    .array-data 4
        0xd
        0x2b
        0x2c
        0x33
        0x2d
    .end array-data

    :array_9
    .array-data 1
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 56
    iput-object p1, p0, Lcom/android/settings/applications/AppOpsState;->mContext:Landroid/content/Context;

    .line 57
    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    .line 58
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->i:Landroid/content/pm/PackageManager;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0034

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->CV:[Ljava/lang/CharSequence;

    .line 60
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0b0035

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/AppOpsState;->CW:[Ljava/lang/CharSequence;

    .line 61
    return-void
.end method

.method private a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/AppOpsState$AppEntry;
    .locals 3

    .prologue
    .line 449
    invoke-virtual {p2, p3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppOpsState$AppEntry;

    .line 450
    if-nez v0, :cond_1

    .line 451
    if-nez p4, :cond_0

    .line 453
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/AppOpsState;->i:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2200

    invoke-virtual {v0, p3, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p4

    .line 461
    :cond_0
    new-instance v0, Lcom/android/settings/applications/AppOpsState$AppEntry;

    invoke-direct {v0, p0, p4}, Lcom/android/settings/applications/AppOpsState$AppEntry;-><init>(Lcom/android/settings/applications/AppOpsState;Landroid/content/pm/ApplicationInfo;)V

    .line 462
    invoke-virtual {v0, p1}, Lcom/android/settings/applications/AppOpsState$AppEntry;->aa(Landroid/content/Context;)V

    .line 463
    invoke-virtual {p2, p3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    :cond_1
    :goto_0
    return-object v0

    .line 456
    :catch_0
    move-exception v0

    .line 457
    const-string v0, "AppOpsState"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unable to find info for package "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 458
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private a(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 419
    if-eqz p5, :cond_2

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 420
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    .line 421
    invoke-virtual {v0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->iD()Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v1

    if-ne v1, p3, :cond_2

    .line 422
    invoke-virtual {v0}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->getTime()J

    move-result-wide v4

    cmp-long v1, v4, v6

    if-eqz v1, :cond_0

    move v1, v2

    .line 423
    :goto_0
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getTime()J

    move-result-wide v4

    cmp-long v4, v4, v6

    if-eqz v4, :cond_1

    .line 424
    :goto_1
    if-ne v1, v2, :cond_2

    .line 427
    invoke-virtual {v0, p4}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->a(Landroid/app/AppOpsManager$OpEntry;)V

    .line 441
    :goto_2
    return-void

    :cond_0
    move v1, v3

    .line 422
    goto :goto_0

    :cond_1
    move v2, v3

    .line 423
    goto :goto_1

    .line 432
    :cond_2
    invoke-virtual {p4}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v0

    invoke-virtual {p3, v0}, Lcom/android/settings/applications/AppOpsState$AppEntry;->at(I)Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    move-result-object v0

    .line 433
    if-eqz v0, :cond_3

    .line 434
    invoke-virtual {v0, p4}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;->a(Landroid/app/AppOpsManager$OpEntry;)V

    goto :goto_2

    .line 437
    :cond_3
    new-instance v0, Lcom/android/settings/applications/AppOpsState$AppOpEntry;

    invoke-direct {v0, p2, p4, p3, p6}, Lcom/android/settings/applications/AppOpsState$AppOpEntry;-><init>(Landroid/app/AppOpsManager$PackageOps;Landroid/app/AppOpsManager$OpEntry;Lcom/android/settings/applications/AppOpsState$AppEntry;I)V

    .line 440
    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method


# virtual methods
.method public a(Lcom/android/settings/applications/AppOpsState$OpsTemplate;)Ljava/util/List;
    .locals 2

    .prologue
    .line 444
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/settings/applications/AppOpsState;->a(Lcom/android/settings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/android/settings/applications/AppOpsState$OpsTemplate;ILjava/lang/String;)Ljava/util/List;
    .locals 27

    .prologue
    .line 469
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/applications/AppOpsState;->mContext:Landroid/content/Context;

    move-object/from16 v21, v0

    .line 471
    new-instance v22, Ljava/util/HashMap;

    invoke-direct/range {v22 .. v22}, Ljava/util/HashMap;-><init>()V

    .line 472
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 474
    new-instance v23, Ljava/util/ArrayList;

    invoke-direct/range {v23 .. v23}, Ljava/util/ArrayList;-><init>()V

    .line 475
    new-instance v24, Ljava/util/ArrayList;

    invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V

    .line 476
    const/16 v4, 0x40

    new-array v0, v4, [I

    move-object/from16 v25, v0

    .line 477
    const/4 v4, 0x0

    :goto_0
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->Dp:[I

    array-length v6, v6

    if-ge v4, v6, :cond_1

    .line 478
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->Dq:[Z

    aget-boolean v6, v6, v4

    if-eqz v6, :cond_0

    .line 479
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->Dp:[I

    aget v6, v6, v4

    invoke-static {v6}, Landroid/app/AppOpsManager;->opToPermission(I)Ljava/lang/String;

    move-result-object v6

    .line 480
    if-eqz v6, :cond_0

    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 481
    move-object/from16 v0, v23

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 482
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->Dp:[I

    aget v6, v6, v4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    move-object/from16 v0, v24

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 483
    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->Dp:[I

    aget v6, v6, v4

    aput v4, v25, v6

    .line 477
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 489
    :cond_1
    if-eqz p3, :cond_3

    .line 490
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->Dp:[I

    move/from16 v0, p2

    move-object/from16 v1, p3

    invoke-virtual {v4, v0, v1, v6}, Landroid/app/AppOpsManager;->getOpsForPackage(ILjava/lang/String;[I)Ljava/util/List;

    move-result-object v4

    move-object v13, v4

    .line 495
    :goto_1
    if-eqz v13, :cond_8

    .line 496
    const/4 v4, 0x0

    move v11, v4

    :goto_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    if-ge v11, v4, :cond_8

    .line 497
    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/app/AppOpsManager$PackageOps;

    .line 498
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v7, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v4, v7}, Lcom/android/settings/applications/AppOpsState;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v7

    .line 499
    if-nez v7, :cond_4

    .line 496
    :cond_2
    add-int/lit8 v4, v11, 0x1

    move v11, v4

    goto :goto_2

    .line 492
    :cond_3
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/android/settings/applications/AppOpsState$OpsTemplate;->Dp:[I

    invoke-virtual {v4, v6}, Landroid/app/AppOpsManager;->getPackagesForOps([I)Ljava/util/List;

    move-result-object v4

    move-object v13, v4

    goto :goto_1

    .line 502
    :cond_4
    const/4 v4, 0x0

    move v12, v4

    :goto_3
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v12, v4, :cond_2

    .line 503
    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getOps()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/AppOpsManager$OpEntry;

    .line 504
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v9

    invoke-virtual {v6}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v4, v9, v10}, Landroid/app/AppOpsManager;->isControlAllowed(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 506
    if-nez p3, :cond_6

    const/4 v9, 0x1

    :goto_4
    if-nez p3, :cond_7

    const/4 v10, 0x0

    :goto_5
    move-object/from16 v4, p0

    invoke-direct/range {v4 .. v10}, Lcom/android/settings/applications/AppOpsState;->a(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    .line 502
    :cond_5
    add-int/lit8 v4, v12, 0x1

    move v12, v4

    goto :goto_3

    .line 506
    :cond_6
    const/4 v9, 0x0

    goto :goto_4

    :cond_7
    invoke-virtual {v8}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v4

    aget v10, v25, v4

    goto :goto_5

    .line 515
    :cond_8
    if-eqz p3, :cond_a

    .line 516
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 518
    :try_start_0
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/AppOpsState;->i:Landroid/content/pm/PackageManager;

    const/16 v7, 0x1000

    move-object/from16 v0, p3

    invoke-virtual {v6, v0, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v6

    .line 519
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v4

    .line 527
    :goto_6
    const/4 v4, 0x0

    move v15, v4

    :goto_7
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v4

    if-ge v15, v4, :cond_13

    .line 528
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    .line 529
    if-nez p3, :cond_15

    iget-object v7, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_15

    .line 531
    :try_start_1
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings/applications/AppOpsState;->i:Landroid/content/pm/PackageManager;

    iget-object v4, v4, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    const/16 v8, 0x1000

    invoke-virtual {v7, v4, v8}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v4

    move-object/from16 v16, v4

    .line 537
    :goto_8
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v7, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v22

    invoke-direct {v0, v1, v2, v4, v7}, Lcom/android/settings/applications/AppOpsState;->a(Landroid/content/Context;Ljava/util/HashMap;Ljava/lang/String;Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/AppOpsState$AppEntry;

    move-result-object v26

    .line 539
    if-nez v26, :cond_b

    .line 527
    :cond_9
    add-int/lit8 v4, v15, 0x1

    move v15, v4

    goto :goto_7

    .line 520
    :catch_0
    move-exception v6

    move-object v6, v4

    .line 521
    goto :goto_6

    .line 523
    :cond_a
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [Ljava/lang/String;

    .line 524
    move-object/from16 v0, v23

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 525
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/settings/applications/AppOpsState;->i:Landroid/content/pm/PackageManager;

    const/4 v7, 0x0

    invoke-virtual {v6, v4, v7}, Landroid/content/pm/PackageManager;->getPackagesHoldingPermissions([Ljava/lang/String;I)Ljava/util/List;

    move-result-object v4

    move-object v6, v4

    goto :goto_6

    .line 532
    :catch_1
    move-exception v4

    .line 534
    invoke-interface {v6, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/PackageInfo;

    move-object/from16 v16, v4

    goto :goto_8

    .line 542
    :cond_b
    const/4 v8, 0x0

    .line 543
    const/4 v7, 0x0

    .line 544
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    if-eqz v4, :cond_9

    .line 545
    const/4 v4, 0x0

    move/from16 v20, v4

    :goto_9
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    array-length v4, v4

    move/from16 v0, v20

    if-ge v0, v4, :cond_9

    .line 546
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    if-eqz v4, :cond_d

    .line 547
    move-object/from16 v0, v16

    iget-object v4, v0, Landroid/content/pm/PackageInfo;->requestedPermissionsFlags:[I

    aget v4, v4, v20

    and-int/lit8 v4, v4, 0x2

    if-nez v4, :cond_d

    .line 545
    :cond_c
    add-int/lit8 v4, v20, 0x1

    move/from16 v20, v4

    goto :goto_9

    .line 556
    :cond_d
    const/4 v4, 0x0

    move/from16 v19, v4

    :goto_a
    invoke-virtual/range {v23 .. v23}, Ljava/util/ArrayList;->size()I

    move-result v4

    move/from16 v0, v19

    if-ge v0, v4, :cond_c

    .line 557
    move-object/from16 v0, v23

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    aget-object v9, v9, v20

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_f

    .line 556
    :cond_e
    :goto_b
    add-int/lit8 v4, v19, 0x1

    move/from16 v19, v4

    goto :goto_a

    .line 562
    :cond_f
    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    move-object/from16 v0, v26

    invoke-virtual {v0, v4}, Lcom/android/settings/applications/AppOpsState$AppEntry;->as(I)Z

    move-result v4

    if-nez v4, :cond_e

    .line 565
    if-nez v8, :cond_14

    .line 566
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 567
    new-instance v4, Landroid/app/AppOpsManager$PackageOps;

    move-object/from16 v0, v16

    iget-object v8, v0, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v16

    iget-object v9, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v9, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {v4, v8, v9, v7}, Landroid/app/AppOpsManager$PackageOps;-><init>(Ljava/lang/String;ILjava/util/List;)V

    move-object/from16 v17, v4

    move-object/from16 v18, v7

    .line 571
    :goto_c
    new-instance v7, Landroid/app/AppOpsManager$OpEntry;

    move-object/from16 v0, v24

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v8

    const/4 v9, 0x0

    const-wide/16 v10, 0x0

    const-wide/16 v12, 0x0

    const/4 v14, 0x0

    invoke-direct/range {v7 .. v14}, Landroid/app/AppOpsManager$OpEntry;-><init>(IIJJI)V

    .line 574
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings/applications/AppOpsState;->mAppOps:Landroid/app/AppOpsManager;

    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v8

    invoke-virtual/range {v17 .. v17}, Landroid/app/AppOpsManager$PackageOps;->getPackageName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v4, v8, v9}, Landroid/app/AppOpsManager;->isControlAllowed(ILjava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 576
    move-object/from16 v0, v18

    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 577
    if-nez p3, :cond_11

    const/4 v13, 0x1

    :goto_d
    if-nez p3, :cond_12

    const/4 v14, 0x0

    :goto_e
    move-object/from16 v8, p0

    move-object v9, v5

    move-object/from16 v10, v17

    move-object/from16 v11, v26

    move-object v12, v7

    invoke-direct/range {v8 .. v14}, Lcom/android/settings/applications/AppOpsState;->a(Ljava/util/List;Landroid/app/AppOpsManager$PackageOps;Lcom/android/settings/applications/AppOpsState$AppEntry;Landroid/app/AppOpsManager$OpEntry;ZI)V

    :cond_10
    move-object/from16 v7, v17

    move-object/from16 v8, v18

    goto :goto_b

    :cond_11
    const/4 v13, 0x0

    goto :goto_d

    :cond_12
    invoke-virtual {v7}, Landroid/app/AppOpsManager$OpEntry;->getOp()I

    move-result v4

    aget v14, v25, v4

    goto :goto_e

    .line 591
    :cond_13
    sget-object v4, Lcom/android/settings/applications/AppOpsState;->De:Ljava/util/Comparator;

    invoke-static {v5, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 594
    return-object v5

    :cond_14
    move-object/from16 v17, v7

    move-object/from16 v18, v8

    goto :goto_c

    :cond_15
    move-object/from16 v16, v4

    goto/16 :goto_8
.end method
