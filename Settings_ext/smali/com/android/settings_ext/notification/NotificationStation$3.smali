.class Lcom/android/settings_ext/notification/NotificationStation$3;
.super Ljava/lang/Object;
.source "NotificationStation.java"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic afy:Lcom/android/settings_ext/notification/NotificationStation;


# direct methods
.method constructor <init>(Lcom/android/settings_ext/notification/NotificationStation;)V
    .locals 0

    .prologue
    .line 105
    iput-object p1, p0, Lcom/android/settings_ext/notification/NotificationStation$3;->afy:Lcom/android/settings_ext/notification/NotificationStation;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;)I
    .locals 4

    .prologue
    .line 109
    iget-wide v0, p2, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    iget-wide v2, p1, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;->timestamp:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method public synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 105
    check-cast p1, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;

    check-cast p2, Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;

    invoke-virtual {p0, p1, p2}, Lcom/android/settings_ext/notification/NotificationStation$3;->a(Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;Lcom/android/settings_ext/notification/NotificationStation$HistoricalNotificationInfo;)I

    move-result v0

    return v0
.end method