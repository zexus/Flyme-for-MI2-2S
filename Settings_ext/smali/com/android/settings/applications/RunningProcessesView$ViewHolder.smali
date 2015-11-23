.class public Lcom/android/settings/applications/RunningProcessesView$ViewHolder;
.super Ljava/lang/Object;
.source "RunningProcessesView.java"


# instance fields
.field public Dy:Landroid/view/View;

.field public JQ:Landroid/widget/TextView;

.field public JR:Landroid/widget/TextView;

.field public icon:Landroid/widget/ImageView;

.field public jC:Landroid/widget/TextView;

.field public jE:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 165
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput-object p1, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->Dy:Landroid/view/View;

    .line 167
    const v0, 0x7f100051

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 168
    const v0, 0x7f100046

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->jC:Landroid/widget/TextView;

    .line 169
    const v0, 0x7f1000b6

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->jE:Landroid/widget/TextView;

    .line 170
    const v0, 0x7f100265

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->JQ:Landroid/widget/TextView;

    .line 171
    const v0, 0x7f100042

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->JR:Landroid/widget/TextView;

    .line 172
    invoke-virtual {p1, p0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 173
    return-void
.end method


# virtual methods
.method public a(Lcom/android/settings/applications/RunningState;Lcom/android/settings/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings/applications/RunningProcessesView$ActiveItem;
    .locals 10

    .prologue
    .line 177
    iget-object v3, p1, Lcom/android/settings/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 178
    :try_start_0
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->Dy:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 179
    iget-object v2, p2, Lcom/android/settings/applications/RunningState$BaseItem;->KU:Landroid/content/pm/PackageItemInfo;

    if-nez v2, :cond_0

    instance-of v2, p2, Lcom/android/settings/applications/RunningState$MergedItem;

    if-eqz v2, :cond_0

    .line 182
    move-object v0, p2

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object v2, v0

    .line 183
    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->Ld:Lcom/android/settings/applications/RunningState$ProcessItem;

    if-eqz v2, :cond_0

    .line 184
    move-object v0, p2

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->Ld:Lcom/android/settings/applications/RunningState$ProcessItem;

    invoke-virtual {v2, v4}, Lcom/android/settings/applications/RunningState$ProcessItem;->c(Landroid/content/pm/PackageManager;)V

    .line 185
    move-object v0, p2

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->Ld:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->KU:Landroid/content/pm/PackageItemInfo;

    iput-object v2, p2, Lcom/android/settings/applications/RunningState$BaseItem;->KU:Landroid/content/pm/PackageItemInfo;

    .line 186
    move-object v0, p2

    check-cast v0, Lcom/android/settings/applications/RunningState$MergedItem;

    move-object v2, v0

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$MergedItem;->Ld:Lcom/android/settings/applications/RunningState$ProcessItem;

    iget-object v2, v2, Lcom/android/settings/applications/RunningState$ProcessItem;->KV:Ljava/lang/CharSequence;

    iput-object v2, p2, Lcom/android/settings/applications/RunningState$BaseItem;->KV:Ljava/lang/CharSequence;

    .line 189
    :cond_0
    iget-object v2, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->jC:Landroid/widget/TextView;

    iget-object v5, p2, Lcom/android/settings/applications/RunningState$BaseItem;->KV:Ljava/lang/CharSequence;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 190
    new-instance v2, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;

    invoke-direct {v2}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;-><init>()V

    .line 191
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->Dy:Landroid/view/View;

    iput-object v5, v2, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    .line 192
    iput-object p2, v2, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->JK:Lcom/android/settings/applications/RunningState$BaseItem;

    .line 193
    iput-object p0, v2, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->JL:Lcom/android/settings/applications/RunningProcessesView$ViewHolder;

    .line 194
    iget-wide v6, p2, Lcom/android/settings/applications/RunningState$BaseItem;->KX:J

    iput-wide v6, v2, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->JM:J

    .line 195
    iget-boolean v5, p2, Lcom/android/settings/applications/RunningState$BaseItem;->Lc:Z

    if-eqz v5, :cond_2

    .line 196
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->jE:Landroid/widget/TextView;

    iget-object v6, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->Dy:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    const v7, 0x7f090581

    invoke-virtual {v6, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 200
    :goto_0
    const/4 v5, 0x0

    iput-object v5, p2, Lcom/android/settings/applications/RunningState$BaseItem;->La:Ljava/lang/String;

    .line 204
    iget-object v5, p2, Lcom/android/settings/applications/RunningState$BaseItem;->KU:Landroid/content/pm/PackageItemInfo;

    if-eqz v5, :cond_1

    .line 205
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->Dy:Landroid/view/View;

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    iget-object v7, p2, Lcom/android/settings/applications/RunningState$BaseItem;->KU:Landroid/content/pm/PackageItemInfo;

    const-wide/32 v8, 0x927c0

    invoke-static {v6, v7, v4, v8, v9}, Lmiui/maml/util/AppIconsHelper;->getIconDrawable(Landroid/content/Context;Landroid/content/pm/PackageItemInfo;Landroid/content/pm/PackageManager;J)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v5, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 209
    :cond_1
    iget-object v4, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->Dy:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v2, v4, p3}, Lcom/android/settings/applications/RunningProcessesView$ActiveItem;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 210
    monitor-exit v3

    return-object v2

    .line 198
    :cond_2
    iget-object v5, p0, Lcom/android/settings/applications/RunningProcessesView$ViewHolder;->jE:Landroid/widget/TextView;

    iget-object v6, p2, Lcom/android/settings/applications/RunningState$BaseItem;->mDescription:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 211
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
