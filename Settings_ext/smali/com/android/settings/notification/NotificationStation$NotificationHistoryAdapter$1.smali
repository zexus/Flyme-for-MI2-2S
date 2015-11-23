.class Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter$1;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic afC:Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;

.field final synthetic afD:Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;)V
    .locals 0

    .prologue
    .line 320
    iput-object p1, p0, Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter$1;->afD:Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;

    iput-object p2, p0, Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter$1;->afC:Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 323
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setPressed(Z)V

    .line 324
    iget-object v0, p0, Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter$1;->afD:Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;

    iget-object v0, v0, Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter;->afy:Lcom/android/settings_ext/notification/NotificationStation;

    iget-object v1, p0, Lcom/android/settings_ext/notification/NotificationStation$NotificationHistoryAdapter$1;->afC:Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;

    iget-object v1, v1, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->pkg:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/android/settings_ext/notification/NotificationStation;->a(Lcom/android/settings_ext/notification/NotificationStation;Ljava/lang/String;)V

    .line 325
    return-void
.end method
