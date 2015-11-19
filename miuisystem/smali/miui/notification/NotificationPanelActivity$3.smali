.class Lmiui/notification/NotificationPanelActivity$3;
.super Ljava/lang/Object;
.source "NotificationPanelActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 241
    iput-object p1, p0, Lmiui/notification/NotificationPanelActivity$3;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x2

    .line 244
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 245
    .local v0, "set":Landroid/animation/AnimatorSet;
    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity$3;->this$0:Lmiui/notification/NotificationPanelActivity;

    invoke-virtual {v1}, Lmiui/notification/NotificationPanelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e0002

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 246
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity$3;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v2, v2, Lmiui/notification/NotificationPanelActivity;->mScrollView:Landroid/widget/ScrollView;

    const-string v3, "scaleY"

    new-array v4, v7, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity$3;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v2, v2, Lmiui/notification/NotificationPanelActivity;->mAppInfo:Landroid/widget/TextView;

    const-string v3, "translationY"

    new-array v4, v7, [F

    iget-object v5, p0, Lmiui/notification/NotificationPanelActivity$3;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget v5, v5, Lmiui/notification/NotificationPanelActivity;->mNotificationHeight:I

    iget-object v6, p0, Lmiui/notification/NotificationPanelActivity$3;->this$0:Lmiui/notification/NotificationPanelActivity;

    iget-object v6, v6, Lmiui/notification/NotificationPanelActivity;->mData:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    mul-int/2addr v5, v6

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    aput v5, v4, v8

    const/4 v5, 0x0

    aput v5, v4, v9

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v9

    const-string v2, "alpha"

    new-array v3, v7, [F

    fill-array-data v3, :array_1

    invoke-static {p0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 251
    new-instance v1, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 252
    new-instance v1, Lmiui/notification/NotificationPanelActivity$3$1;

    invoke-direct {v1, p0}, Lmiui/notification/NotificationPanelActivity$3$1;-><init>(Lmiui/notification/NotificationPanelActivity$3;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 257
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 258
    return-void

    .line 246
    :array_0
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x0
        0x3f800000    # 1.0f
    .end array-data
.end method
