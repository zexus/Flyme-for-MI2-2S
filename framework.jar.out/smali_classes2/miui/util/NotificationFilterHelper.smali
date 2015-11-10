.class public Lmiui/util/NotificationFilterHelper;
.super Ljava/lang/Object;
.source "NotificationFilterHelper.java"


# static fields
.field private static final APP_NOTIFICATION:Ljava/lang/String; = "app_notification"

.field public static final DISABLE_ALL:I = 0x3

.field public static final DISABLE_FLOATING:I = 0x1

.field public static final ENABLE:I = 0x2

.field public static final KEYGUARD:Ljava/lang/String; = "_keyguard"

.field public static final LED:Ljava/lang/String; = "_led"

.field public static final MESSAGE:Ljava/lang/String; = "_message"

.field public static final NONE:I = 0x0

.field public static final SOUND:Ljava/lang/String; = "_sound"

.field private static final SYSTEMUI_PACKAGE_NAME:Ljava/lang/String; = "com.android.systemui"

.field private static final TAG:Ljava/lang/String; = "NotificationFilterHelper"

.field public static final VIBRATE:Ljava/lang/String; = "_vibrate"

.field private static nm:Landroid/app/INotificationManager;

.field private static sIsSystemApp:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private static sNetFilterMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sNotificationCanBeBlockedList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sNotificationForcedEnabledList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sUidMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static sWhiteList:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 37
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/util/NotificationFilterHelper;->sWhiteList:Ljava/util/HashSet;

    .line 38
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/NotificationFilterHelper;->sNetFilterMap:Ljava/util/HashMap;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/NotificationFilterHelper;->sUidMap:Ljava/util/HashMap;

    .line 58
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lmiui/util/NotificationFilterHelper;->nm:Landroid/app/INotificationManager;

    .line 201
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lmiui/util/NotificationFilterHelper;->sIsSystemApp:Ljava/util/HashMap;

    .line 237
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationCanBeBlockedList:Ljava/util/HashSet;

    .line 238
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledList:Ljava/util/HashSet;

    .line 241
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationCanBeBlockedList:Ljava/util/HashSet;

    const-string v1, "com.miui.fm"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 242
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationCanBeBlockedList:Ljava/util/HashSet;

    const-string v1, "com.miui.antispam"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 244
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledList:Ljava/util/HashSet;

    const-string v1, "android"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 245
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledList:Ljava/util/HashSet;

    const-string v1, "com.xiaomi.xmsf"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 246
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledList:Ljava/util/HashSet;

    const-string v1, "com.android.incallui"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 247
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledList:Ljava/util/HashSet;

    const-string v1, "com.android.deskclock"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 248
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledList:Ljava/util/HashSet;

    const-string v1, "com.android.mms"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 249
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledList:Ljava/util/HashSet;

    const-string v1, "com.android.bluetooth"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 250
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledList:Ljava/util/HashSet;

    const-string v1, "com.android.updater"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 251
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNetFilterMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$100()Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sUidMap:Ljava/util/HashMap;

    return-object v0
.end method

.method private static areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 153
    const/4 v0, 0x1

    .line 155
    .local v0, "enabledNotice":Z
    :try_start_0
    sget-object v1, Lmiui/util/NotificationFilterHelper;->nm:Landroid/app/INotificationManager;

    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v2

    invoke-interface {v1, p1, v2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 158
    :goto_0
    return v0

    .line 156
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static canSendNotifications(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 108
    invoke-static {p0, p1, v0}, Lmiui/util/NotificationFilterHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v1

    const/4 v2, 0x3

    if-eq v1, v2, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static canSystemNotificationBeBlocked(Ljava/lang/String;)Z
    .locals 1
    .param p0, "pkg"    # Ljava/lang/String;

    .prologue
    .line 254
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationCanBeBlockedList:Ljava/util/HashSet;

    invoke-virtual {v0, p0}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static enableNotifications(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "enabled"    # Z

    .prologue
    .line 162
    if-nez p2, :cond_0

    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->isNotificationForcedFor(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    :goto_0
    return-void

    .line 166
    :cond_0
    :try_start_0
    sget-object v0, Lmiui/util/NotificationFilterHelper;->nm:Landroid/app/INotificationManager;

    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    invoke-interface {v0, p1, v1, p2}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 167
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method private static enableStatusIcon(Landroid/content/Context;Ljava/lang/String;I)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 176
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 177
    return-void
.end method

.method public static enableStatusIcon(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    .line 172
    if-eqz p2, :cond_0

    const/4 v0, 0x2

    :goto_0
    invoke-static {p0, p1, v0}, Lmiui/util/NotificationFilterHelper;->enableStatusIcon(Landroid/content/Context;Ljava/lang/String;I)V

    .line 173
    return-void

    .line 172
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public static getAppFlag(Landroid/content/Context;Ljava/lang/String;Z)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "checkSystemSetting"    # Z

    .prologue
    .line 112
    if-eqz p2, :cond_3

    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->areNotificationsEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    .line 113
    .local v0, "enabledNotice":Z
    :goto_0
    const/4 v1, 0x0

    .line 114
    .local v1, "flag":I
    if-eqz v0, :cond_4

    .line 115
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 116
    if-nez v1, :cond_0

    .line 118
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getNetDefaultFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 120
    :cond_0
    if-nez v1, :cond_1

    .line 122
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getDefaultFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    .line 124
    :cond_1
    if-nez v1, :cond_2

    .line 125
    const/4 v1, 0x1

    .line 131
    :cond_2
    :goto_1
    return v1

    .line 112
    .end local v0    # "enabledNotice":Z
    .end local v1    # "flag":I
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 129
    .restart local v0    # "enabledNotice":Z
    .restart local v1    # "flag":I
    :cond_4
    const/4 v1, 0x3

    goto :goto_1
.end method

.method private static getAppUid(Landroid/content/Context;Ljava/lang/String;)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 262
    const/4 v1, 0x0

    .line 263
    .local v1, "uid":I
    sget-object v2, Lmiui/util/NotificationFilterHelper;->sUidMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 264
    sget-object v2, Lmiui/util/NotificationFilterHelper;->sUidMap:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 275
    :goto_0
    return v1

    .line 267
    :cond_0
    const/4 v0, 0x0

    .line 269
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, p1, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 270
    iget v1, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 271
    sget-object v2, Lmiui/util/NotificationFilterHelper;->sUidMap:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, p1, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method public static getCustomSoundUri(Landroid/content/Context;Landroid/net/Uri;Landroid/service/notification/StatusBarNotification;)Landroid/net/Uri;
    .locals 0
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "soundUri"    # Landroid/net/Uri;
    .param p2, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 280
    return-object p1
.end method

.method private static getDefaultFlag(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 139
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->initFilterList(Landroid/content/Context;)V

    .line 140
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sWhiteList:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x2

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static getNetDefaultFlag(Landroid/content/Context;Ljava/lang/String;)I
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 135
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNetFilterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNetFilterMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->loadAppNetFlagByPkg(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public static getNotificationForcedEnabledList()Ljava/util/HashSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    sget-object v0, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledList:Ljava/util/HashSet;

    return-object v0
.end method

.method private static getRealPackageName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;
    .locals 1
    .param p0, "sbn"    # Landroid/service/notification/StatusBarNotification;

    .prologue
    .line 284
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v0}, Landroid/app/MiuiNotification;->getTargetPkg()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getNotification()Landroid/app/Notification;

    move-result-object v0

    iget-object v0, v0, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v0}, Landroid/app/MiuiNotification;->getTargetPkg()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 97
    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "com.android.systemui"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 99
    :try_start_0
    const-string v1, "com.android.systemui"

    const/4 v2, 0x2

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object p0

    .line 104
    :cond_0
    :goto_0
    const-string v1, "app_notification"

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    return-object v1

    .line 100
    :catch_0
    move-exception v0

    .line 101
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private static initFilterList(Landroid/content/Context;)V
    .locals 7
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 144
    sget-object v5, Lmiui/util/NotificationFilterHelper;->sWhiteList:Ljava/util/HashSet;

    invoke-virtual {v5}, Ljava/util/HashSet;->size()I

    move-result v5

    if-nez v5, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x11080007

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 146
    .local v4, "whitelist":[Ljava/lang/String;
    move-object v0, v4

    .local v0, "arr$":[Ljava/lang/String;
    array-length v2, v0

    .local v2, "len$":I
    const/4 v1, 0x0

    .local v1, "i$":I
    :goto_0
    if-ge v1, v2, :cond_0

    aget-object v3, v0, v1

    .line 147
    .local v3, "pkg":Ljava/lang/String;
    sget-object v5, Lmiui/util/NotificationFilterHelper;->sWhiteList:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 146
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .end local v0    # "arr$":[Ljava/lang/String;
    .end local v1    # "i$":I
    .end local v2    # "len$":I
    .end local v3    # "pkg":Ljava/lang/String;
    .end local v4    # "whitelist":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public static initUserSetting(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 190
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->isUserSetttingInited(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 191
    invoke-static {p0, p1, v2}, Lmiui/util/NotificationFilterHelper;->getAppFlag(Landroid/content/Context;Ljava/lang/String;Z)I

    move-result v0

    .line 192
    .local v0, "flag":I
    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    .line 193
    invoke-static {p0, p1, v2}, Lmiui/util/NotificationFilterHelper;->enableNotifications(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 194
    invoke-static {p0, p1, v2}, Lmiui/util/NotificationFilterHelper;->enableStatusIcon(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 199
    .end local v0    # "flag":I
    :cond_0
    :goto_0
    return-void

    .line 196
    .restart local v0    # "flag":I
    :cond_1
    invoke-static {p0, p1, v0}, Lmiui/util/NotificationFilterHelper;->enableStatusIcon(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public static isAllowed(Landroid/content/Context;Landroid/service/notification/StatusBarNotification;Ljava/lang/String;)Z
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "sbn"    # Landroid/service/notification/StatusBarNotification;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    .line 290
    invoke-static {p1}, Lmiui/util/NotificationFilterHelper;->getRealPackageName(Landroid/service/notification/StatusBarNotification;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, v0, p2}, Lmiui/util/NotificationFilterHelper;->isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isAllowed(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x1

    .line 294
    const-string v1, "_keyguard"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 295
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getDefaultFlag(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    .line 297
    :goto_0
    return v0

    .line 295
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 297
    :cond_1
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method

.method public static isNotificationForcedFor(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 223
    sget-object v3, Lmiui/util/NotificationFilterHelper;->sNotificationForcedEnabledList:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 234
    :cond_0
    :goto_0
    return v1

    .line 225
    :cond_1
    invoke-static {p1}, Lmiui/util/NotificationFilterHelper;->canSystemNotificationBeBlocked(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    move v1, v2

    .line 226
    goto :goto_0

    .line 228
    :cond_2
    invoke-static {p0, p1}, Lmiui/util/NotificationFilterHelper;->getAppUid(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 229
    .local v0, "appId":I
    const/16 v3, 0x3e8

    if-eq v0, v3, :cond_0

    const/16 v3, 0x3e9

    if-eq v0, v3, :cond_0

    if-eqz v0, :cond_0

    move v1, v2

    .line 234
    goto :goto_0
.end method

.method public static isSystemApp(Ljava/lang/String;Landroid/content/pm/PackageManager;)Z
    .locals 4
    .param p0, "pkg"    # Ljava/lang/String;
    .param p1, "pm"    # Landroid/content/pm/PackageManager;

    .prologue
    const/4 v2, 0x0

    .line 203
    sget-object v3, Lmiui/util/NotificationFilterHelper;->sIsSystemApp:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 204
    .local v1, "isSystemApp":Ljava/lang/Boolean;
    if-nez v1, :cond_1

    .line 205
    const/4 v0, 0x0

    .line 207
    .local v0, "info":Landroid/content/pm/ApplicationInfo;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {p1, p0, v3}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 210
    :goto_0
    if-eqz v0, :cond_0

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 211
    sget-object v2, Lmiui/util/NotificationFilterHelper;->sIsSystemApp:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 213
    .end local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    return v2

    .line 208
    .restart local v0    # "info":Landroid/content/pm/ApplicationInfo;
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private static isUserSetttingInited(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    const/4 v0, 0x0

    .line 180
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static loadAppNetFlag(Landroid/content/Context;)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lmiui/util/NotificationFilterHelper$1;

    invoke-direct {v1, p0}, Lmiui/util/NotificationFilterHelper$1;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 94
    return-void
.end method

.method public static loadAppNetFlagByPkg(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;

    .prologue
    .line 63
    sget-object v1, Lmiui/provider/CloudAppControll$TAG;->TAG_NOTIFICATION_BLACKLIST:Lmiui/provider/CloudAppControll$TAG;

    invoke-static {p0, v1, p1}, Lmiui/provider/CloudAppControll;->get(Landroid/content/Context;Lmiui/provider/CloudAppControll$TAG;Ljava/lang/String;)I

    move-result v0

    .line 66
    .local v0, "flag":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 67
    const/4 v0, 0x0

    .line 72
    :goto_0
    return v0

    .line 70
    :cond_0
    sget-object v1, Lmiui/util/NotificationFilterHelper;->sNetFilterMap:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method public static setAllow(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "allow"    # Z

    .prologue
    .line 301
    invoke-static {p0}, Lmiui/util/NotificationFilterHelper;->getSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 302
    return-void
.end method
