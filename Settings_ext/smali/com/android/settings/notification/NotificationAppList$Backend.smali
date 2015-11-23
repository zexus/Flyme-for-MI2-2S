.class public Lcom/android/settings/notification/NotificationAppList$Backend;
.super Ljava/lang/Object;
.source "NotificationAppList.java"


# static fields
.field static dT:Landroid/app/INotificationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 531
    const-string v0, "notification"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v0

    sput-object v0, Lcom/android/settings/notification/NotificationAppList$Backend;->dT:Landroid/app/INotificationManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 530
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 556
    :try_start_0
    sget-object v1, Lcom/android/settings/notification/NotificationAppList$Backend;->dT:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->getPackagePriority(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    .line 559
    :cond_0
    :goto_0
    return v0

    .line 557
    :catch_0
    move-exception v1

    .line 558
    const-string v2, "NotificationAppList"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public a(Ljava/lang/String;IZ)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 536
    :try_start_0
    sget-object v3, Lcom/android/settings/notification/NotificationAppList$Backend;->dT:Landroid/app/INotificationManager;

    if-nez p3, :cond_0

    move v2, v0

    :goto_0
    invoke-interface {v3, p1, p2, v2}, Landroid/app/INotificationManager;->setNotificationsEnabledForPackage(Ljava/lang/String;IZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 540
    :goto_1
    return v0

    :cond_0
    move v2, v1

    .line 536
    goto :goto_0

    .line 538
    :catch_0
    move-exception v0

    .line 539
    const-string v2, "NotificationAppList"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v0, v1

    .line 540
    goto :goto_1
.end method

.method public b(Ljava/lang/String;IZ)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 565
    :try_start_0
    sget-object v2, Lcom/android/settings/notification/NotificationAppList$Backend;->dT:Landroid/app/INotificationManager;

    if-eqz p3, :cond_0

    const/4 v1, 0x2

    :goto_0
    invoke-interface {v2, p1, p2, v1}, Landroid/app/INotificationManager;->setPackagePriority(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 567
    const/4 v0, 0x1

    .line 570
    :goto_1
    return v0

    :cond_0
    move v1, v0

    .line 565
    goto :goto_0

    .line 568
    :catch_0
    move-exception v1

    .line 569
    const-string v2, "NotificationAppList"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public c(Ljava/lang/String;IZ)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 585
    :try_start_0
    sget-object v2, Lcom/android/settings/notification/NotificationAppList$Backend;->dT:Landroid/app/INotificationManager;

    if-eqz p3, :cond_0

    move v1, v0

    :goto_0
    invoke-interface {v2, p1, p2, v1}, Landroid/app/INotificationManager;->setPackageVisibilityOverride(Ljava/lang/String;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 588
    const/4 v0, 0x1

    .line 591
    :goto_1
    return v0

    .line 585
    :cond_0
    const/16 v1, -0x3e8

    goto :goto_0

    .line 589
    :catch_0
    move-exception v1

    .line 590
    const-string v2, "NotificationAppList"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public j(Ljava/lang/String;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 546
    :try_start_0
    sget-object v1, Lcom/android/settings/notification/NotificationAppList$Backend;->dT:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->areNotificationsEnabledForPackage(Ljava/lang/String;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 547
    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 550
    :cond_0
    :goto_0
    return v0

    .line 548
    :catch_0
    move-exception v1

    .line 549
    const-string v2, "NotificationAppList"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public k(Ljava/lang/String;I)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 576
    :try_start_0
    sget-object v1, Lcom/android/settings/notification/NotificationAppList$Backend;->dT:Landroid/app/INotificationManager;

    invoke-interface {v1, p1, p2}, Landroid/app/INotificationManager;->getPackageVisibilityOverride(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 579
    :cond_0
    :goto_0
    return v0

    .line 577
    :catch_0
    move-exception v1

    .line 578
    const-string v2, "NotificationAppList"

    const-string v3, "Error calling NoMan"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
