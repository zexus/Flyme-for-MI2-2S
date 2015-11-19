.class Lmiui/notification/NotificationPanelActivity$5;
.super Ljava/lang/Object;
.source "NotificationPanelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/notification/NotificationPanelActivity;->clearAllNotification(Landroid/widget/ScrollView;Lmiui/notification/NotificationRowLayout;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lmiui/notification/NotificationPanelActivity;

.field final synthetic val$clearableViews:Ljava/util/ArrayList;

.field final synthetic val$list:Lmiui/notification/NotificationRowLayout;

.field final synthetic val$snapshot:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lmiui/notification/NotificationPanelActivity;Lmiui/notification/NotificationRowLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lmiui/notification/NotificationPanelActivity$5;->this$0:Lmiui/notification/NotificationPanelActivity;

    iput-object p2, p0, Lmiui/notification/NotificationPanelActivity$5;->val$list:Lmiui/notification/NotificationRowLayout;

    iput-object p3, p0, Lmiui/notification/NotificationPanelActivity$5;->val$clearableViews:Ljava/util/ArrayList;

    iput-object p4, p0, Lmiui/notification/NotificationPanelActivity$5;->val$snapshot:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 12

    .prologue
    const/4 v10, 0x0

    .line 343
    const/16 v0, 0xa

    .line 344
    .local v0, "ROW_DELAY_DECREMENT":I
    const/16 v2, 0x8c

    .line 345
    .local v2, "currentDelay":I
    const/4 v5, 0x0

    .line 350
    .local v5, "totalDelay":I
    iget-object v8, p0, Lmiui/notification/NotificationPanelActivity$5;->val$list:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v8, v10}, Lmiui/notification/NotificationRowLayout;->setViewRemoval(Z)V

    .line 352
    iget-object v8, p0, Lmiui/notification/NotificationPanelActivity$5;->this$0:Lmiui/notification/NotificationPanelActivity;

    new-instance v9, Lmiui/notification/NotificationPanelActivity$5$1;

    invoke-direct {v9, p0}, Lmiui/notification/NotificationPanelActivity$5$1;-><init>(Lmiui/notification/NotificationPanelActivity$5;)V

    iput-object v9, v8, Lmiui/notification/NotificationPanelActivity;->mPostCollapseCleanup:Ljava/lang/Runnable;

    .line 365
    iget-object v8, p0, Lmiui/notification/NotificationPanelActivity$5;->val$snapshot:Ljava/util/ArrayList;

    invoke-virtual {v8, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    .line 366
    .local v4, "sampleView":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getWidth()I

    move-result v7

    .line 367
    .local v7, "width":I
    mul-int/lit8 v6, v7, 0x8

    .line 368
    .local v6, "velocity":I
    iget-object v8, p0, Lmiui/notification/NotificationPanelActivity$5;->val$snapshot:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 369
    .local v1, "_v":Landroid/view/View;
    iget-object v8, p0, Lmiui/notification/NotificationPanelActivity$5;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v8, v8, Lmiui/notification/NotificationPanelActivity;->mHandler:Landroid/os/Handler;

    new-instance v9, Lmiui/notification/NotificationPanelActivity$5$2;

    invoke-direct {v9, p0, v1, v6}, Lmiui/notification/NotificationPanelActivity$5$2;-><init>(Lmiui/notification/NotificationPanelActivity$5;Landroid/view/View;I)V

    int-to-long v10, v5

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 375
    const/16 v8, 0x32

    add-int/lit8 v9, v2, -0xa

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 376
    add-int/2addr v5, v2

    .line 377
    goto :goto_0

    .line 383
    .end local v1    # "_v":Landroid/view/View;
    :cond_0
    iget-object v8, p0, Lmiui/notification/NotificationPanelActivity$5;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v8, v8, Lmiui/notification/NotificationPanelActivity;->mHandler:Landroid/os/Handler;

    new-instance v9, Lmiui/notification/NotificationPanelActivity$5$3;

    invoke-direct {v9, p0}, Lmiui/notification/NotificationPanelActivity$5$3;-><init>(Lmiui/notification/NotificationPanelActivity$5;)V

    add-int/lit16 v10, v5, 0xe1

    int-to-long v10, v10

    invoke-virtual {v8, v9, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 389
    return-void
.end method
