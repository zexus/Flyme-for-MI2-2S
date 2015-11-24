.class public Lcom/android/settings_ext/DeviceInfoSettings;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "DeviceInfoSettings.java"

# interfaces
.implements Lcom/android/settings_ext/search/k;


# static fields
.field public static final gG:Lcom/android/settings_ext/search/l;


# instance fields
.field jF:[J

.field jG:I

.field jH:Landroid/widget/Toast;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 416
    new-instance v0, Lcom/android/settings_ext/bN;

    invoke-direct {v0}, Lcom/android/settings_ext/bN;-><init>()V

    sput-object v0, Lcom/android/settings_ext/DeviceInfoSettings;->gG:Lcom/android/settings_ext/search/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 87
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jF:[J

    return-void
.end method

.method private a(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 252
    invoke-static {p3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 255
    :try_start_0
    invoke-virtual {p0, p2}, Lcom/android/settings_ext/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/preference/PreferenceGroup;->removePreference(Landroid/preference/Preference;)Z
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    :cond_0
    :goto_0
    return-void

    .line 256
    :catch_0
    move-exception v0

    .line 257
    const-string v0, "DeviceInfoSettings"

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

.method private c(Ljava/lang/String;I)V
    .locals 2

    .prologue
    .line 264
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 265
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 266
    if-eqz v0, :cond_0

    .line 267
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 270
    :cond_0
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 274
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 279
    :goto_0
    return-void

    .line 275
    :catch_0
    move-exception v0

    .line 276
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private cU()V
    .locals 3

    .prologue
    .line 292
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/DeviceInfoSettings;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 293
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 299
    :goto_0
    return-void

    .line 296
    :cond_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 298
    const/4 v0, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/settings_ext/DeviceInfoSettings;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method public static cV()Ljava/lang/String;
    .locals 3

    .prologue
    .line 318
    :try_start_0
    const-string v0, "/proc/version"

    invoke-static {v0}, Lcom/android/settings_ext/DeviceInfoSettings;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/DeviceInfoSettings;->t(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    .line 320
    :catch_0
    move-exception v0

    .line 321
    const-string v1, "DeviceInfoSettings"

    const-string v2, "IO Exception when getting kernel version for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 325
    const-string v0, "Unavailable"

    goto :goto_0
.end method

.method private cW()Ljava/lang/String;
    .locals 4

    .prologue
    .line 365
    :try_start_0
    const-string v0, "/sys/board_properties/soc/msv"

    invoke-static {v0}, Lcom/android/settings_ext/DeviceInfoSettings;->s(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 367
    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;I)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 368
    const-string v0, " (ENGINEERING)"
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 375
    :goto_0
    return-object v0

    .line 372
    :catch_0
    move-exception v0

    .line 375
    :cond_0
    :goto_1
    const-string v0, ""

    goto :goto_0

    .line 370
    :catch_1
    move-exception v0

    goto :goto_1
.end method

.method private static cX()Ljava/lang/String;
    .locals 3

    .prologue
    .line 496
    const-string v0, "Hardware\\s*:\\s*(.*)$"

    .line 499
    :try_start_0
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    const-string v2, "/proc/cpuinfo"

    invoke-direct {v0, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 503
    :cond_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 504
    const-string v2, "Hardware"

    invoke-virtual {v0, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    const-string v2, "Hardware\\s*:\\s*(.*)$"

    invoke-static {v2}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 506
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 507
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 513
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 520
    :goto_0
    return-object v0

    .line 511
    :cond_1
    :try_start_3
    const-string v0, "Unknown"
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 513
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    goto :goto_0

    .line 515
    :catch_0
    move-exception v0

    .line 516
    const-string v1, "DeviceInfoSettings"

    const-string v2, "IO Exception when getting cpuinfo for Device Info screen"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 520
    const-string v0, "Unknown"

    goto :goto_0

    .line 513
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V

    throw v0
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 283
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090079

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p2, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 289
    :goto_0
    return-void

    .line 286
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static l(Landroid/content/Context;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 379
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090a0d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 381
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    .line 410
    :goto_0
    return-object v0

    .line 387
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BUG_REPORT"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 389
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 390
    const/16 v3, 0x40

    invoke-virtual {v2, v0, v3}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 392
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 393
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_1

    .line 394
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 396
    :try_start_0
    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    .line 397
    iget v4, v4, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v4, v4, 0x1

    if-eqz v4, :cond_1

    .line 399
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 401
    goto :goto_0

    .line 410
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 404
    :catch_0
    move-exception v0

    goto :goto_1
.end method

.method static synthetic m(Landroid/content/Context;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static s(Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 308
    new-instance v0, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/FileReader;

    invoke-direct {v1, p0}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    const/16 v2, 0x100

    invoke-direct {v0, v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V

    .line 310
    :try_start_0
    invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .line 312
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    return-object v1

    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V

    throw v1
.end method

.method public static t(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x4

    .line 335
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    .line 343
    const-string v0, "Linux version (\\S+) \\((\\S+?)\\) (?:\\(gcc.+? \\)) (#\\d+) (?:.*?)?((Sun|Mon|Tue|Wed|Thu|Fri|Sat).+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 344
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    if-nez v1, :cond_0

    .line 345
    const-string v0, "DeviceInfoSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Regex did not match on /proc/version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 346
    const-string v0, "Unavailable"

    .line 352
    :goto_0
    return-object v0

    .line 347
    :cond_0
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v1

    if-ge v1, v3, :cond_1

    .line 348
    const-string v1, "DeviceInfoSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Regex match on /proc/version only returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->groupCount()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " groups"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 350
    const-string v0, "Unavailable"

    goto :goto_0

    .line 352
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v0, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0, v3}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 93
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 95
    const v0, 0x7f060027

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceInfoSettings;->addPreferencesFromResource(I)V

    .line 97
    const-string v0, "firmware_version"

    sget-object v1, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/DeviceInfoSettings;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 98
    const-string v0, "firmware_version"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 99
    const-string v0, "baseband_version"

    const-string v1, "gsm.version.baseband"

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/DeviceInfoSettings;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 100
    const-string v0, "device_model"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v2, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-direct {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->cW()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/DeviceInfoSettings;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 101
    const-string v0, "device_processor"

    invoke-static {}, Lcom/android/settings_ext/DeviceInfoSettings;->cX()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/DeviceInfoSettings;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    const-string v0, "fcc_equipment_id"

    const-string v1, "ro.ril.fccid"

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/DeviceInfoSettings;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    const-string v0, "device_model"

    sget-object v1, Landroid/os/Build;->MODEL:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/DeviceInfoSettings;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    const-string v0, "build_number"

    sget-object v1, Landroid/os/Build;->DISPLAY:Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/DeviceInfoSettings;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 105
    const-string v0, "build_number"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 106
    const-string v0, "kernel_version"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-static {}, Lcom/android/settings_ext/DeviceInfoSettings;->cV()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 108
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnabled()Z

    move-result v0

    if-nez v0, :cond_5

    .line 109
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0908dd

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 110
    const-string v1, "selinux_status"

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ext/DeviceInfoSettings;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "selinux_status"

    const-string v2, "ro.build.selinux"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ext/DeviceInfoSettings;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 121
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "safetylegal"

    const-string v2, "ro.url.safetylegal"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ext/DeviceInfoSettings;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "fcc_equipment_id"

    const-string v2, "ro.ril.fccid"

    invoke-direct {p0, v0, v1, v2}, Lcom/android/settings_ext/DeviceInfoSettings;->a(Landroid/preference/PreferenceGroup;Ljava/lang/String;Ljava/lang/String;)V

    .line 129
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/hl;->N(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    if-le v0, v3, :cond_2

    .line 131
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "baseband_version"

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 135
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/DeviceInfoSettings;->l(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 136
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    const-string v1, "device_feedback"

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 143
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    .line 145
    const-string v0, "container"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/PreferenceGroup;

    .line 146
    const-string v2, "terms"

    invoke-static {v1, v0, v2, v3}, Lcom/android/settings_ext/hl;->a(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 148
    const-string v2, "license"

    invoke-static {v1, v0, v2, v3}, Lcom/android/settings_ext/hl;->a(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 150
    const-string v2, "copyright"

    invoke-static {v1, v0, v2, v3}, Lcom/android/settings_ext/hl;->a(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 154
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v0

    .line 155
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-nez v2, :cond_6

    .line 156
    const-string v2, "system_update_settings"

    invoke-static {v1, v0, v2, v3}, Lcom/android/settings_ext/hl;->a(Landroid/content/Context;Landroid/preference/PreferenceGroup;Ljava/lang/String;I)Z

    .line 165
    :goto_1
    const-string v0, "additional_system_update_settings"

    const v1, 0x7f0f0003

    invoke-direct {p0, v0, v1}, Lcom/android/settings_ext/DeviceInfoSettings;->c(Ljava/lang/String;I)V

    .line 169
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.SHOW_REGULATORY_INFO"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 170
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 171
    const-string v0, "regulatory_info"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceInfoSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 172
    if-eqz v0, :cond_4

    .line 173
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 176
    :cond_4
    return-void

    .line 111
    :cond_5
    invoke-static {}, Landroid/os/SELinux;->isSELinuxEnforced()Z

    move-result v0

    if-nez v0, :cond_0

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0908de

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 113
    const-string v1, "selinux_status"

    invoke-direct {p0, v1, v0}, Lcom/android/settings_ext/DeviceInfoSettings;->c(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 161
    :cond_6
    const-string v0, "system_update_settings"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceInfoSettings;->K(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v1, 0x1

    .line 189
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "firmware_version"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 190
    iget-object v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jF:[J

    iget-object v2, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jF:[J

    iget-object v3, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jF:[J

    array-length v3, v3

    add-int/lit8 v3, v3, -0x1

    invoke-static {v0, v1, v2, v6, v3}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 191
    iget-object v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jF:[J

    iget-object v1, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jF:[J

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 192
    iget-object v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jF:[J

    aget-wide v0, v0, v6

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    const-wide/16 v4, 0x1f4

    sub-long/2addr v2, v4

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    .line 193
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 194
    const-string v1, "android"

    const-class v2, Lcom/android/internal/app/PlatLogoActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 197
    :try_start_0
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceInfoSettings;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 247
    :cond_0
    :goto_0
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onPreferenceTreeClick(Landroid/preference/PreferenceScreen;Landroid/preference/Preference;)Z

    move-result v0

    :goto_1
    return v0

    .line 198
    :catch_0
    move-exception v1

    .line 199
    const-string v1, "DeviceInfoSettings"

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

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v2, "build_number"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 204
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    if-eqz v0, :cond_2

    move v0, v1

    goto :goto_1

    .line 206
    :cond_2
    const-string v0, "user"

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/DeviceInfoSettings;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/UserManager;

    .line 207
    const-string v2, "no_debugging_features"

    invoke-virtual {v0, v2}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move v0, v1

    goto :goto_1

    .line 209
    :cond_3
    iget v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jG:I

    if-lez v0, :cond_7

    .line 210
    iget v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jG:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jG:I

    .line 211
    iget v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jG:I

    if-nez v0, :cond_5

    .line 212
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v2, "development"

    invoke-virtual {v0, v2, v6}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v2, "show"

    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 215
    iget-object v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jH:Landroid/widget/Toast;

    if-eqz v0, :cond_4

    .line 216
    iget-object v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jH:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 218
    :cond_4
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f09007a

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jH:Landroid/widget/Toast;

    .line 220
    iget-object v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jH:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 222
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/search/e;->bn(Landroid/content/Context;)Lcom/android/settings_ext/search/e;

    move-result-object v0

    const-class v2, Lcom/android/settings_ext/DevelopmentSettings;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1, v1}, Lcom/android/settings_ext/search/e;->b(Ljava/lang/String;ZZ)V

    goto/16 :goto_0

    .line 226
    :cond_5
    iget v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jG:I

    if-lez v0, :cond_0

    iget v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jG:I

    const/4 v2, 0x5

    if-ge v0, v2, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jH:Landroid/widget/Toast;

    if-eqz v0, :cond_6

    .line 229
    iget-object v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jH:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 231
    :cond_6
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0002

    iget v4, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jG:I

    new-array v1, v1, [Ljava/lang/Object;

    iget v5, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jG:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v6

    invoke-virtual {v2, v3, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jH:Landroid/widget/Toast;

    .line 234
    iget-object v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jH:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 236
    :cond_7
    iget v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jG:I

    if-gez v0, :cond_0

    .line 237
    iget-object v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jH:Landroid/widget/Toast;

    if-eqz v0, :cond_8

    .line 238
    iget-object v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jH:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    .line 240
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v2, 0x7f09007b

    invoke-static {v0, v2, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jH:Landroid/widget/Toast;

    .line 242
    iget-object v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jH:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 244
    :cond_9
    invoke-virtual {p2}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v0

    const-string v1, "device_feedback"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 245
    invoke-direct {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->cU()V

    goto/16 :goto_0
.end method

.method public onResume()V
    .locals 4

    .prologue
    .line 180
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 181
    invoke-virtual {p0}, Lcom/android/settings_ext/DeviceInfoSettings;->getActivity()Landroid/app/Activity;

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
    iput v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jG:I

    .line 184
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/DeviceInfoSettings;->jH:Landroid/widget/Toast;

    .line 185
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x7

    goto :goto_0
.end method
