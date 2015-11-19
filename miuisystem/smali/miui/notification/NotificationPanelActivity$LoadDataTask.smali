.class Lmiui/notification/NotificationPanelActivity$LoadDataTask;
.super Landroid/os/AsyncTask;
.source "NotificationPanelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/notification/NotificationPanelActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadDataTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/notification/NotificationPanelActivity;


# direct methods
.method constructor <init>(Lmiui/notification/NotificationPanelActivity;)V
    .locals 0

    .prologue
    .line 77
    iput-object p1, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 77
    check-cast p1, [Ljava/lang/Void;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 2
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 81
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-virtual {v1}, Lmiui/notification/NotificationPanelActivity;->getData()Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lmiui/notification/NotificationPanelActivity;->mData:Ljava/util/List;

    .line 82
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-virtual {v1}, Lmiui/notification/NotificationPanelActivity;->getAppTitle()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lmiui/notification/NotificationPanelActivity;->mAppTitle:Ljava/lang/String;

    .line 83
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 77
    check-cast p1, Ljava/lang/Void;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 4
    .param p1, "params"    # Ljava/lang/Void;

    .prologue
    .line 88
    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v2, v2, Lmiui/notification/NotificationPanelActivity;->mAppInfo:Landroid/widget/TextView;

    iget-object v3, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v3, v3, Lmiui/notification/NotificationPanelActivity;->mAppTitle:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 89
    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v2, v2, Lmiui/notification/NotificationPanelActivity;->mData:Ljava/util/List;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v2, v2, Lmiui/notification/NotificationPanelActivity;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 90
    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v2, v2, Lmiui/notification/NotificationPanelActivity;->mData:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/notification/NotificationItem;

    .line 91
    .local v1, "item":Lmiui/notification/NotificationItem;
    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v2, v2, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    iget-object v3, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    # invokes: Lmiui/notification/NotificationPanelActivity;->inflateNotificationView(Lmiui/notification/NotificationItem;)Landroid/view/View;
    invoke-static {v3, v1}, Lmiui/notification/NotificationPanelActivity;->access$000(Lmiui/notification/NotificationPanelActivity;Lmiui/notification/NotificationItem;)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/notification/NotificationRowLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 95
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "item":Lmiui/notification/NotificationItem;
    :cond_0
    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v2, v2, Lmiui/notification/NotificationPanelActivity;->mNoNotificationTips:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 96
    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v2, v2, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lmiui/notification/NotificationRowLayout;->setVisibility(I)V

    .line 98
    :cond_1
    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v2, v2, Lmiui/notification/NotificationPanelActivity;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v3, v3, Lmiui/notification/NotificationPanelActivity;->mOpenAnimation:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 99
    return-void
.end method
