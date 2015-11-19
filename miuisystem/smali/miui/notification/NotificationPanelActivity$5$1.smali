.class Lmiui/notification/NotificationPanelActivity$5$1;
.super Ljava/lang/Object;
.source "NotificationPanelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/notification/NotificationPanelActivity$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lmiui/notification/NotificationPanelActivity$5;


# direct methods
.method constructor <init>(Lmiui/notification/NotificationPanelActivity$5;)V
    .locals 0

    .prologue
    .line 352
    iput-object p1, p0, Lmiui/notification/NotificationPanelActivity$5$1;->this$1:Lmiui/notification/NotificationPanelActivity$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 356
    :try_start_0
    iget-object v3, p0, Lmiui/notification/NotificationPanelActivity$5$1;->this$1:Lmiui/notification/NotificationPanelActivity$5;

    iget-object v3, v3, Lmiui/notification/NotificationPanelActivity$5;->val$list:Lmiui/notification/NotificationRowLayout;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lmiui/notification/NotificationRowLayout;->setViewRemoval(Z)V

    .line 357
    iget-object v3, p0, Lmiui/notification/NotificationPanelActivity$5$1;->this$1:Lmiui/notification/NotificationPanelActivity$5;

    iget-object v3, v3, Lmiui/notification/NotificationPanelActivity$5;->val$clearableViews:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 358
    .local v0, "child":Landroid/view/View;
    sget v3, Lcom/miui/system/internal/R$id;->veto:I

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 359
    .local v2, "vetoButton":Landroid/view/View;
    invoke-virtual {v2}, Landroid/view/View;->performClick()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 361
    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v2    # "vetoButton":Landroid/view/View;
    :catch_0
    move-exception v3

    .line 362
    :cond_0
    return-void
.end method
