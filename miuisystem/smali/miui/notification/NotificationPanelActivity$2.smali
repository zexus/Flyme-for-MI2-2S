.class Lmiui/notification/NotificationPanelActivity$2;
.super Ljava/lang/Object;
.source "NotificationPanelActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/notification/NotificationPanelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/notification/NotificationPanelActivity;


# direct methods
.method constructor <init>(Lmiui/notification/NotificationPanelActivity;)V
    .locals 0

    .prologue
    .line 235
    iput-object p1, p0, Lmiui/notification/NotificationPanelActivity$2;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 237
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$2;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity$2;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v1, v1, Lmiui/notification/NotificationPanelActivity;->mScrollView:Landroid/widget/ScrollView;

    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity$2;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v2, v2, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v0, v1, v2}, Lmiui/notification/NotificationPanelActivity;->clearAllNotification(Landroid/widget/ScrollView;Lmiui/notification/NotificationRowLayout;)V

    .line 238
    return-void
.end method
