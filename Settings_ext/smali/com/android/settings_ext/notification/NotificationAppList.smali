.class public Lcom/android/settings_ext/notification/NotificationAppList;
.super Lcom/android/settings_ext/PinnedHeaderListFragment;
.source "NotificationAppList.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# static fields
.field private static final DEBUG:Z

.field private static final aeD:Landroid/content/Intent;

.field private static final aeL:Ljava/util/Comparator;


# instance fields
.field private Hh:Lcom/android/settings_ext/hj;

.field private adO:Lcom/android/settings_ext/notification/NotificationAppList$Backend;

.field private final aeE:Landroid/util/ArrayMap;

.field private final aeF:Ljava/util/ArrayList;

.field private final aeG:Ljava/util/ArrayList;

.field private aeH:Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter;

.field private aeI:Landroid/os/Parcelable;

.field private aeJ:Landroid/os/UserManager;

.field private aeK:Landroid/content/pm/LauncherApps;

.field private final aeM:Ljava/lang/Runnable;

.field private final aeN:Ljava/lang/Runnable;

.field private aea:Landroid/content/pm/PackageManager;

.field private mContext:Landroid/content/Context;

.field private final mHandler:Landroid/os/Handler;

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    const-string v0, "NotificationAppList"

    const/4 v1, 0x3

    invoke-static {v0, v1}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/settings_ext/notification/NotificationAppList;->DEBUG:Z

    .line 81
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.MAIN"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "android.intent.category.NOTIFICATION_PREFERENCES"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/notification/NotificationAppList;->aeD:Landroid/content/Intent;

    .line 364
    new-instance v0, Lcom/android/settings_ext/notification/NotificationAppList$1;

    invoke-direct {v0}, Lcom/android/settings_ext/notification/NotificationAppList$1;-><init>()V

    sput-object v0, Lcom/android/settings_ext/notification/NotificationAppList;->aeL:Ljava/util/Comparator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/android/settings_ext/PinnedHeaderListFragment;-><init>()V

    .line 85
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->mHandler:Landroid/os/Handler;

    .line 86
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeE:Landroid/util/ArrayMap;

    .line 87
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeF:Ljava/util/ArrayList;

    .line 88
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeG:Ljava/util/ArrayList;

    .line 95
    new-instance v0, Lcom/android/settings_ext/notification/NotificationAppList$Backend;

    invoke-direct {v0}, Lcom/android/settings_ext/notification/NotificationAppList$Backend;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->adO:Lcom/android/settings_ext/notification/NotificationAppList$Backend;

    .line 430
    new-instance v0, Lcom/android/settings_ext/notification/NotificationAppList$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/notification/NotificationAppList$2;-><init>(Lcom/android/settings_ext/notification/NotificationAppList;)V

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeM:Ljava/lang/Runnable;

    .line 523
    new-instance v0, Lcom/android/settings_ext/notification/NotificationAppList$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/notification/NotificationAppList$3;-><init>(Lcom/android/settings_ext/notification/NotificationAppList;)V

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeN:Ljava/lang/Runnable;

    .line 102
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/notification/NotificationAppList;)Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method public static a(Landroid/content/pm/PackageManager;Landroid/content/pm/ApplicationInfo;Lcom/android/settings_ext/notification/NotificationAppList$Backend;)Lcom/android/settings_ext/notification/NotificationAppList$AppRow;
    .locals 5

    .prologue
    .line 375
    new-instance v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    invoke-direct {v1}, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;-><init>()V

    .line 376
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    .line 377
    iget v0, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->uid:I

    .line 379
    :try_start_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 384
    :goto_0
    invoke-virtual {p1, p0}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    .line 385
    iget-object v0, v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v2, v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, v0, v2}, Lcom/android/settings_ext/notification/NotificationAppList$Backend;->j(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->aeQ:Z

    .line 386
    iget-object v0, v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v2, v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, v0, v2}, Lcom/android/settings_ext/notification/NotificationAppList$Backend;->a(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->aeR:Z

    .line 387
    iget-object v0, v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iget v2, v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->uid:I

    invoke-virtual {p2, v0, v2}, Lcom/android/settings_ext/notification/NotificationAppList$Backend;->k(Ljava/lang/String;I)Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->aeS:Z

    .line 388
    return-object v1

    .line 380
    :catch_0
    move-exception v0

    .line 381
    const-string v2, "NotificationAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error loading application label for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 382
    iget-object v0, v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->pkg:Ljava/lang/String;

    iput-object v0, v1, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings_ext/notification/NotificationAppList;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 73
    invoke-direct {p0, p1}, Lcom/android/settings_ext/notification/NotificationAppList;->c(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static a(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;)V
    .locals 1

    .prologue
    .line 401
    invoke-static {p0}, Lcom/android/settings_ext/notification/NotificationAppList;->f(Landroid/content/pm/PackageManager;)Ljava/util/List;

    move-result-object v0

    .line 402
    invoke-static {p0, p1, v0}, Lcom/android/settings_ext/notification/NotificationAppList;->a(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V

    .line 403
    return-void
.end method

.method public static a(Landroid/content/pm/PackageManager;Landroid/util/ArrayMap;Ljava/util/List;)V
    .locals 5

    .prologue
    .line 407
    sget-boolean v0, Lcom/android/settings_ext/notification/NotificationAppList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v1, "NotificationAppList"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Found "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " preference activities"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    const-string v0, " ;_;"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 409
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ResolveInfo;

    .line 410
    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 411
    iget-object v0, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 412
    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    .line 413
    if-nez v0, :cond_2

    .line 414
    const-string v0, "NotificationAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring notification preference activity ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for unknown package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 407
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 419
    :cond_2
    iget-object v3, v0, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->aeP:Landroid/content/Intent;

    if-eqz v3, :cond_3

    .line 420
    const-string v0, "NotificationAppList"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring duplicate notification preference activity ("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") for package "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 425
    :cond_3
    new-instance v3, Landroid/content/Intent;

    sget-object v4, Lcom/android/settings_ext/notification/NotificationAppList;->aeD:Landroid/content/Intent;

    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iget-object v4, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v3, v4, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    iput-object v2, v0, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->aeP:Landroid/content/Intent;

    goto :goto_1

    .line 428
    :cond_4
    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/notification/NotificationAppList;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private c(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const-string v0, "*"

    .line 188
    :goto_0
    return-object v0

    .line 185
    :cond_1
    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->toUpperCase(C)C

    move-result v0

    .line 186
    const/16 v1, 0x41

    if-ge v0, v1, :cond_2

    const-string v0, "*"

    goto :goto_0

    .line 187
    :cond_2
    const/16 v1, 0x5a

    if-le v0, v1, :cond_3

    const-string v0, "**"

    goto :goto_0

    .line 188
    :cond_3
    invoke-static {v0}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method static synthetic c(Lcom/android/settings_ext/notification/NotificationAppList;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeG:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic d(Lcom/android/settings_ext/notification/NotificationAppList;)Landroid/util/ArrayMap;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeE:Landroid/util/ArrayMap;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings_ext/notification/NotificationAppList;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeF:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic f(Lcom/android/settings_ext/notification/NotificationAppList;)Landroid/content/pm/LauncherApps;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeK:Landroid/content/pm/LauncherApps;

    return-object v0
.end method

.method public static f(Landroid/content/pm/PackageManager;)Ljava/util/List;
    .locals 3

    .prologue
    .line 392
    sget-boolean v0, Lcom/android/settings_ext/notification/NotificationAppList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationAppList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "APP_NOTIFICATION_PREFS_CATEGORY_INTENT is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Lcom/android/settings_ext/notification/NotificationAppList;->aeD:Landroid/content/Intent;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    :cond_0
    sget-object v0, Lcom/android/settings_ext/notification/NotificationAppList;->aeD:Landroid/content/Intent;

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    .line 398
    return-object v0
.end method

.method static synthetic g(Lcom/android/settings_ext/notification/NotificationAppList;)Landroid/content/pm/PackageManager;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aea:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic h(Lcom/android/settings_ext/notification/NotificationAppList;)Lcom/android/settings_ext/notification/NotificationAppList$Backend;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->adO:Lcom/android/settings_ext/notification/NotificationAppList$Backend;

    return-object v0
.end method

.method static synthetic i(Lcom/android/settings_ext/notification/NotificationAppList;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeN:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic j(Lcom/android/settings_ext/notification/NotificationAppList;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 73
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic k(Lcom/android/settings_ext/notification/NotificationAppList;)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationAppList;->qF()V

    return-void
.end method

.method private qD()V
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeM:Ljava/lang/Runnable;

    invoke-static {v0}, Landroid/os/AsyncTask;->execute(Ljava/lang/Runnable;)V

    .line 181
    return-void
.end method

.method private qE()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    .line 192
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getScrollBarSize()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationAppList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v8, v0, v1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v1, v0

    .line 195
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationAppList;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 196
    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 197
    if-gtz v2, :cond_0

    .line 202
    :goto_0
    return-void

    .line 198
    :cond_0
    sget-boolean v3, Lcom/android/settings_ext/notification/NotificationAppList;->DEBUG:Z

    if-eqz v3, :cond_1

    const-string v3, "NotificationAppList"

    const-string v4, "Eating %dpx into %dpx padding for %dpx scroll, ld=%d"

    const/4 v5, 0x4

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v8

    const/4 v6, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v5, v6

    const/4 v1, 0x3

    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v6

    invoke-virtual {v6}, Landroid/widget/ListView;->getLayoutDirection()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_1
    invoke-virtual {v0}, Landroid/view/View;->getPaddingStart()I

    move-result v1

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v3

    invoke-virtual {v0}, Landroid/view/View;->getPaddingEnd()I

    move-result v4

    sub-int v2, v4, v2

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v4

    invoke-virtual {v0, v1, v3, v2, v4}, Landroid/view/View;->setPaddingRelative(IIII)V

    goto :goto_0
.end method

.method private qF()V
    .locals 11

    .prologue
    const/4 v4, 0x1

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 495
    sget-boolean v0, Lcom/android/settings_ext/notification/NotificationAppList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationAppList"

    const-string v1, "Refreshing apps..."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 496
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeH:Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter;->clear()V

    .line 497
    iget-object v7, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeF:Ljava/util/ArrayList;

    monitor-enter v7

    .line 499
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeF:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v8

    move v1, v2

    move v3, v4

    move-object v5, v6

    .line 501
    :goto_0
    if-ge v1, v8, :cond_1

    .line 502
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeF:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;

    .line 503
    iget-object v9, v0, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->aeW:Ljava/lang/String;

    invoke-virtual {v9, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_5

    .line 504
    iget-object v3, v0, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->aeW:Ljava/lang/String;

    .line 505
    new-instance v5, Lcom/android/settings_ext/notification/NotificationAppList$Row;

    const/4 v9, 0x0

    invoke-direct {v5, v9}, Lcom/android/settings_ext/notification/NotificationAppList$Row;-><init>(Lcom/android/settings_ext/notification/NotificationAppList$1;)V

    .line 506
    iput-object v3, v5, Lcom/android/settings_ext/notification/NotificationAppList$Row;->aeW:Ljava/lang/String;

    .line 507
    iget-object v9, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeH:Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter;

    invoke-virtual {v9, v5}, Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    move v5, v4

    .line 510
    :goto_1
    iput-boolean v5, v0, Lcom/android/settings_ext/notification/NotificationAppList$AppRow;->aeT:Z

    .line 511
    iget-object v5, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeH:Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter;

    invoke-virtual {v5, v0}, Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter;->add(Ljava/lang/Object;)V

    .line 501
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v5, v3

    move v3, v2

    goto :goto_0

    .line 514
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 515
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeI:Landroid/os/Parcelable;

    if-eqz v0, :cond_3

    .line 516
    sget-boolean v0, Lcom/android/settings_ext/notification/NotificationAppList;->DEBUG:Z

    if-eqz v0, :cond_2

    const-string v0, "NotificationAppList"

    const-string v1, "Restoring listView state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    :cond_2
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeI:Landroid/os/Parcelable;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 518
    iput-object v6, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeI:Landroid/os/Parcelable;

    .line 520
    :cond_3
    sget-boolean v0, Lcom/android/settings_ext/notification/NotificationAppList;->DEBUG:Z

    if-eqz v0, :cond_4

    const-string v0, "NotificationAppList"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Refreshed "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeF:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " displayed items"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    :cond_4
    return-void

    .line 514
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_5
    move v10, v3

    move-object v3, v5

    move v5, v10

    goto :goto_1
.end method

.method static synthetic qG()Z
    .locals 1

    .prologue
    .line 73
    sget-boolean v0, Lcom/android/settings_ext/notification/NotificationAppList;->DEBUG:Z

    return v0
.end method

.method static synthetic qH()Ljava/util/Comparator;
    .locals 1

    .prologue
    .line 73
    sget-object v0, Lcom/android/settings_ext/notification/NotificationAppList;->aeL:Ljava/util/Comparator;

    return-object v0
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 136
    invoke-super {p0, p1}, Lcom/android/settings_ext/PinnedHeaderListFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 137
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationAppList;->qE()V

    .line 138
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeH:Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 139
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/android/settings_ext/PinnedHeaderListFragment;->onCreate(Landroid/os/Bundle;)V

    .line 106
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->mContext:Landroid/content/Context;

    .line 107
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->mInflater:Landroid/view/LayoutInflater;

    .line 108
    new-instance v0, Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter;

    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationAppList;->mContext:Landroid/content/Context;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter;-><init>(Lcom/android/settings_ext/notification/NotificationAppList;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeH:Lcom/android/settings_ext/notification/NotificationAppList$NotificationAppAdapter;

    .line 109
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeJ:Landroid/os/UserManager;

    .line 110
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aea:Landroid/content/pm/PackageManager;

    .line 111
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->mContext:Landroid/content/Context;

    const-string v1, "launcherapps"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/LauncherApps;

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeK:Landroid/content/pm/LauncherApps;

    .line 112
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0909d0

    invoke-virtual {v0, v1}, Landroid/app/Activity;->setTitle(I)V

    .line 113
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 118
    const v0, 0x7f040098

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    .line 150
    invoke-super {p0}, Lcom/android/settings_ext/PinnedHeaderListFragment;->onDestroyView()V

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeI:Landroid/os/Parcelable;

    .line 152
    return-void
.end method

.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 4

    .prologue
    .line 162
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->Hh:Lcom/android/settings_ext/hj;

    invoke-virtual {v0, p3}, Lcom/android/settings_ext/hj;->ag(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 163
    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eq v1, v2, :cond_0

    .line 164
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const-class v3, Lcom/android/settings_ext/Settings$NotificationAppListActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 165
    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 166
    const v2, 0x8000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 167
    iget-object v2, p0, Lcom/android/settings_ext/notification/NotificationAppList;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1, v0}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 169
    :cond_0
    return-void
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 0

    .prologue
    .line 173
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 143
    invoke-super {p0}, Lcom/android/settings_ext/PinnedHeaderListFragment;->onPause()V

    .line 144
    sget-boolean v0, Lcom/android/settings_ext/notification/NotificationAppList;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string v0, "NotificationAppList"

    const-string v1, "Saving listView state"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationAppList;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeI:Landroid/os/Parcelable;

    .line 146
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 156
    invoke-super {p0}, Lcom/android/settings_ext/PinnedHeaderListFragment;->onResume()V

    .line 157
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationAppList;->qD()V

    .line 158
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 123
    invoke-super {p0, p1, p2}, Lcom/android/settings_ext/PinnedHeaderListFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 124
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->aeJ:Landroid/os/UserManager;

    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationAppList;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lcom/android/settings_ext/hl;->a(Landroid/os/UserManager;Landroid/content/Context;)Lcom/android/settings_ext/hj;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->Hh:Lcom/android/settings_ext/hj;

    .line 125
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationAppList;->Hh:Lcom/android/settings_ext/hj;

    if-eqz v0, :cond_0

    .line 126
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationAppList;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040104

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 128
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationAppList;->Hh:Lcom/android/settings_ext/hj;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 129
    invoke-virtual {v0, p0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 130
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/NotificationAppList;->c(Landroid/view/View;)V

    .line 132
    :cond_0
    return-void
.end method
