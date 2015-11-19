.class Lmiui/notification/NotificationPanelActivity$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "NotificationPanelActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/notification/NotificationPanelActivity;->closeAnimation()V
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
    .line 280
    iput-object p1, p0, Lmiui/notification/NotificationPanelActivity$4;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 282
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$4;->this$0:Lmiui/notification/NotificationPanelActivity;

    # invokes: Lmiui/notification/NotificationPanelActivity;->startClearButtonAnimation(Z)V
    invoke-static {v0, v2}, Lmiui/notification/NotificationPanelActivity;->access$200(Lmiui/notification/NotificationPanelActivity;Z)V

    .line 283
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$4;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity;->mAppInfo:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTranslationY(F)V

    .line 284
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$4;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity;->mAppInfo:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$4;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v0}, Lmiui/notification/NotificationRowLayout;->removeAllViews()V

    .line 286
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$4;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity;->mPostCollapseCleanup:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$4;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v0, v0, Lmiui/notification/NotificationPanelActivity;->mPostCollapseCleanup:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 288
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$4;->this$0:Lmiui/notification/NotificationPanelActivity;

    iput-object v3, v0, Lmiui/notification/NotificationPanelActivity;->mPostCollapseCleanup:Ljava/lang/Runnable;

    .line 290
    :cond_0
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$4;->this$0:Lmiui/notification/NotificationPanelActivity;

    iput-boolean v2, v0, Lmiui/notification/NotificationPanelActivity;->mClosing:Z

    .line 291
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity$4;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-virtual {v0}, Lmiui/notification/NotificationPanelActivity;->finish()V

    .line 292
    return-void
.end method
