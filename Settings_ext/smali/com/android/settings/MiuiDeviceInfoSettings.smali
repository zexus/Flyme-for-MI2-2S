.class public Lcom/android/settings/MiuiDeviceInfoSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "MiuiDeviceInfoSettings.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final pa:[D

.field private static pj:J


# instance fields
.field jF:[J

.field jG:I

.field jH:Landroid/widget/Toast;

.field private pb:Landroid/os/storage/StorageManager;

.field private pc:Ljava/util/ArrayList;

.field private pd:Ljava/util/ArrayList;

.field private pe:Lmiui/preference/ValuePreference;

.field private pf:Lcom/android/settings/dC;

.field pg:I

.field ph:J

.field pi:Ljava/lang/String;

.field private pk:Lcom/android/settings/dD;

.field private pl:Lcom/android/settings/dD;

.field private pm:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x5

    new-array v0, v0, [D

    fill-array-data v0, :array_0

    sput-object v0, Lcom/android/settings/MiuiDeviceInfoSettings;->pa:[D

    return-void

    nop

    :array_0
    .array-data 8
        0x3fe3333340000000L    # 0.6000000238418579
        0x3fd0000000000000L    # 0.25
        0x3fb99999a0000000L    # 0.10000000149011612
        0x3fa47ae140000000L    # 0.03999999910593033
        0x3f847ae140000000L    # 0.009999999776482582
    .end array-data
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    .line 104
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jF:[J

    .line 106
    const/4 v0, 0x4

    iput v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pg:I

    .line 107
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->ph:J

    .line 690
    new-instance v0, Lcom/android/settings/dD;

    invoke-direct {v0}, Lcom/android/settings/dD;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pk:Lcom/android/settings/dD;

    .line 691
    new-instance v0, Lcom/android/settings/dD;

    invoke-direct {v0}, Lcom/android/settings/dD;-><init>()V

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pl:Lcom/android/settings/dD;

    .line 742
    new-instance v0, Lcom/android/settings/dB;

    invoke-direct {v0, p0}, Lcom/android/settings/dB;-><init>(Lcom/android/settings/MiuiDeviceInfoSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pm:Landroid/os/Handler;

    .line 778
    return-void
.end method

.method static synthetic a(Lcom/android/settings/MiuiDeviceInfoSettings;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pm:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings/MiuiDeviceInfoSettings;J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1, p2}, Lcom/android/settings/MiuiDeviceInfoSettings;->g(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private a(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 433
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 437
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 443
    :cond_0
    :goto_0
    return-void

    .line 438
    :catch_0
    move-exception v0

    .line 439
    const-string v0, "MiuiDeviceInfoSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Property \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' missing and no \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' preference"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/dD;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pk:Lcom/android/settings/dD;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings/MiuiDeviceInfoSettings;)Lcom/android/settings/dD;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pl:Lcom/android/settings/dD;

    return-object v0
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 446
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 448
    :try_start_0
    invoke-virtual {v0, p2}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 453
    :goto_0
    return-void

    .line 449
    :catch_0
    move-exception v1

    .line 450
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private cV()Ljava/lang/String;
    .locals 4

    .prologue
    .line 485
    :try_start_0
    const-string v0, "/proc/version"

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 487
    const-string v1, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    .line 497
    const-string v1, "\\w+\\s+\\w+\\s+([^\\s]+)\\s+\\(([^\\s@]+(?:@[^\\s.]+)?)[^)]*\\)\\s+\\((?:[^(]*\\([^)]*\\))?[^)]*\\)\\s+([^\\s]+)\\s+(?:PREEMPT\\s+)?(.+)"

    invoke-static {v1}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v1

    .line 498
    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 500
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-nez v2, :cond_0

    .line 501
    const-string v1, "MiuiDeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regex did not match on /proc/version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const-string v0, "Unavailable"

    .line 515
    :goto_0
    return-object v0

    .line 503
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    const/4 v2, 0x4

    if-ge v0, v2, :cond_1

    .line 504
    const-string v0, "MiuiDeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regex match on /proc/version only returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " groups"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    const-string v0, "Unavailable"

    goto :goto_0

    .line 508
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 510
    :catch_0
    move-exception v0

    .line 511
    const-string v1, "MiuiDeviceInfoSettings"

    const-string v2, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 515
    const-string v0, "Unavailable"

    goto :goto_0
.end method

.method private cW()Ljava/lang/String;
    .locals 4

    .prologue
    .line 527
    :try_start_0
    const-string v0, "/sys/board_properties/soc/msv"

    invoke-direct {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 529
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 530
    const-string v0, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 537
    :goto_0
    return-object v0

    .line 534
    :catch_0
    move-exception v0

    .line 537
    :cond_0
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 532
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method static synthetic d(Lcom/android/settings/MiuiDeviceInfoSettings;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pd:Ljava/util/ArrayList;

    return-object v0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 457
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 458
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090079

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {p2, v1, v2}, Lcom/android/settings/fk;->a(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 464
    :goto_0
    return-void

    .line 461
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 676
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v1, v0, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 679
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 680
    const-string v2, "mmcblk0"

    invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 686
    :cond_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    return-object v0

    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v0
.end method

.method static synthetic e(Lcom/android/settings/MiuiDeviceInfoSettings;)V
    .locals 0

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->eD()V

    return-void
.end method

.method private eB()Ljava/lang/String;
    .locals 4

    .prologue
    .line 239
    sget-object v0, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;

    .line 240
    sget-boolean v1, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v1, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 242
    const-string v1, "V"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 243
    const/4 v1, 0x1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 246
    :cond_0
    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    .line 247
    if-lez v1, :cond_1

    .line 248
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 252
    :cond_1
    return-object v0
.end method

.method private eC()Ljava/lang/String;
    .locals 10

    .prologue
    const-wide/16 v8, 0x19

    const/4 v1, 0x0

    const/16 v6, 0x8

    .line 567
    .line 569
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string v2, "/sys/devices/system/cpu"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 570
    new-instance v2, Lcom/android/settings/dA;

    invoke-direct {v2, p0}, Lcom/android/settings/dA;-><init>(Lcom/android/settings/MiuiDeviceInfoSettings;)V

    invoke-virtual {v0, v2}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v2

    .line 582
    const-string v3, ""

    .line 583
    array-length v0, v2

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    .line 584
    const v0, 0x7f090ac9

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 590
    :cond_0
    :goto_0
    const-string v0, "cpu_max_freq"

    const/4 v4, -0x1

    invoke-static {v0, v4}, Lmiui/util/FeatureParser;->getInteger(Ljava/lang/String;I)I

    move-result v0

    int-to-float v0, v0

    .line 591
    const/4 v4, 0x0

    cmpg-float v4, v0, v4

    if-gez v4, :cond_7

    .line 592
    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/scaling_max_freq"

    .line 593
    const-string v4, "is_hongmi"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "is_xiaomi"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "is_pad"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 596
    :cond_1
    const-string v2, "/sys/devices/system/cpu/cpu0/cpufreq/cpuinfo_max_freq"

    .line 598
    :cond_2
    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    .line 599
    new-instance v2, Ljava/io/BufferedReader;

    const/16 v5, 0x2000

    invoke-direct {v2, v4, v5}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 603
    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    const-wide/16 v6, 0xc

    add-long/2addr v4, v6

    const-wide/16 v6, 0x19

    div-long/2addr v4, v6

    mul-long/2addr v4, v8

    long-to-float v0, v4

    .line 604
    const/high16 v4, 0x447a0000    # 1000.0f

    div-float/2addr v0, v4

    .line 614
    :cond_3
    :goto_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    aput-object v0, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "GHz"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 617
    if-eqz v2, :cond_4

    .line 619
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 624
    :cond_4
    :goto_2
    return-object v0

    .line 585
    :cond_5
    :try_start_3
    array-length v0, v2

    const/4 v4, 0x4

    if-ne v0, v4, :cond_6

    .line 586
    const v0, 0x7f090aca

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 587
    :cond_6
    array-length v0, v2

    if-ne v0, v6, :cond_0

    .line 588
    const v0, 0x7f090acc

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto/16 :goto_0

    .line 607
    :cond_7
    const/high16 v4, 0x41200000    # 10.0f

    div-float/2addr v0, v4

    .line 608
    array-length v4, v2

    const/4 v5, 0x6

    if-ne v4, v5, :cond_8

    .line 609
    const v2, 0x7f090acb

    invoke-virtual {p0, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v2, v1

    goto :goto_1

    .line 610
    :cond_8
    array-length v2, v2

    if-ne v2, v6, :cond_b

    .line 611
    const v2, 0x7f090acd

    invoke-virtual {p0, v2}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I)Ljava/lang/String;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v2

    move-object v3, v2

    move-object v2, v1

    goto :goto_1

    .line 615
    :catch_0
    move-exception v0

    move-object v0, v1

    .line 617
    :goto_3
    if-eqz v0, :cond_9

    .line 619
    :try_start_4
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    :cond_9
    :goto_4
    move-object v0, v1

    .line 624
    goto :goto_2

    .line 617
    :catchall_0
    move-exception v0

    :goto_5
    if-eqz v1, :cond_a

    .line 619
    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 621
    :cond_a
    :goto_6
    throw v0

    .line 620
    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v1

    goto :goto_6

    .line 617
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_5

    .line 615
    :catch_4
    move-exception v0

    move-object v0, v2

    goto :goto_3

    :cond_b
    move-object v2, v1

    goto/16 :goto_1
.end method

.method private eD()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 628
    const-string v0, "device_internal_memory"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 630
    iget-object v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pl:Lcom/android/settings/dD;

    iget-wide v2, v1, Lcom/android/settings/dD;->pq:J

    .line 631
    const-string v1, "support_emulated_storage"

    invoke-static {v1, v8}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "mixed"

    const-string v4, "ro.boot.sdcard.type"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 633
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v1

    .line 634
    new-instance v4, Landroid/os/StatFs;

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 635
    invoke-virtual {v4}, Landroid/os/StatFs;->getBlockSizeLong()J

    move-result-wide v6

    .line 636
    invoke-virtual {v4}, Landroid/os/StatFs;->getAvailableBlocksLong()J

    move-result-wide v4

    mul-long/2addr v4, v6

    add-long/2addr v2, v4

    .line 638
    :cond_0
    invoke-static {v2, v3}, Lcom/android/settings/deviceinfo/StorageMeasurement;->r(J)J

    move-result-wide v2

    .line 639
    const v1, 0x7f090ace

    new-array v4, v9, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/MiuiDeviceInfoSettings;->h(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v4, v8

    invoke-virtual {p0, v1, v4}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 640
    invoke-static {}, Lcom/android/settings/MiuiDeviceInfoSettings;->eE()J

    move-result-wide v2

    .line 641
    const v4, 0x7f090acf

    new-array v5, v9, [Ljava/lang/Object;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/MiuiDeviceInfoSettings;->h(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v5, v8

    invoke-virtual {p0, v4, v5}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 642
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\n"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 643
    return-void
.end method

.method public static eE()J
    .locals 12

    .prologue
    const-wide/16 v10, 0x4

    const-wide/16 v8, 0x1

    .line 647
    sget-wide v0, Lcom/android/settings/MiuiDeviceInfoSettings;->pj:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 650
    :try_start_0
    const-string v0, "/proc/partitions"

    const-string v1, "mmcblk0"

    invoke-static {v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 651
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 652
    const-string v1, " +"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 653
    const/4 v1, 0x3

    aget-object v0, v0, v1

    invoke-static {v0}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sput-wide v0, Lcom/android/settings/MiuiDeviceInfoSettings;->pj:J

    .line 654
    const-wide/32 v0, 0xf4240

    .line 655
    const-wide/32 v2, 0x3b9aca00

    .line 656
    sget-wide v4, Lcom/android/settings/MiuiDeviceInfoSettings;->pj:J

    const-wide/16 v6, 0x8

    mul-long/2addr v6, v0

    cmp-long v4, v4, v6

    if-ltz v4, :cond_1

    .line 657
    sget-wide v4, Lcom/android/settings/MiuiDeviceInfoSettings;->pj:J

    const-wide/16 v6, 0x4

    div-long/2addr v4, v6

    div-long v0, v4, v0

    add-long/2addr v0, v8

    mul-long/2addr v0, v2

    mul-long/2addr v0, v10

    sput-wide v0, Lcom/android/settings/MiuiDeviceInfoSettings;->pj:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 665
    :cond_0
    :goto_0
    sget-wide v0, Lcom/android/settings/MiuiDeviceInfoSettings;->pj:J

    return-wide v0

    .line 659
    :cond_1
    :try_start_1
    sget-wide v4, Lcom/android/settings/MiuiDeviceInfoSettings;->pj:J

    div-long v0, v4, v0

    add-long/2addr v0, v8

    mul-long/2addr v0, v2

    sput-wide v0, Lcom/android/settings/MiuiDeviceInfoSettings;->pj:J
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 662
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method static synthetic f(Lcom/android/settings/MiuiDeviceInfoSettings;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->eC()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private g(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 698
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Landroid/text/format/Formatter;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private h(J)Ljava/lang/String;
    .locals 1

    .prologue
    .line 702
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lmiui/text/ExtraTextUtils;->formatFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private s(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 473
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p1}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 475
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 477
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 396
    const v0, 0x7f0400bb

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 398
    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    const/4 v2, 0x0

    const/4 v5, 0x1

    .line 122
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 123
    const v0, 0x7f060027

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 124
    invoke-virtual {p0, v5}, Lcom/android/settings/MiuiDeviceInfoSettings;->setHasOptionsMenu(Z)V

    .line 126
    const-string v0, "model_number"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 127
    const-string v1, "leo"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 128
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "MI NOTE PRO"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->cW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 135
    :goto_0
    const-string v0, "firmware_version"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lmiui/os/Build;->ID:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 138
    sget-boolean v0, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v0, :cond_8

    const-string v0, "MIUI "

    .line 139
    :goto_1
    sget-boolean v1, Lmiui/os/Build;->IS_INTERNATIONAL_BUILD:Z

    if-eqz v1, :cond_0

    .line 140
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "Global "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 142
    :cond_0
    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->eB()Ljava/lang/String;

    move-result-object v1

    .line 143
    sget-boolean v3, Lmiui/os/Build;->IS_ALPHA_BUILD:Z

    if-eqz v3, :cond_9

    .line 144
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 145
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090d89

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 154
    :cond_1
    :goto_2
    const-string v1, "device_miui_version"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 156
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pf:Lcom/android/settings/dC;

    if-nez v0, :cond_2

    .line 157
    new-instance v0, Lcom/android/settings/dC;

    invoke-direct {v0, p0}, Lcom/android/settings/dC;-><init>(Lcom/android/settings/MiuiDeviceInfoSettings;)V

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pf:Lcom/android/settings/dC;

    .line 158
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pf:Lcom/android/settings/dC;

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/settings/dC;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 162
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/hl;->N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 163
    const-string v0, "baseband_version"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 164
    if-eqz v0, :cond_3

    .line 165
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 170
    :cond_3
    :goto_3
    const-string v0, "kernel_version"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 171
    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->cV()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 173
    const-string v0, "build_number"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 174
    sget-object v1, Lmiui/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 176
    const-string v0, "wifi_type_approval"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    .line 177
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f090a6c

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 178
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 179
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 186
    :goto_4
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "user"

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceCategory;

    .line 187
    const-string v1, "safetylegal"

    const-string v3, "ro.url.safetylegal"

    invoke-direct {p0, v0, v1, v3}, Lcom/android/settings/MiuiDeviceInfoSettings;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 191
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0f000b

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-nez v1, :cond_4

    .line 192
    const-string v1, "translation_contributors"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 199
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    .line 201
    const-string v1, "container"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Landroid/preference/PreferenceGroup;

    .line 202
    const-string v4, "team"

    invoke-static {v3, v1, v4, v5}, Lcom/android/settings/hl;->a(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 206
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    .line 207
    const-string v4, "contributors"

    invoke-static {v3, v1, v4, v5}, Lcom/android/settings/hl;->a(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 210
    const-string v1, "storage"

    invoke-virtual {v3, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/storage/StorageManager;

    iput-object v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pb:Landroid/os/storage/StorageManager;

    .line 211
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pc:Ljava/util/ArrayList;

    .line 212
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pd:Ljava/util/ArrayList;

    .line 213
    iget-object v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pb:Landroid/os/storage/StorageManager;

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->getVolumeList()[Landroid/os/storage/StorageVolume;

    move-result-object v4

    move v1, v2

    .line 215
    :goto_5
    array-length v2, v4

    if-ge v1, v2, :cond_d

    .line 216
    aget-object v2, v4, v1

    invoke-virtual {v2}, Landroid/os/storage/StorageVolume;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 217
    const-string v5, "mounted"

    iget-object v6, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pb:Landroid/os/storage/StorageManager;

    invoke-virtual {v6, v2}, Landroid/os/storage/StorageManager;->getVolumeState(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 218
    aget-object v2, v4, v1

    invoke-static {v3, v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->a(Landroid/content/Context;Landroid/os/storage/StorageVolume;)Lcom/android/settings/deviceinfo/StorageMeasurement;

    move-result-object v2

    .line 219
    new-instance v5, Lcom/android/settings/dE;

    aget-object v6, v4, v1

    invoke-virtual {v6}, Landroid/os/storage/StorageVolume;->isEmulated()Z

    move-result v6

    aget-object v7, v4, v1

    invoke-virtual {v7}, Landroid/os/storage/StorageVolume;->isRemovable()Z

    move-result v7

    invoke-direct {v5, p0, v6, v7}, Lcom/android/settings/dE;-><init>(Lcom/android/settings/MiuiDeviceInfoSettings;ZZ)V

    .line 220
    iget-object v6, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pd:Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 221
    invoke-virtual {v2, v5}, Lcom/android/settings/deviceinfo/StorageMeasurement;->a(Lcom/android/settings/deviceinfo/StorageMeasurement$MeasurementReceiver;)V

    .line 222
    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->invalidate()V

    .line 223
    invoke-virtual {v2}, Lcom/android/settings/deviceinfo/StorageMeasurement;->measure()V

    .line 224
    iget-object v5, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pc:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 215
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_5

    .line 129
    :cond_6
    const-string v1, "ferrari"

    sget-object v3, Lmiui/os/Build;->DEVICE:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Mi 4i"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->cW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 132
    :cond_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v3, Lmiui/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->cW()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 138
    :cond_8
    const-string v0, "MIUI 7 "

    goto/16 :goto_1

    .line 146
    :cond_9
    sget-boolean v3, Lmiui/os/Build;->IS_DEVELOPMENT_VERSION:Z

    if-eqz v3, :cond_a

    .line 147
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 148
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v1, 0x7f090d8a

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 149
    :cond_a
    sget-boolean v3, Lmiui/os/Build;->IS_STABLE_VERSION:Z

    if-eqz v3, :cond_1

    .line 150
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 151
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const v3, 0x7f090d8b

    invoke-virtual {p0, v3}, Lcom/android/settings/MiuiDeviceInfoSettings;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 152
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto/16 :goto_2

    .line 168
    :cond_b
    const-string v0, "baseband_version"

    const-string v1, "gsm.version.baseband"

    invoke-direct {p0, v0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 181
    :cond_c
    const v1, 0x7f090d7e

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setTitle(I)V

    .line 182
    invoke-virtual {v0, v5}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    goto/16 :goto_4

    .line 228
    :cond_d
    const-string v1, "user_manual"

    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    .line 229
    invoke-virtual {v0, v1}, Landroid/preference/PreferenceCategory;->removePreference(Landroid/preference/Preference;)Z

    .line 231
    const-string v0, "device_name"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Lmiui/preference/ValuePreference;

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pe:Lmiui/preference/ValuePreference;

    .line 232
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-eqz v0, :cond_e

    .line 233
    const-string v0, "status_info"

    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceScreen;

    .line 234
    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->setSummary(Ljava/lang/CharSequence;)V

    .line 236
    :cond_e
    return-void
.end method

.method public onCreateDialog(I)Landroid/app/Dialog;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 403
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 404
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 405
    const v1, 0x104000a

    invoke-virtual {v0, v1, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 406
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 408
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f04011a

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 409
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 413
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreateDialog(I)Landroid/app/Dialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 385
    sget-boolean v0, Lmiui/os/Build;->IS_TABLET:Z

    if-nez v0, :cond_0

    .line 386
    const/4 v0, 0x1

    const v1, 0x7f0903d0

    invoke-interface {p1, v2, v0, v2, v1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    .line 387
    sget v1, Lmiui/R$drawable;->action_button_update_light:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 388
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 391
    :cond_0
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 542
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pc:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/deviceinfo/StorageMeasurement;

    .line 543
    invoke-virtual {v0}, Lcom/android/settings/deviceinfo/StorageMeasurement;->cleanUp()V

    goto :goto_0

    .line 545
    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pm:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 546
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroy()V

    .line 547
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 418
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 427
    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    :goto_0
    return v0

    .line 420
    :pswitch_0
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 421
    const-string v1, "com.android.updater"

    const-string v2, "com.android.updater.MainActivity"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 422
    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 423
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 424
    const/4 v0, 0x1

    goto :goto_0

    .line 418
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 6

    .prologue
    const/4 v3, 0x0

    .line 769
    const-string v0, "device_name"

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 770
    new-instance v4, Landroid/os/Bundle;

    invoke-direct {v4}, Landroid/os/Bundle;-><init>()V

    .line 771
    const-string v0, ":miui:starting_window_label"

    const-string v1, ""

    invoke-virtual {v4, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 772
    const-class v0, Lcom/android/settings/MiuiDeviceNameEditFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    move-object v0, p0

    move-object v1, p0

    move v5, v3

    invoke-virtual/range {v0 .. v5}, Lcom/android/settings/MiuiDeviceInfoSettings;->a(Landroid/app/Fragment;Ljava/lang/String;ILandroid/os/Bundle;I)Z

    .line 775
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 10

    .prologue
    const/4 v9, 0x4

    const/4 v8, 0x0

    const/4 v1, 0x1

    .line 258
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    .line 259
    const-string v0, "device_internal_memory"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "device_cpu"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "kernel_version"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    :cond_0
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pi:Ljava/lang/String;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pi:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 261
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->ph:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0xbb8

    cmp-long v0, v4, v6

    if-lez v0, :cond_a

    .line 262
    iget v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pg:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pg:I

    .line 263
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jH:Landroid/widget/Toast;

    if-eqz v0, :cond_1

    .line 264
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jH:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 266
    :cond_1
    iget v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pg:I

    if-lez v0, :cond_3

    .line 267
    const v0, 0x7f0e000c

    .line 268
    const-string v3, "device_cpu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 269
    const v0, 0x7f0e000e

    .line 274
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    iget v5, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pg:I

    new-array v6, v1, [Ljava/lang/Object;

    iget v7, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pg:I

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v8

    invoke-virtual {v4, v0, v5, v6}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jH:Landroid/widget/Toast;

    .line 276
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jH:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 278
    :cond_3
    iget v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pg:I

    if-gtz v0, :cond_5

    .line 279
    const/4 v0, 0x0

    .line 280
    const-string v3, "device_internal_memory"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 281
    const-string v0, "4636"

    .line 287
    :cond_4
    :goto_1
    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.SECRET_CODE"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android_secret_code://"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v2, v3, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 289
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    .line 290
    iput v9, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pg:I

    .line 291
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->ph:J

    .line 311
    :cond_5
    :goto_2
    const-string v0, "user_manual"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW_LICENSE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    const-string v1, "android.intent.extra.LICENSE_TYPE"

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 379
    :cond_6
    :goto_3
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pi:Ljava/lang/String;

    .line 380
    invoke-super {p0, p1, p2}, Lcom/android/settings/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_4
    return v0

    .line 270
    :cond_7
    const-string v3, "kernel_version"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 271
    const v0, 0x7f0e000d

    goto/16 :goto_0

    .line 282
    :cond_8
    const-string v3, "device_cpu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 283
    const-string v0, "284"

    goto :goto_1

    .line 284
    :cond_9
    const-string v3, "kernel_version"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 285
    const-string v0, "6484"

    goto :goto_1

    .line 294
    :cond_a
    const v0, 0x7f090d33

    .line 295
    const-string v3, "device_cpu"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 296
    const v0, 0x7f090d35

    .line 300
    :cond_b
    :goto_5
    iget-object v2, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jH:Landroid/widget/Toast;

    if-eqz v2, :cond_c

    .line 301
    iget-object v2, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jH:Landroid/widget/Toast;

    invoke-virtual {v2}, Landroid/widget/Toast;->cancel()V

    .line 303
    :cond_c
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jH:Landroid/widget/Toast;

    .line 305
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jH:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_2

    .line 297
    :cond_d
    const-string v3, "kernel_version"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 298
    const v0, 0x7f090d34

    goto :goto_5

    .line 308
    :cond_e
    iput v9, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pg:I

    goto/16 :goto_2

    .line 315
    :cond_f
    const-string v0, "firmware_version"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    .line 316
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jF:[J

    iget-object v2, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jF:[J

    iget-object v3, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jF:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v8, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 317
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jF:[J

    iget-object v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jF:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 318
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jF:[J

    aget-wide v0, v0, v8

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    .line 319
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 320
    const-string v1, "android"

    const-class v2, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 323
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 324
    :catch_0
    move-exception v1

    .line 325
    const-string v1, "MiuiDeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to start activity "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 328
    :cond_10
    const-string v0, "device_miui_version"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 329
    iget v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jG:I

    if-lez v0, :cond_14

    .line 330
    iget v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jG:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jG:I

    .line 331
    iget v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jG:I

    if-nez v0, :cond_12

    .line 332
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "development"

    invoke-virtual {v0, v2, v8}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "show"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 335
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jH:Landroid/widget/Toast;

    if-eqz v0, :cond_11

    .line 336
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jH:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 338
    :cond_11
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f09007a

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jH:Landroid/widget/Toast;

    .line 340
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jH:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 342
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 343
    const-string v2, "com.android.settings.action.DEV_OPEN"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 344
    const-string v2, "show"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 345
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/Activity;->sendBroadcast(Landroid/content/Intent;)V

    goto/16 :goto_3

    .line 347
    :cond_12
    iget v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jG:I

    if-lez v0, :cond_6

    iget v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jG:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_6

    .line 349
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jH:Landroid/widget/Toast;

    if-eqz v0, :cond_13

    .line 350
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jH:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 352
    :cond_13
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0002

    iget v4, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jG:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jG:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v8

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jH:Landroid/widget/Toast;

    .line 355
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jH:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 357
    :cond_14
    iget v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jG:I

    if-gez v0, :cond_6

    .line 358
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jH:Landroid/widget/Toast;

    if-eqz v0, :cond_15

    .line 359
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jH:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 361
    :cond_15
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f09007b

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jH:Landroid/widget/Toast;

    .line 363
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jH:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_3

    .line 365
    :cond_16
    const-string v0, "wifi_type_approval"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 366
    invoke-virtual {p0, v1}, Lcom/android/settings/MiuiDeviceInfoSettings;->showDialog(I)V

    goto/16 :goto_3

    .line 367
    :cond_17
    const-string v0, "status_info"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/hl;->N(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 368
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 369
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings/deviceinfo/MiuiStatus;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 370
    invoke-virtual {p0, v0}, Lcom/android/settings/MiuiDeviceInfoSettings;->startActivity(Landroid/content/Intent;)V

    .line 371
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pi:Ljava/lang/String;

    move v0, v1

    .line 372
    goto/16 :goto_4

    .line 373
    :cond_18
    const-string v0, "kernel_version"

    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 374
    const-string v0, "support_cit"

    invoke-static {v0, v8}, Lmiui/util/FeatureParser;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 375
    if-nez v0, :cond_6

    move v0, v1

    .line 376
    goto/16 :goto_4
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 551
    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    .line 553
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Landroid/provider/MiuiSettings$System;->getDeviceName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 554
    iget-object v1, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pe:Lmiui/preference/ValuePreference;

    invoke-virtual {v1, v0}, Lmiui/preference/ValuePreference;->setValue(Ljava/lang/String;)V

    .line 555
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pe:Lmiui/preference/ValuePreference;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lmiui/preference/ValuePreference;->setShowRightArrow(Z)V

    .line 556
    iget-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->pe:Lmiui/preference/ValuePreference;

    invoke-virtual {v0, p0}, Lmiui/preference/ValuePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 558
    invoke-direct {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->eD()V

    .line 560
    invoke-virtual {p0}, Lcom/android/settings/MiuiDeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "development"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "show"

    sget-object v2, Landroid/os/Build;->TYPE:Ljava/lang/String;

    const-string v3, "eng"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jG:I

    .line 563
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/MiuiDeviceInfoSettings;->jH:Landroid/widget/Toast;

    .line 564
    return-void

    .line 560
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
