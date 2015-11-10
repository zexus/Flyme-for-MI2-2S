.class public Lcom/android/server/notification/NotificationLightController;
.super Ljava/lang/Object;
.source "NotificationLightController.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBestNotificationLight(Landroid/util/ArrayMap;Ljava/util/ArrayList;)Lcom/android/server/notification/NotificationRecord;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/server/notification/NotificationRecord;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Lcom/android/server/notification/NotificationRecord;"
        }
    .end annotation

    .prologue
    .line 39
    .local p0, "notificationsByKey":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/server/notification/NotificationRecord;>;"
    .local p1, "lights":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 40
    .local v0, "bestNotifLight":Lcom/android/server/notification/NotificationRecord;
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 41
    .local v3, "n":I
    if-lez v3, :cond_0

    .line 42
    add-int/lit8 v6, v3, -0x1

    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {p0, v6}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "bestNotifLight":Lcom/android/server/notification/NotificationRecord;
    check-cast v0, Lcom/android/server/notification/NotificationRecord;

    .line 45
    .restart local v0    # "bestNotifLight":Lcom/android/server/notification/NotificationRecord;
    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 46
    .local v2, "light":Ljava/lang/String;
    invoke-virtual {p0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/notification/NotificationRecord;

    .line 47
    .local v4, "notifLight":Lcom/android/server/notification/NotificationRecord;
    iget-object v6, v4, Lcom/android/server/notification/NotificationRecord;->sbn:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v6}, Landroid/service/notification/StatusBarNotification;->getPackageName()Ljava/lang/String;

    move-result-object v5

    .line 48
    .local v5, "packageName":Ljava/lang/String;
    const-string v6, "com.android.phone"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 49
    move-object v0, v4

    .line 55
    .end local v2    # "light":Ljava/lang/String;
    .end local v4    # "notifLight":Lcom/android/server/notification/NotificationRecord;
    .end local v5    # "packageName":Ljava/lang/String;
    :cond_2
    return-object v0

    .line 51
    .restart local v2    # "light":Ljava/lang/String;
    .restart local v4    # "notifLight":Lcom/android/server/notification/NotificationRecord;
    .restart local v5    # "packageName":Ljava/lang/String;
    :cond_3
    const-string v6, "com.android.mms"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 52
    move-object v0, v4

    goto :goto_0
.end method

.method public static getLedPwmOffOn(I)[I
    .locals 3
    .param p0, "totalLength"    # I

    .prologue
    const/4 v2, 0x0

    .line 17
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 18
    .local v0, "values":[I
    div-int/lit8 v1, p0, 0x4

    mul-int/lit8 v1, v1, 0x3

    aput v1, v0, v2

    .line 19
    const/4 v1, 0x1

    aget v2, v0, v2

    sub-int v2, p0, v2

    aput v2, v0, v1

    .line 20
    return-object v0
.end method

.method public static updateNotificationLight(Landroid/content/Context;Landroid/app/Notification;I)V
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "notification"    # Landroid/app/Notification;
    .param p2, "defaultNotificationColor"    # I

    .prologue
    .line 24
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "breathing_light_color"

    invoke-static {v4, v5, p2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 27
    .local v0, "color":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x11060008

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    .line 29
    .local v1, "defaultFreq":I
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "breathing_light_freq"

    invoke-static {v4, v5, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 32
    .local v2, "freq":I
    invoke-static {v2}, Lcom/android/server/notification/NotificationLightController;->getLedPwmOffOn(I)[I

    move-result-object v3

    .line 33
    .local v3, "offOn":[I
    iput v0, p1, Landroid/app/Notification;->ledARGB:I

    .line 34
    const/4 v4, 0x1

    aget v4, v3, v4

    iput v4, p1, Landroid/app/Notification;->ledOnMS:I

    .line 35
    const/4 v4, 0x0

    aget v4, v3, v4

    iput v4, p1, Landroid/app/Notification;->ledOffMS:I

    .line 36
    return-void
.end method
