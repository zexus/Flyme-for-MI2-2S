.class Lmiui/notification/NotificationPanelActivity$NotificationClicker;
.super Ljava/lang/Object;
.source "NotificationPanelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/notification/NotificationPanelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NotificationClicker"
.end annotation


# instance fields
.field private mIntent:Landroid/app/PendingIntent;

.field final synthetic this$0:Lmiui/notification/NotificationPanelActivity;


# direct methods
.method public constructor <init>(Lmiui/notification/NotificationPanelActivity;Landroid/app/PendingIntent;)V
    .locals 0
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .prologue
    .line 194
    iput-object p1, p0, Lmiui/notification/NotificationPanelActivity$NotificationClicker;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 195
    iput-object p2, p0, Lmiui/notification/NotificationPanelActivity$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    .line 196
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 199
    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    if-eqz v1, :cond_0

    .line 201
    :try_start_0
    sget-object v1, Lmiui/notification/NotificationPanelActivity;->TAG:Ljava/lang/String;

    const-string v2, "NotificationClicker onClick "

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity$NotificationClicker;->mIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1}, Landroid/app/PendingIntent;->send()V

    .line 203
    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity$NotificationClicker;->this$0:Lmiui/notification/NotificationPanelActivity;

    # invokes: Lmiui/notification/NotificationPanelActivity;->removeNotificationView(Landroid/view/View;)V
    invoke-static {v1, p1}, Lmiui/notification/NotificationPanelActivity;->access$100(Lmiui/notification/NotificationPanelActivity;Landroid/view/View;)V
    :try_end_0
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_0 .. :try_end_0} :catch_0

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "e":Landroid/app/PendingIntent$CanceledException;
    sget-object v1, Lmiui/notification/NotificationPanelActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Sending contentIntent failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
