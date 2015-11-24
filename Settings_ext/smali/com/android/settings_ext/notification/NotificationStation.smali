.class public Lcom/android/settings_ext/notification/NotificationStation;
.super Lcom/android/settings_ext/SettingsPreferenceFragment;
.source "NotificationStation.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private aft:Landroid/app/INotificationManager;

.field private afu:Ljava/lang/Runnable;

.field private afv:Landroid/service/notification/NotificationListenerService;

.field private afw:Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;

.field private final afx:Ljava/util/Comparator;

.field private i:Landroid/content/pm/PackageManager;

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/android/settings_ext/notification/NotificationStation;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/notification/NotificationStation;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;-><init>()V

    .line 77
    new-instance v0, Lcom/android/settings_ext/notification/NotificationStation$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/notification/NotificationStation$1;-><init>(Lcom/android/settings_ext/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationStation;->afu:Ljava/lang/Runnable;

    .line 84
    new-instance v0, Lcom/android/settings_ext/notification/NotificationStation$2;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/notification/NotificationStation$2;-><init>(Lcom/android/settings_ext/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationStation;->afv:Landroid/service/notification/NotificationListenerService;

    .line 104
    new-instance v0, Lcom/android/settings_ext/notification/NotificationStation$3;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/notification/NotificationStation$3;-><init>(Lcom/android/settings_ext/notification/NotificationStation;)V

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationStation;->afx:Ljava/util/Comparator;

    .line 288
    return-void
.end method

.method private a(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 271
    invoke-direct {p0, p1, p2}, Lcom/android/settings_ext/notification/NotificationStation;->m(Ljava/lang/String;I)Landroid/content/res/Resources;

    move-result-object v0

    .line 273
    if-nez p3, :cond_0

    move-object v0, v1

    .line 285
    :goto_0
    return-object v0

    .line 278
    :cond_0
    :try_start_0
    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 279
    :catch_0
    move-exception v2

    .line 280
    sget-object v3, Lcom/android/settings_ext/notification/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Icon not found in "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    if-eqz p1, :cond_1

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    :goto_1
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-object v0, v1

    .line 285
    goto :goto_0

    .line 280
    :cond_1
    const-string v0, "<system>"

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/settings_ext/notification/NotificationStation;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationStation;->qM()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/notification/NotificationStation;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0, p1}, Lcom/android/settings_ext/notification/NotificationStation;->aS(Ljava/lang/String;)V

    return-void
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 172
    return-void
.end method

.method private aR(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 261
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationStation;->i:Landroid/content/pm/PackageManager;

    const/16 v1, 0x2000

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 263
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationStation;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getApplicationLabel(Landroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p1

    .line 267
    :cond_0
    :goto_0
    return-object p1

    .line 264
    :catch_0
    move-exception v0

    .line 265
    sget-object v1, Lcom/android/settings_ext/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot load package name"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private aS(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 337
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    const-string v2, "package"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 339
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationStation;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 340
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/notification/NotificationStation;->startActivity(Landroid/content/Intent;)V

    .line 341
    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/notification/NotificationStation;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationStation;->afu:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 57
    invoke-static {p0, p1}, Lcom/android/settings_ext/notification/NotificationStation;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method private m(Ljava/lang/String;I)Landroid/content/res/Resources;
    .locals 4

    .prologue
    .line 230
    .line 232
    if-eqz p1, :cond_1

    .line 234
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 235
    const/4 p2, 0x0

    .line 237
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationStation;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, p1, p2}, Landroid/content/pm/PackageManager;->getResourcesForApplicationAsUser(Ljava/lang/String;I)Landroid/content/res/Resources;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    .line 238
    :catch_0
    move-exception v0

    .line 239
    sget-object v1, Lcom/android/settings_ext/notification/NotificationStation;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Icon package not found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 240
    const/4 v0, 0x0

    goto :goto_0

    .line 243
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    goto :goto_0
.end method

.method private n(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;
    .locals 4

    .prologue
    .line 249
    const/4 v0, 0x0

    .line 251
    :try_start_0
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationStation;->i:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, p1}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 256
    :goto_0
    return-object v0

    .line 252
    :catch_0
    move-exception v1

    .line 253
    sget-object v2, Lcom/android/settings_ext/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v3, "Cannot get application icon"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private qM()V
    .locals 5

    .prologue
    .line 159
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationStation;->qN()Ljava/util/List;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    .line 161
    const-string v1, "adding %d infos"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/android/settings_ext/notification/NotificationStation;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 162
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationStation;->afw:Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v1}, Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;->clear()V

    .line 163
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationStation;->afw:Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;->addAll(Ljava/util/Collection;)V

    .line 164
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationStation;->afw:Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;

    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationStation;->afx:Ljava/util/Comparator;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;->sort(Ljava/util/Comparator;)V

    .line 166
    :cond_0
    return-void
.end method

.method private qN()Ljava/util/List;
    .locals 18

    .prologue
    .line 175
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v6

    .line 177
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/notification/NotificationStation;->aft:Landroid/app/INotificationManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/app/INotificationManager;->getActiveNotifications(Ljava/lang/String;)[Landroid/service/notification/StatusBarNotification;

    move-result-object v7

    .line 179
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/notification/NotificationStation;->aft:Landroid/app/INotificationManager;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const/16 v4, 0x32

    invoke-interface {v2, v3, v4}, Landroid/app/INotificationManager;->getHistoricalNotifications(Ljava/lang/String;I)[Landroid/service/notification/StatusBarNotification;

    move-result-object v3

    .line 182
    new-instance v2, Ljava/util/ArrayList;

    array-length v4, v7

    array-length v5, v3

    add-int/2addr v4, v5

    invoke-direct {v2, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 186
    const/4 v4, 0x2

    new-array v8, v4, [[Landroid/service/notification/StatusBarNotification;

    const/4 v4, 0x0

    aput-object v7, v8, v4

    const/4 v4, 0x1

    aput-object v3, v8, v4

    array-length v9, v8

    const/4 v3, 0x0

    move v5, v3

    :goto_0
    if-ge v5, v9, :cond_a

    aget-object v10, v8, v5

    .line 187
    array-length v11, v10

    const/4 v3, 0x0

    move v4, v3

    :goto_1
    if-ge v4, v11, :cond_9

    aget-object v3, v10, v4

    .line 188
    new-instance v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;

    const/4 v13, 0x0

    invoke-direct {v12, v13}, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;-><init>(Lcom/android/settings_ext/notification/NotificationStation$1;)V

    .line 189
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    .line 190
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getUserId()I

    move-result v13

    iput v13, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->afB:I

    .line 191
    iget-object v13, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    iget v14, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->afB:I

    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v15

    iget v15, v15, Landroid/app/Notification;->icon:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14, v15}, Lcom/android/settings_ext/notification/NotificationStation;->a(Ljava/lang/String;II)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iput-object v13, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->icon:Landroid/graphics/drawable/Drawable;

    .line 192
    iget-object v13, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    iget v14, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->afB:I

    move-object/from16 v0, p0

    invoke-direct {v0, v13, v14}, Lcom/android/settings_ext/notification/NotificationStation;->n(Ljava/lang/String;I)Landroid/graphics/drawable/Drawable;

    move-result-object v13

    iput-object v13, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->afz:Landroid/graphics/drawable/Drawable;

    .line 193
    iget-object v13, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    move-object/from16 v0, p0

    invoke-direct {v0, v13}, Lcom/android/settings_ext/notification/NotificationStation;->aR(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v13

    iput-object v13, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->afA:Ljava/lang/CharSequence;

    .line 194
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget-object v13, v13, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    if-eqz v13, :cond_1

    .line 195
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget-object v13, v13, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v14, "android.title"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 197
    iget-object v13, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v13, :cond_0

    const-string v13, ""

    iget-object v14, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 198
    :cond_0
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget-object v13, v13, Landroid/app/Notification;->extras:Landroid/os/Bundle;

    const-string v14, "android.text"

    invoke-virtual {v13, v14}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    iput-object v13, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 202
    :cond_1
    iget-object v13, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v13, :cond_2

    const-string v13, ""

    iget-object v14, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 203
    :cond_2
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v13

    iget-object v13, v13, Landroid/app/Notification;->tickerText:Ljava/lang/CharSequence;

    iput-object v13, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 206
    :cond_3
    iget-object v13, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    if-eqz v13, :cond_4

    const-string v13, ""

    iget-object v14, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    invoke-virtual {v13, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    .line 207
    :cond_4
    iget-object v13, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->afA:Ljava/lang/CharSequence;

    iput-object v13, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    .line 209
    :cond_5
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getPostTime()J

    move-result-wide v14

    iput-wide v14, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    .line 210
    invoke-virtual {v3}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v3

    iget v3, v3, Landroid/app/Notification;->priority:I

    iput v3, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->priority:I

    .line 211
    const-string v3, "   [%d] %s: %s"

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/4 v14, 0x0

    iget-wide v0, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v13, v14

    const/4 v14, 0x1

    iget-object v15, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    aput-object v15, v13, v14

    const/4 v14, 0x2

    iget-object v15, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->title:Ljava/lang/CharSequence;

    aput-object v15, v13, v14

    invoke-static {v3, v13}, Lcom/android/settings_ext/notification/NotificationStation;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    if-ne v10, v7, :cond_8

    const/4 v3, 0x1

    :goto_2
    iput-boolean v3, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->active:Z

    .line 215
    iget v3, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->afB:I

    const/4 v13, -0x1

    if-eq v3, v13, :cond_6

    iget v3, v12, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->afB:I

    if-ne v3, v6, :cond_7

    .line 217
    :cond_6
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 187
    :cond_7
    add-int/lit8 v3, v4, 0x1

    move v4, v3

    goto/16 :goto_1

    .line 213
    :cond_8
    const/4 v3, 0x0

    goto :goto_2

    .line 186
    :cond_9
    add-int/lit8 v3, v5, 0x1

    move v5, v3

    goto/16 :goto_0

    .line 223
    :catch_0
    move-exception v2

    .line 224
    sget-object v3, Lcom/android/settings_ext/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v4, "Cannot load Notifications: "

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 226
    const/4 v2, 0x0

    :cond_a
    return-object v2
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 141
    const-string v0, "onActivityCreated(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings_ext/notification/NotificationStation;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 142
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 144
    invoke-virtual {p0}, Lcom/android/settings_ext/notification/NotificationStation;->getListView()Landroid/widget/ListView;

    move-result-object v0

    .line 145
    invoke-static {v0, v2}, Lcom/android/settings_ext/hl;->a(Landroid/view/View;Z)V

    .line 147
    new-instance v1, Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;

    iget-object v2, p0, Lcom/android/settings_ext/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;-><init>(Lcom/android/settings_ext/notification/NotificationStation;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/settings_ext/notification/NotificationStation;->afw:Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;

    .line 148
    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationStation;->afw:Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 149
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 5

    .prologue
    .line 115
    const-string v0, "onAttach(%s)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings_ext/notification/NotificationStation;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 116
    invoke-super {p0, p1}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onAttach(Landroid/app/Activity;)V

    .line 117
    iput-object p1, p0, Lcom/android/settings_ext/notification/NotificationStation;->mContext:Landroid/content/Context;

    .line 118
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationStation;->i:Landroid/content/pm/PackageManager;

    .line 119
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/notification/NotificationStation;->aft:Landroid/app/INotificationManager;

    .line 122
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationStation;->afv:Landroid/service/notification/NotificationListenerService;

    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationStation;->mContext:Landroid/content/Context;

    new-instance v2, Landroid/content/ComponentName;

    iget-object v3, p0, Lcom/android/settings_ext/notification/NotificationStation;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Landroid/service/notification/NotificationListenerService;->registerAsSystemService(Landroid/content/Context;Landroid/content/ComponentName;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 127
    :goto_0
    return-void

    .line 124
    :catch_0
    move-exception v0

    .line 125
    sget-object v1, Lcom/android/settings_ext/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot register listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 132
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationStation;->afv:Landroid/service/notification/NotificationListenerService;

    invoke-virtual {v0}, Landroid/service/notification/NotificationListenerService;->unregisterAsSystemService()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 136
    :goto_0
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onDetach()V

    .line 137
    return-void

    .line 133
    :catch_0
    move-exception v0

    .line 134
    sget-object v1, Lcom/android/settings_ext/notification/NotificationStation;->TAG:Ljava/lang/String;

    const-string v2, "Cannot unregister listener"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 153
    const-string v0, "onResume()"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/android/settings_ext/notification/NotificationStation;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 154
    invoke-super {p0}, Lcom/android/settings_ext/SettingsPreferenceFragment;->onResume()V

    .line 155
    invoke-direct {p0}, Lcom/android/settings_ext/notification/NotificationStation;->qM()V

    .line 156
    return-void
.end method
