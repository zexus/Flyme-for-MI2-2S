.class public Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# instance fields
.field JK:Lcom/android/settings_ext/applications/RunningState$BaseItem;

.field JL:Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;

.field JM:J

.field JN:Z

.field mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method a(Landroid/content/Context;Ljava/lang/StringBuilder;)V
    .locals 8

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 107
    const/4 v3, 0x0

    .line 109
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->JK:Lcom/android/settings_ext/applications/RunningState$BaseItem;

    instance-of v0, v0, Lcom/android/settings_ext/applications/RunningState$ServiceItem;

    if-eqz v0, :cond_2

    .line 112
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->JL:Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;->JQ:Landroid/widget/TextView;

    move-object v3, v0

    .line 134
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 135
    iput-boolean v2, p0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->JN:Z

    .line 136
    iget-wide v4, p0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->JM:J

    const-wide/16 v6, 0x0

    cmp-long v0, v4, v6

    if-ltz v0, :cond_6

    .line 139
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v4, p0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->JM:J

    sub-long/2addr v0, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v0, v4

    invoke-static {p2, v0, v1}, Landroid/text/format/DateUtils;->formatElapsedTime(Ljava/lang/StringBuilder;J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 154
    :cond_1
    :goto_1
    return-void

    .line 115
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->JK:Lcom/android/settings_ext/applications/RunningState$BaseItem;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningState$BaseItem;->KZ:Ljava/lang/String;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->JK:Lcom/android/settings_ext/applications/RunningState$BaseItem;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningState$BaseItem;->KZ:Ljava/lang/String;

    .line 116
    :goto_2
    iget-object v4, p0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->JK:Lcom/android/settings_ext/applications/RunningState$BaseItem;

    iget-object v4, v4, Lcom/android/settings_ext/applications/RunningState$BaseItem;->La:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 117
    iget-object v4, p0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->JK:Lcom/android/settings_ext/applications/RunningState$BaseItem;

    iput-object v0, v4, Lcom/android/settings_ext/applications/RunningState$BaseItem;->La:Ljava/lang/String;

    .line 118
    iget-object v4, p0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->JL:Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;

    iget-object v4, v4, Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;->JQ:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->JK:Lcom/android/settings_ext/applications/RunningState$BaseItem;

    iget-boolean v0, v0, Lcom/android/settings_ext/applications/RunningState$BaseItem;->Lc:Z

    if-eqz v0, :cond_5

    .line 123
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->JN:Z

    if-nez v0, :cond_0

    .line 124
    iput-boolean v1, p0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->JN:Z

    .line 125
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->JL:Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;->JR:Landroid/widget/TextView;

    const-string v4, ""

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 115
    :cond_4
    const-string v0, ""

    goto :goto_2

    .line 127
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->JK:Lcom/android/settings_ext/applications/RunningState$BaseItem;

    instance-of v0, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    if-eqz v0, :cond_0

    .line 130
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->JL:Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;->JR:Landroid/widget/TextView;

    move-object v3, v0

    goto :goto_0

    .line 143
    :cond_6
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->JK:Lcom/android/settings_ext/applications/RunningState$BaseItem;

    instance-of v0, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    if-eqz v0, :cond_9

    .line 144
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->JK:Lcom/android/settings_ext/applications/RunningState$BaseItem;

    check-cast v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_7

    move v0, v1

    .line 146
    :goto_3
    if-eqz v0, :cond_8

    .line 147
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f090580

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_7
    move v0, v2

    .line 144
    goto :goto_3

    .line 150
    :cond_8
    const-string v0, ""

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_9
    move v0, v2

    goto :goto_3
.end method
