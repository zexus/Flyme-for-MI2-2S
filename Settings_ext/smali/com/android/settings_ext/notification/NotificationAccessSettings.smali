.class public Lcom/android/settings_ext/notification/NotificationAccessSettings;
.super Lcom/android/settings_ext/notification/ManagedServiceSettings;
.source "NotificationAccessSettings.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final adU:Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 27
    const-class v0, Lcom/android/settings_ext/notification/NotificationAccessSettings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/notification/NotificationAccessSettings;->TAG:Ljava/lang/String;

    .line 28
    invoke-static {}, Lcom/android/settings_ext/notification/NotificationAccessSettings;->qC()Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;

    move-result-object v0

    sput-object v0, Lcom/android/settings_ext/notification/NotificationAccessSettings;->adU:Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/android/settings_ext/notification/ManagedServiceSettings;-><init>()V

    return-void
.end method

.method public static aZ(Landroid/content/Context;)I
    .locals 1

    .prologue
    .line 53
    sget-object v0, Lcom/android/settings_ext/notification/NotificationAccessSettings;->adU:Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;

    invoke-static {v0, p0}, Lcom/android/settings_ext/notification/NotificationAccessSettings;->a(Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;Landroid/content/Context;)I

    move-result v0

    return v0
.end method

.method public static e(Landroid/content/pm/PackageManager;)I
    .locals 1

    .prologue
    .line 49
    sget-object v0, Lcom/android/settings_ext/notification/NotificationAccessSettings;->adU:Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;

    invoke-static {v0, p0}, Lcom/android/settings_ext/notification/NotificationAccessSettings;->a(Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;Landroid/content/pm/PackageManager;)I

    move-result v0

    return v0
.end method

.method private static qC()Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;
    .locals 2

    .prologue
    .line 31
    new-instance v0, Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;

    invoke-direct {v0}, Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;-><init>()V

    .line 32
    sget-object v1, Lcom/android/settings_ext/notification/NotificationAccessSettings;->TAG:Ljava/lang/String;

    iput-object v1, v0, Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;->tag:Ljava/lang/String;

    .line 33
    const-string v1, "enabled_notification_listeners"

    iput-object v1, v0, Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;->aeg:Ljava/lang/String;

    .line 34
    const-string v1, "android.service.notification.NotificationListenerService"

    iput-object v1, v0, Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;->intentAction:Ljava/lang/String;

    .line 35
    const-string v1, "android.permission.BIND_NOTIFICATION_LISTENER_SERVICE"

    iput-object v1, v0, Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;->permission:Ljava/lang/String;

    .line 36
    const-string v1, "notification listener"

    iput-object v1, v0, Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;->aeh:Ljava/lang/String;

    .line 37
    const v1, 0x7f0909e0

    iput v1, v0, Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;->aei:I

    .line 38
    const v1, 0x7f0909e1

    iput v1, v0, Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;->aej:I

    .line 39
    const v1, 0x7f0909df

    iput v1, v0, Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;->aek:I

    .line 40
    return-object v0
.end method


# virtual methods
.method protected qx()Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/android/settings_ext/notification/NotificationAccessSettings;->adU:Lcom/android/settings_ext/notification/ManagedServiceSettings$Config;

    return-object v0
.end method
