.class Lcom/android/settings/notification/NotificationStation$2;
.super Landroid/service/notification/NotificationListenerService;
.source "NotificationStation.java"


# instance fields
.field final synthetic afy:Lcom/android/settings/notification/NotificationStation;


# direct methods
.method constructor <init>(Lcom/android/settings/notification/NotificationStation;)V
    .locals 0

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/settings/notification/NotificationStation$2;->afy:Lcom/android/settings/notification/NotificationStation;

    invoke-direct {p0}, Landroid/service/notification/NotificationListenerService;-><init>()V

    return-void
.end method


# virtual methods
.method public onNotificationPosted(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    .prologue
    .line 87
    const-string v0, "onNotificationPosted: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/android/settings/notification/NotificationStation;->c(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 88
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation$2;->afy:Lcom/android/settings/notification/NotificationStation;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationStation;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 89
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$2;->afy:Lcom/android/settings/notification/NotificationStation;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationStation;->b(Lcom/android/settings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 90
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$2;->afy:Lcom/android/settings/notification/NotificationStation;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationStation;->b(Lcom/android/settings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 91
    return-void
.end method

.method public onNotificationRemoved(Landroid/service/notification/StatusBarNotification;)V
    .locals 4

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/settings/notification/NotificationStation$2;->afy:Lcom/android/settings/notification/NotificationStation;

    invoke-virtual {v0}, Lcom/android/settings/notification/NotificationStation;->getListView()Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ListView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    .line 96
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$2;->afy:Lcom/android/settings/notification/NotificationStation;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationStation;->b(Lcom/android/settings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 97
    iget-object v1, p0, Lcom/android/settings/notification/NotificationStation$2;->afy:Lcom/android/settings/notification/NotificationStation;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationStation;->b(Lcom/android/settings/notification/NotificationStation;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 98
    return-void
.end method
