.class public abstract Lmiui/notification/NotificationPanelActivity;
.super Landroid/app/Activity;
.source "NotificationPanelActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/notification/NotificationPanelActivity$NotificationClicker;,
        Lmiui/notification/NotificationPanelActivity$NotificationActionClicker;,
        Lmiui/notification/NotificationPanelActivity$LoadDataTask;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field mAppInfo:Landroid/widget/TextView;

.field mAppTitle:Ljava/lang/String;

.field mClearButton:Landroid/widget/ImageView;

.field private mClearButtonListener:Landroid/view/View$OnClickListener;

.field mClosing:Z

.field mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lmiui/notification/NotificationItem;",
            ">;"
        }
    .end annotation
.end field

.field protected mHandler:Landroid/os/Handler;

.field protected mInflater:Landroid/view/LayoutInflater;

.field mNoNotificationTips:Landroid/widget/TextView;

.field mNotificationHeight:I

.field mNotificationList:Lmiui/notification/NotificationRowLayout;

.field mOpenAnimation:Ljava/lang/Runnable;

.field mPostCollapseCleanup:Ljava/lang/Runnable;

.field mScrollView:Landroid/widget/ScrollView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 42
    const-class v0, Lmiui/notification/NotificationPanelActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lmiui/notification/NotificationPanelActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 235
    new-instance v0, Lmiui/notification/NotificationPanelActivity$2;

    invoke-direct {v0, p0}, Lmiui/notification/NotificationPanelActivity$2;-><init>(Lmiui/notification/NotificationPanelActivity;)V

    iput-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mClearButtonListener:Landroid/view/View$OnClickListener;

    .line 241
    new-instance v0, Lmiui/notification/NotificationPanelActivity$3;

    invoke-direct {v0, p0}, Lmiui/notification/NotificationPanelActivity$3;-><init>(Lmiui/notification/NotificationPanelActivity;)V

    iput-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mOpenAnimation:Ljava/lang/Runnable;

    .line 318
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mPostCollapseCleanup:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lmiui/notification/NotificationPanelActivity;Lmiui/notification/NotificationItem;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lmiui/notification/NotificationPanelActivity;
    .param p1, "x1"    # Lmiui/notification/NotificationItem;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lmiui/notification/NotificationPanelActivity;->inflateNotificationView(Lmiui/notification/NotificationItem;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lmiui/notification/NotificationPanelActivity;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Lmiui/notification/NotificationPanelActivity;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lmiui/notification/NotificationPanelActivity;->removeNotificationView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$200(Lmiui/notification/NotificationPanelActivity;Z)V
    .locals 0
    .param p0, "x0"    # Lmiui/notification/NotificationPanelActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lmiui/notification/NotificationPanelActivity;->startClearButtonAnimation(Z)V

    return-void
.end method

.method static synthetic access$300(Lmiui/notification/NotificationPanelActivity;)V
    .locals 0
    .param p0, "x0"    # Lmiui/notification/NotificationPanelActivity;

    .prologue
    .line 29
    invoke-direct {p0}, Lmiui/notification/NotificationPanelActivity;->closeAnimation()V

    return-void
.end method

.method private closeAnimation()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x0

    const/4 v6, 0x1

    .line 271
    iget-boolean v1, p0, Lmiui/notification/NotificationPanelActivity;->mClosing:Z

    if-nez v1, :cond_0

    .line 272
    iput-boolean v6, p0, Lmiui/notification/NotificationPanelActivity;->mClosing:Z

    .line 273
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 274
    .local v0, "set":Landroid/animation/AnimatorSet;
    invoke-virtual {p0}, Lmiui/notification/NotificationPanelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 275
    const/4 v1, 0x3

    new-array v1, v1, [Landroid/animation/Animator;

    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity;->mScrollView:Landroid/widget/ScrollView;

    const-string v3, "scaleY"

    new-array v4, v8, [F

    fill-array-data v4, :array_0

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v7

    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity;->mAppInfo:Landroid/widget/TextView;

    const-string v3, "translationY"

    new-array v4, v6, [F

    iget-object v5, p0, Lmiui/notification/NotificationPanelActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v5}, Landroid/widget/ScrollView;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    int-to-float v5, v5

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v6

    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity;->mClearButton:Landroid/widget/ImageView;

    const-string v3, "alpha"

    new-array v4, v6, [F

    const/4 v5, 0x0

    aput v5, v4, v7

    invoke-static {v2, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    aput-object v2, v1, v8

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 280
    new-instance v1, Lmiui/notification/NotificationPanelActivity$4;

    invoke-direct {v1, p0}, Lmiui/notification/NotificationPanelActivity$4;-><init>(Lmiui/notification/NotificationPanelActivity;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 294
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 296
    .end local v0    # "set":Landroid/animation/AnimatorSet;
    :cond_0
    return-void

    .line 275
    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
    .end array-data
.end method

.method private inflateNotificationView(Lmiui/notification/NotificationItem;)Landroid/view/View;
    .locals 4
    .param p1, "item"    # Lmiui/notification/NotificationItem;

    .prologue
    .line 104
    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/miui/system/internal/R$layout;->status_bar_notification:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 105
    .local v0, "row":Landroid/view/View;
    invoke-direct {p0, v0, p1}, Lmiui/notification/NotificationPanelActivity;->setRowValue(Landroid/view/View;Lmiui/notification/NotificationItem;)V

    .line 106
    return-object v0
.end method

.method private removeNotificationView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 229
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v0, p1}, Lmiui/notification/NotificationRowLayout;->removeView(Landroid/view/View;)V

    .line 230
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v0}, Lmiui/notification/NotificationRowLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_0

    .line 231
    invoke-direct {p0}, Lmiui/notification/NotificationPanelActivity;->closeAnimation()V

    .line 233
    :cond_0
    return-void
.end method

.method private setRowValue(Landroid/view/View;Lmiui/notification/NotificationItem;)V
    .locals 6
    .param p1, "row"    # Landroid/view/View;
    .param p2, "item"    # Lmiui/notification/NotificationItem;

    .prologue
    const/16 v5, 0x8

    .line 110
    const v4, 0x1020006

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 111
    .local v2, "icon":Landroid/widget/ImageView;
    sget v4, Lcom/miui/system/internal/R$id;->title:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 112
    .local v3, "title":Landroid/widget/TextView;
    sget v4, Lcom/miui/system/internal/R$id;->content:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 113
    .local v1, "content":Landroid/widget/TextView;
    sget v4, Lcom/miui/system/internal/R$id;->action:I

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 115
    .local v0, "action":Landroid/widget/TextView;
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_1

    .line 116
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 121
    :goto_0
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getTitle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getContent()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 124
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getAction()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_2

    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getActionIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-nez v4, :cond_2

    .line 125
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :cond_0
    :goto_1
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getClearIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-direct {p0, p1, v4}, Lmiui/notification/NotificationPanelActivity;->updateNotificationVetoButton(Landroid/view/View;Landroid/app/PendingIntent;)V

    .line 135
    invoke-virtual {p1, p2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 136
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getId()I

    move-result v4

    invoke-virtual {p1, v4}, Landroid/view/View;->setId(I)V

    .line 137
    new-instance v4, Lmiui/notification/NotificationPanelActivity$NotificationClicker;

    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getClickIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lmiui/notification/NotificationPanelActivity$NotificationClicker;-><init>(Lmiui/notification/NotificationPanelActivity;Landroid/app/PendingIntent;)V

    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 138
    return-void

    .line 119
    :cond_1
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 128
    :cond_2
    new-instance v4, Lmiui/notification/NotificationPanelActivity$NotificationActionClicker;

    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getClickActionIntent()Landroid/app/PendingIntent;

    move-result-object v5

    invoke-direct {v4, p0, v5}, Lmiui/notification/NotificationPanelActivity$NotificationActionClicker;-><init>(Lmiui/notification/NotificationPanelActivity;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 129
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 130
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getActionIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 131
    invoke-virtual {p2}, Lmiui/notification/NotificationItem;->getActionIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method private startClearButtonAnimation(Z)V
    .locals 5
    .param p1, "show"    # Z

    .prologue
    .line 262
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->isEnabled()Z

    move-result v0

    if-eq v0, p1, :cond_0

    .line 263
    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mClearButton:Landroid/widget/ImageView;

    const-string v2, "alpha"

    const/4 v0, 0x1

    new-array v3, v0, [F

    const/4 v4, 0x0

    if-eqz p1, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    aput v0, v3, v4

    invoke-static {v1, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {p0}, Lmiui/notification/NotificationPanelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x10e0000

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->start()V

    .line 266
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 268
    :cond_0
    return-void

    .line 263
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private updateNotificationVetoButton(Landroid/view/View;Landroid/app/PendingIntent;)V
    .locals 2
    .param p1, "row"    # Landroid/view/View;
    .param p2, "clearIntent"    # Landroid/app/PendingIntent;

    .prologue
    .line 212
    sget v1, Lcom/miui/system/internal/R$id;->veto:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 213
    .local v0, "vetoButton":Landroid/view/View;
    new-instance v1, Lmiui/notification/NotificationPanelActivity$1;

    invoke-direct {v1, p0, p2}, Lmiui/notification/NotificationPanelActivity$1;-><init>(Lmiui/notification/NotificationPanelActivity;Landroid/app/PendingIntent;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 226
    return-void
.end method


# virtual methods
.method protected addNotification(Lmiui/notification/NotificationItem;)V
    .locals 3
    .param p1, "item"    # Lmiui/notification/NotificationItem;

    .prologue
    const/4 v2, 0x0

    .line 141
    if-nez p1, :cond_0

    .line 148
    :goto_0
    return-void

    .line 142
    :cond_0
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v0}, Lmiui/notification/NotificationRowLayout;->getChildCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 143
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mNoNotificationTips:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v0, v2}, Lmiui/notification/NotificationRowLayout;->setVisibility(I)V

    .line 145
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lmiui/notification/NotificationPanelActivity;->startClearButtonAnimation(Z)V

    .line 147
    :cond_1
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-direct {p0, p1}, Lmiui/notification/NotificationPanelActivity;->inflateNotificationView(Lmiui/notification/NotificationItem;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Lmiui/notification/NotificationRowLayout;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public clearAllNotification(Landroid/widget/ScrollView;Lmiui/notification/NotificationRowLayout;)V
    .locals 9
    .param p1, "scrollView"    # Landroid/widget/ScrollView;
    .param p2, "list"    # Lmiui/notification/NotificationRowLayout;

    .prologue
    .line 322
    invoke-virtual {p2}, Lmiui/notification/NotificationRowLayout;->getChildCount()I

    move-result v3

    .line 324
    .local v3, "numChildren":I
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getScrollY()I

    move-result v5

    .line 325
    .local v5, "scrollTop":I
    invoke-virtual {p1}, Landroid/widget/ScrollView;->getHeight()I

    move-result v7

    add-int v4, v5, v7

    .line 326
    .local v4, "scrollBottom":I
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 327
    .local v6, "snapshot":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 328
    .local v1, "clearableViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_2

    .line 329
    invoke-virtual {p2, v2}, Lmiui/notification/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 330
    .local v0, "child":Landroid/view/View;
    invoke-virtual {p2, v0}, Lmiui/notification/NotificationRowLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v7

    if-le v7, v5, :cond_0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v7

    if-ge v7, v4, :cond_0

    .line 332
    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 334
    :cond_0
    invoke-virtual {p2, v0}, Lmiui/notification/NotificationRowLayout;->canChildBeDismissed(Landroid/view/View;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 335
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 328
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 338
    .end local v0    # "child":Landroid/view/View;
    :cond_2
    new-instance v7, Ljava/lang/Thread;

    new-instance v8, Lmiui/notification/NotificationPanelActivity$5;

    invoke-direct {v8, p0, p2, v1, v6}, Lmiui/notification/NotificationPanelActivity$5;-><init>(Lmiui/notification/NotificationPanelActivity;Lmiui/notification/NotificationRowLayout;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    invoke-direct {v7, v8}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v7}, Ljava/lang/Thread;->start()V

    .line 391
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 314
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    .line 315
    invoke-virtual {p0, v0, v0}, Lmiui/notification/NotificationPanelActivity;->overridePendingTransition(II)V

    .line 316
    return-void
.end method

.method protected abstract getAppTitle()Ljava/lang/String;
.end method

.method protected abstract getData()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lmiui/notification/NotificationItem;",
            ">;"
        }
    .end annotation
.end method

.method public onBackPressed()V
    .locals 0

    .prologue
    .line 309
    invoke-direct {p0}, Lmiui/notification/NotificationPanelActivity;->closeAnimation()V

    .line 310
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x0

    .line 46
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 47
    sget v0, Lcom/miui/system/internal/R$layout;->notification_panel:I

    invoke-virtual {p0, v0}, Lmiui/notification/NotificationPanelActivity;->setContentView(I)V

    .line 49
    invoke-virtual {p0}, Lmiui/notification/NotificationPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 50
    invoke-virtual {p0}, Lmiui/notification/NotificationPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 51
    invoke-virtual {p0}, Lmiui/notification/NotificationPanelActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    sget v1, Lmiui/system/R$color;->blur_background_mask:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 53
    invoke-virtual {p0, v2, v2}, Lmiui/notification/NotificationPanelActivity;->overridePendingTransition(II)V

    .line 55
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mInflater:Landroid/view/LayoutInflater;

    .line 56
    sget v0, Lcom/miui/system/internal/R$id;->app_info:I

    invoke-virtual {p0, v0}, Lmiui/notification/NotificationPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mAppInfo:Landroid/widget/TextView;

    .line 57
    sget v0, Lcom/miui/system/internal/R$id;->list:I

    invoke-virtual {p0, v0}, Lmiui/notification/NotificationPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lmiui/notification/NotificationRowLayout;

    iput-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    .line 58
    sget v0, Lcom/miui/system/internal/R$id;->no_notification_tips:I

    invoke-virtual {p0, v0}, Lmiui/notification/NotificationPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mNoNotificationTips:Landroid/widget/TextView;

    .line 59
    sget v0, Lcom/miui/system/internal/R$id;->scroll:I

    invoke-virtual {p0, v0}, Lmiui/notification/NotificationPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mScrollView:Landroid/widget/ScrollView;

    .line 60
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mScrollView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVerticalScrollBarEnabled(Z)V

    .line 61
    sget v0, Lcom/miui/system/internal/R$id;->clear_button:I

    invoke-virtual {p0, v0}, Lmiui/notification/NotificationPanelActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mClearButton:Landroid/widget/ImageView;

    .line 62
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mClearButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 63
    iget-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mClearButton:Landroid/widget/ImageView;

    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mClearButtonListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    invoke-virtual {p0}, Lmiui/notification/NotificationPanelActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/miui/system/internal/R$dimen;->notification_row_height:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationHeight:I

    .line 66
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lmiui/notification/NotificationPanelActivity;->mHandler:Landroid/os/Handler;

    .line 68
    new-instance v0, Lmiui/notification/NotificationPanelActivity$LoadDataTask;

    invoke-direct {v0, p0}, Lmiui/notification/NotificationPanelActivity$LoadDataTask;-><init>(Lmiui/notification/NotificationPanelActivity;)V

    new-array v1, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lmiui/notification/NotificationPanelActivity$LoadDataTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 69
    return-void
.end method

.method protected onPause()V
    .locals 0

    .prologue
    .line 73
    invoke-super {p0}, Landroid/app/Activity;->onPause()V

    .line 74
    invoke-direct {p0}, Lmiui/notification/NotificationPanelActivity;->closeAnimation()V

    .line 75
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_0

    .line 301
    invoke-direct {p0}, Lmiui/notification/NotificationPanelActivity;->closeAnimation()V

    .line 302
    const/4 v0, 0x1

    .line 304
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/app/Activity;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected removeNotification(I)V
    .locals 2
    .param p1, "id"    # I

    .prologue
    .line 161
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v1}, Lmiui/notification/NotificationRowLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 162
    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v1, v0}, Lmiui/notification/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v1, p1, :cond_0

    .line 163
    iget-object v1, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v1, v0}, Lmiui/notification/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-direct {p0, v1}, Lmiui/notification/NotificationPanelActivity;->removeNotificationView(Landroid/view/View;)V

    .line 161
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 166
    :cond_1
    return-void
.end method

.method protected updateNotification(ILmiui/notification/NotificationItem;)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "item"    # Lmiui/notification/NotificationItem;

    .prologue
    .line 151
    if-nez p2, :cond_1

    .line 158
    :cond_0
    return-void

    .line 152
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v2}, Lmiui/notification/NotificationRowLayout;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 153
    iget-object v2, p0, Lmiui/notification/NotificationPanelActivity;->mNotificationList:Lmiui/notification/NotificationRowLayout;

    invoke-virtual {v2, v0}, Lmiui/notification/NotificationRowLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 154
    .local v1, "row":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getId()I

    move-result v2

    if-ne v2, p1, :cond_2

    .line 155
    invoke-direct {p0, v1, p2}, Lmiui/notification/NotificationPanelActivity;->setRowValue(Landroid/view/View;Lmiui/notification/NotificationItem;)V

    .line 152
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method
