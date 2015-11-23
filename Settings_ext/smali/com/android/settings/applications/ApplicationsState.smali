.class public Lcom/android/settings/applications/ApplicationsState;
.super Ljava/lang/Object;
.source "ApplicationsState.java"


# static fields
.field static final EN:Ljava/lang/Object;

.field static EO:Lcom/android/settings/applications/ApplicationsState;

.field static final Eq:Ljava/util/regex/Pattern;

.field public static final Er:Ljava/util/Comparator;

.field public static final Es:Ljava/util/Comparator;

.field public static final Et:Ljava/util/Comparator;

.field public static final Eu:Ljava/util/Comparator;

.field public static final Ev:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field public static final Ew:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field public static final Ex:Lcom/android/settings/applications/ApplicationsState$AppFilter;

.field public static final Ey:Lcom/android/settings/applications/ApplicationsState$AppFilter;


# instance fields
.field EA:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

.field EB:Z

.field final EC:Ljava/util/ArrayList;

.field final ED:Ljava/util/ArrayList;

.field final EE:Lcom/android/settings/applications/InterestingConfigChanges;

.field final EF:Ljava/util/HashMap;

.field final EG:Ljava/util/ArrayList;

.field EH:Ljava/util/List;

.field EI:J

.field EJ:Ljava/lang/String;

.field EK:Z

.field final EL:Ljava/util/ArrayList;

.field final EM:Lcom/android/settings/applications/ApplicationsState$MainHandler;

.field final EP:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

.field final Ez:I

.field final i:Landroid/content/pm/PackageManager;

.field final j:Landroid/os/HandlerThread;

.field final mContext:Landroid/content/Context;

.field mResumed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 68
    const-string v0, "\\p{InCombiningDiacriticalMarks}+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->Eq:Ljava/util/regex/Pattern;

    .line 227
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$1;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$1;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->Er:Ljava/util/Comparator;

    .line 244
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$2;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$2;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->Es:Ljava/util/Comparator;

    .line 255
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$3;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$3;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->Et:Ljava/util/Comparator;

    .line 266
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$4;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$4;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->Eu:Ljava/util/Comparator;

    .line 277
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$5;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$5;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->Ev:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 292
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$6;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$6;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->Ew:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 306
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$7;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$7;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->Ex:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 319
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$8;

    invoke-direct {v0}, Lcom/android/settings/applications/ApplicationsState$8;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->Ey:Lcom/android/settings/applications/ApplicationsState$AppFilter;

    .line 480
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->EN:Ljava/lang/Object;

    return-void
.end method

.method private constructor <init>(Landroid/app/Application;)V
    .locals 4

    .prologue
    const-wide/16 v2, 0x1

    .line 494
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 342
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EC:Ljava/util/ArrayList;

    .line 343
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->ED:Ljava/util/ArrayList;

    .line 344
    new-instance v0, Lcom/android/settings/applications/InterestingConfigChanges;

    invoke-direct {v0}, Lcom/android/settings/applications/InterestingConfigChanges;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EE:Lcom/android/settings/applications/InterestingConfigChanges;

    .line 345
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    .line 346
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EG:Ljava/util/ArrayList;

    .line 347
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EH:Ljava/util/List;

    .line 348
    iput-wide v2, p0, Lcom/android/settings/applications/ApplicationsState;->EI:J

    .line 353
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EL:Ljava/util/ArrayList;

    .line 476
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$MainHandler;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsState$MainHandler;-><init>(Lcom/android/settings/applications/ApplicationsState;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EM:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    .line 495
    iput-object p1, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    .line 496
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->i:Landroid/content/pm/PackageManager;

    .line 497
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "ApplicationsState.Loader"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->j:Landroid/os/HandlerThread;

    .line 499
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->j:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 500
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->j:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;-><init>(Lcom/android/settings/applications/ApplicationsState;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EP:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    .line 503
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-nez v0, :cond_0

    .line 504
    const v0, 0xa200

    iput v0, p0, Lcom/android/settings/applications/ApplicationsState;->Ez:I

    .line 526
    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    monitor-enter v1

    .line 528
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/lang/Object;->wait(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 531
    :goto_1
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    return-void

    .line 508
    :cond_0
    const v0, 0x8200

    iput v0, p0, Lcom/android/settings/applications/ApplicationsState;->Ez:I

    goto :goto_0

    .line 531
    :catchall_0
    move-exception v0

    :try_start_2
    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v0

    .line 529
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method private a(Landroid/content/pm/PackageStats;)J
    .locals 4

    .prologue
    .line 939
    if-eqz p1, :cond_0

    .line 940
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->codeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->dataSize:J

    add-long/2addr v0, v2

    .line 942
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->a(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method public static a(Landroid/app/Application;)Lcom/android/settings/applications/ApplicationsState;
    .locals 2

    .prologue
    .line 486
    sget-object v1, Lcom/android/settings/applications/ApplicationsState;->EN:Ljava/lang/Object;

    monitor-enter v1

    .line 487
    :try_start_0
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->EO:Lcom/android/settings/applications/ApplicationsState;

    if-nez v0, :cond_0

    .line 488
    new-instance v0, Lcom/android/settings/applications/ApplicationsState;

    invoke-direct {v0, p0}, Lcom/android/settings/applications/ApplicationsState;-><init>(Landroid/app/Application;)V

    sput-object v0, Lcom/android/settings/applications/ApplicationsState;->EO:Lcom/android/settings/applications/ApplicationsState;

    .line 490
    :cond_0
    sget-object v0, Lcom/android/settings/applications/ApplicationsState;->EO:Lcom/android/settings/applications/ApplicationsState;

    monitor-exit v1

    return-object v0

    .line 491
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method static synthetic a(Lcom/android/settings/applications/ApplicationsState;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Lcom/android/settings/applications/ApplicationsState;->m(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private b(Landroid/content/pm/PackageStats;)J
    .locals 4

    .prologue
    .line 946
    if-eqz p1, :cond_0

    .line 949
    iget-wide v0, p1, Landroid/content/pm/PackageStats;->externalCodeSize:J

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalDataSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalCacheSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalMediaSize:J

    add-long/2addr v0, v2

    iget-wide v2, p1, Landroid/content/pm/PackageStats;->externalObbSize:J

    add-long/2addr v0, v2

    .line 953
    :goto_0
    return-wide v0

    :cond_0
    const-wide/16 v0, -0x2

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/applications/ApplicationsState;Landroid/content/pm/PackageStats;)J
    .locals 2

    .prologue
    .line 46
    invoke-direct {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->b(Landroid/content/pm/PackageStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method private m(J)Ljava/lang/String;
    .locals 3

    .prologue
    .line 957
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 958
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    .line 960
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static normalize(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 72
    sget-object v0, Ljava/text/Normalizer$Form;->NFD:Ljava/text/Normalizer$Form;

    invoke-static {p0, v0}, Ljava/text/Normalizer;->normalize(Ljava/lang/CharSequence;Ljava/text/Normalizer$Form;)Ljava/lang/String;

    move-result-object v0

    .line 73
    sget-object v1, Lcom/android/settings/applications/ApplicationsState;->Eq:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/settings/applications/ApplicationsState$Callbacks;)Lcom/android/settings/applications/ApplicationsState$Session;
    .locals 3

    .prologue
    .line 696
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$Session;

    invoke-direct {v0, p0, p1}, Lcom/android/settings/applications/ApplicationsState$Session;-><init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ApplicationsState$Callbacks;)V

    .line 697
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    monitor-enter v1

    .line 698
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->EC:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 699
    monitor-exit v1

    .line 700
    return-object v0

    .line 699
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method ad(Ljava/lang/String;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 5

    .prologue
    .line 787
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    monitor-enter v3

    .line 788
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 791
    if-nez v0, :cond_0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 792
    const/4 v1, 0x0

    move v2, v1

    :goto_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->EH:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v2, v1, :cond_0

    .line 793
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->EH:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 794
    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 795
    invoke-virtual {p0, v1}, Lcom/android/settings/applications/ApplicationsState;->c(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;

    move-result-object v0

    .line 801
    :cond_0
    monitor-exit v3

    return-object v0

    .line 792
    :cond_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 802
    :catchall_0
    move-exception v0

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method addPackage(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 850
    :try_start_0
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    monitor-enter v1
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 853
    :try_start_1
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    if-nez v0, :cond_0

    .line 858
    monitor-exit v1

    .line 884
    :goto_0
    return-void

    .line 860
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->af(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_1

    .line 863
    monitor-exit v1

    goto :goto_0

    .line 881
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_2 .. :try_end_2} :catch_0

    .line 882
    :catch_0
    move-exception v0

    goto :goto_0

    .line 865
    :cond_1
    :try_start_3
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->i:Landroid/content/pm/PackageManager;

    iget v2, p0, Lcom/android/settings/applications/ApplicationsState;->Ez:I

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 866
    iget-boolean v2, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v2, :cond_3

    .line 867
    iget v2, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v3, 0x3

    if-eq v2, v3, :cond_2

    .line 869
    monitor-exit v1

    goto :goto_0

    .line 871
    :cond_2
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/settings/applications/ApplicationsState;->EB:Z

    .line 873
    :cond_3
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->EH:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 874
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EP:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_4

    .line 875
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EP:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    .line 877
    :cond_4
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EM:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 878
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EM:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 881
    :cond_5
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method ae(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 817
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    monitor-enter v1

    .line 818
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 819
    if-eqz v0, :cond_0

    .line 820
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->i:Landroid/content/pm/PackageManager;

    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->EP:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    iget-object v2, v2, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->Fc:Landroid/content/pm/IPackageStatsObserver$Stub;

    invoke-virtual {v0, p1, v2}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    .line 823
    :cond_0
    monitor-exit v1

    .line 824
    return-void

    .line 823
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method af(Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 840
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v1, v0, -0x1

    :goto_0
    if-ltz v1, :cond_1

    .line 841
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 845
    :goto_1
    return v0

    .line 840
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 845
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method ag(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 887
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    monitor-enter v2

    .line 889
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->af(Ljava/lang/String;)I

    move-result v3

    .line 891
    if-ltz v3, :cond_2

    .line 892
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 894
    if-eqz v0, :cond_0

    .line 895
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    invoke-virtual {v4, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 896
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->EG:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 898
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EH:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 899
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->EH:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 900
    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_1

    .line 901
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->EB:Z

    .line 902
    :goto_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 903
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EH:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    iget-boolean v0, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v0, :cond_3

    .line 904
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->EB:Z

    .line 909
    :cond_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EM:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 910
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EM:Lcom/android/settings/applications/ApplicationsState$MainHandler;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/ApplicationsState$MainHandler;->sendEmptyMessage(I)Z

    .line 914
    :cond_2
    monitor-exit v2

    .line 915
    return-void

    .line 902
    :cond_3
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 914
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method ah(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 918
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->ag(Ljava/lang/String;)V

    .line 919
    invoke-virtual {p0, p1}, Lcom/android/settings/applications/ApplicationsState;->addPackage(Ljava/lang/String;)V

    .line 920
    return-void
.end method

.method c(Landroid/content/pm/ApplicationInfo;)Lcom/android/settings/applications/ApplicationsState$AppEntry;
    .locals 6

    .prologue
    .line 923
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 925
    if-nez v0, :cond_1

    .line 927
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    iget-wide v2, p0, Lcom/android/settings/applications/ApplicationsState;->EI:J

    const-wide/16 v4, 0x1

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/settings/applications/ApplicationsState;->EI:J

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/android/settings/applications/ApplicationsState$AppEntry;-><init>(Landroid/content/Context;Landroid/content/pm/ApplicationInfo;J)V

    .line 928
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    iget-object v2, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 929
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->EG:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 933
    :cond_0
    :goto_0
    return-object v0

    .line 930
    :cond_1
    iget-object v1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    if-eq v1, p1, :cond_0

    .line 931
    iput-object p1, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    goto :goto_0
.end method

.method iR()V
    .locals 4

    .prologue
    .line 413
    iget-object v2, p0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    monitor-enter v2

    .line 414
    :try_start_0
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->EK:Z

    if-nez v0, :cond_0

    .line 415
    monitor-exit v2

    .line 425
    :goto_0
    return-void

    .line 417
    :cond_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EL:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 418
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 419
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EC:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$Session;

    .line 420
    iget-boolean v3, v0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-eqz v3, :cond_1

    .line 421
    iget-object v3, p0, Lcom/android/settings/applications/ApplicationsState;->EL:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 418
    :cond_1
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 424
    :cond_2
    monitor-exit v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method iS()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v2, 0x0

    .line 704
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    if-eqz v0, :cond_1

    .line 754
    :cond_0
    :goto_0
    return-void

    .line 707
    :cond_1
    iput-boolean v4, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    .line 708
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EA:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    if-nez v0, :cond_2

    .line 709
    new-instance v0, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-direct {v0, p0, v6}, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;-><init>(Lcom/android/settings/applications/ApplicationsState;Lcom/android/settings/applications/ApplicationsState$1;)V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EA:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    .line 710
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EA:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;->iY()V

    .line 712
    :cond_2
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->i:Landroid/content/pm/PackageManager;

    iget v1, p0, Lcom/android/settings/applications/ApplicationsState;->Ez:I

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EH:Ljava/util/List;

    .line 713
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EH:Ljava/util/List;

    if-nez v0, :cond_3

    .line 714
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EH:Ljava/util/List;

    .line 717
    :cond_3
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EE:Lcom/android/settings/applications/InterestingConfigChanges;

    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings/applications/InterestingConfigChanges;->c(Landroid/content/res/Resources;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 720
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 721
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 728
    :cond_4
    iput-boolean v2, p0, Lcom/android/settings/applications/ApplicationsState;->EB:Z

    .line 729
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EH:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_9

    .line 730
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EH:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 733
    iget-boolean v1, v0, Landroid/content/pm/ApplicationInfo;->enabled:Z

    if-nez v1, :cond_8

    .line 734
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->enabledSetting:I

    const/4 v3, 0x3

    if-eq v1, v3, :cond_7

    .line 735
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EH:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 736
    add-int/lit8 v2, v2, -0x1

    .line 729
    :cond_5
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_6
    move v1, v2

    .line 723
    :goto_3
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    .line 724
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EG:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iput-boolean v4, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->EZ:Z

    .line 723
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_3

    .line 739
    :cond_7
    iput-boolean v4, p0, Lcom/android/settings/applications/ApplicationsState;->EB:Z

    .line 741
    :cond_8
    iget-object v1, p0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    .line 742
    if-eqz v1, :cond_5

    .line 743
    iput-object v0, v1, Lcom/android/settings/applications/ApplicationsState$AppEntry;->bl:Landroid/content/pm/ApplicationInfo;

    goto :goto_2

    .line 748
    :cond_9
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EH:Ljava/util/List;

    invoke-static {v0}, Lcom/android/settings/fc;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EH:Ljava/util/List;

    .line 750
    iput-object v6, p0, Lcom/android/settings/applications/ApplicationsState;->EJ:Ljava/lang/String;

    .line 751
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EP:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v0, v5}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 752
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EP:Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;

    invoke-virtual {v0, v5}, Lcom/android/settings/applications/ApplicationsState$BackgroundHandler;->sendEmptyMessage(I)Z

    goto/16 :goto_0
.end method

.method public iT()Z
    .locals 1

    .prologue
    .line 757
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->EB:Z

    return v0
.end method

.method iU()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 761
    iget-boolean v0, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    if-nez v0, :cond_1

    .line 774
    :cond_0
    :goto_0
    return-void

    :cond_1
    move v1, v2

    .line 764
    :goto_1
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 765
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EC:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$Session;

    iget-boolean v0, v0, Lcom/android/settings/applications/ApplicationsState$Session;->mResumed:Z

    if-nez v0, :cond_0

    .line 764
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 769
    :cond_2
    iput-boolean v2, p0, Lcom/android/settings/applications/ApplicationsState;->mResumed:Z

    .line 770
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EA:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    if-eqz v0, :cond_0

    .line 771
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EA:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    invoke-virtual {v0}, Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;->unregisterReceiver()V

    .line 772
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EA:Lcom/android/settings/applications/ApplicationsState$PackageIntentReceiver;

    goto :goto_0
.end method

.method iV()V
    .locals 1

    .prologue
    .line 778
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EC:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 779
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 780
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 782
    :cond_0
    return-void
.end method

.method iW()J
    .locals 8

    .prologue
    .line 827
    const-wide/16 v2, 0x0

    .line 829
    iget-object v4, p0, Lcom/android/settings/applications/ApplicationsState;->EF:Ljava/util/HashMap;

    monitor-enter v4

    .line 831
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EG:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 832
    iget-object v0, p0, Lcom/android/settings/applications/ApplicationsState;->EG:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;

    iget-wide v6, v0, Lcom/android/settings/applications/ApplicationsState$AppEntry;->cacheSize:J

    add-long/2addr v2, v6

    .line 831
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 835
    :cond_0
    monitor-exit v4

    .line 836
    return-wide v2

    .line 835
    :catchall_0
    move-exception v0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
