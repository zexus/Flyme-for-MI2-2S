.class public Lcom/android/settings_ext/dashboard/b;
.super Landroid/app/Fragment;
.source "DashboardSummary.java"


# instance fields
.field private Rf:Landroid/view/ViewGroup;

.field private Rg:Lcom/android/settings_ext/dashboard/d;

.field private mHandler:Landroid/os/Handler;

.field private ta:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 47
    new-instance v0, Lcom/android/settings_ext/dashboard/c;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/dashboard/c;-><init>(Lcom/android/settings_ext/dashboard/b;)V

    iput-object v0, p0, Lcom/android/settings_ext/dashboard/b;->mHandler:Landroid/os/Handler;

    .line 65
    new-instance v0, Lcom/android/settings_ext/dashboard/d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/dashboard/d;-><init>(Lcom/android/settings_ext/dashboard/b;Lcom/android/settings_ext/dashboard/c;)V

    iput-object v0, p0, Lcom/android/settings_ext/dashboard/b;->Rg:Lcom/android/settings_ext/dashboard/d;

    return-void
.end method

.method private a(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings_ext/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 151
    iget v0, p3, Lcom/android/settings_ext/dashboard/DashboardTile;->iconRes:I

    if-lez v0, :cond_0

    .line 152
    iget v0, p3, Lcom/android/settings_ext/dashboard/DashboardTile;->iconRes:I

    invoke-virtual {p4, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 158
    :goto_0
    invoke-virtual {p3, p2}, Lcom/android/settings_ext/dashboard/DashboardTile;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 160
    invoke-virtual {p3, p2}, Lcom/android/settings_ext/dashboard/DashboardTile;->getSummary(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 161
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 162
    const/4 v1, 0x0

    invoke-virtual {p6, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 167
    :goto_1
    return-void

    .line 154
    :cond_0
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 155
    invoke-virtual {p4, v1}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 165
    :cond_1
    const/16 v0, 0x8

    invoke-virtual {p6, v0}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1
.end method

.method static synthetic a(Lcom/android/settings_ext/dashboard/b;Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1}, Lcom/android/settings_ext/dashboard/b;->ar(Landroid/content/Context;)V

    return-void
.end method

.method private ar(Landroid/content/Context;)V
    .locals 20

    .prologue
    .line 101
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/dashboard/b;->isAdded()Z

    move-result v2

    if-nez v2, :cond_0

    .line 102
    const-string v2, "DashboardSummary"

    const-string v3, "Cannot build the DashboardSummary UI yet as the Fragment is not added"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v14

    .line 107
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/dashboard/b;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 109
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/dashboard/b;->Rf:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->removeAllViews()V

    move-object/from16 v2, p1

    .line 111
    check-cast v2, Lcom/android/settings_ext/gh;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/settings_ext/gh;->K(Z)Ljava/util/List;

    move-result-object v13

    .line 114
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v16

    .line 116
    const/4 v2, 0x0

    move v12, v2

    :goto_1
    move/from16 v0, v16

    if-ge v12, v0, :cond_2

    .line 117
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object v9, v2

    check-cast v9, Lcom/android/settings_ext/dashboard/DashboardCategory;

    .line 119
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/dashboard/b;->ta:Landroid/view/LayoutInflater;

    const v3, 0x7f04003b

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/settings_ext/dashboard/b;->Rf:Landroid/view/ViewGroup;

    const/4 v6, 0x0

    invoke-virtual {v2, v3, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v17

    .line 122
    const v2, 0x7f100080

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 123
    invoke-virtual {v9, v4}, Lcom/android/settings_ext/dashboard/DashboardCategory;->getTitle(Landroid/content/res/Resources;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 125
    const v2, 0x7f100081

    move-object/from16 v0, v17

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    move-object v10, v2

    check-cast v10, Landroid/view/ViewGroup;

    .line 128
    invoke-virtual {v9}, Lcom/android/settings_ext/dashboard/DashboardCategory;->nI()I

    move-result v18

    .line 129
    const/4 v2, 0x0

    move v11, v2

    :goto_2
    move/from16 v0, v18

    if-ge v11, v0, :cond_1

    .line 130
    invoke-virtual {v9, v11}, Lcom/android/settings_ext/dashboard/DashboardCategory;->bg(I)Lcom/android/settings_ext/dashboard/DashboardTile;

    move-result-object v5

    .line 132
    new-instance v19, Lcom/android/settings_ext/dashboard/f;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/settings_ext/dashboard/f;-><init>(Landroid/content/Context;)V

    .line 133
    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_ext/dashboard/f;->getImageView()Landroid/widget/ImageView;

    move-result-object v6

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_ext/dashboard/f;->nK()Landroid/widget/TextView;

    move-result-object v7

    invoke-virtual/range {v19 .. v19}, Lcom/android/settings_ext/dashboard/f;->nL()Landroid/widget/TextView;

    move-result-object v8

    move-object/from16 v2, p0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v8}, Lcom/android/settings_ext/dashboard/b;->a(Landroid/content/Context;Landroid/content/res/Resources;Lcom/android/settings_ext/dashboard/DashboardTile;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/widget/TextView;)V

    .line 136
    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Lcom/android/settings_ext/dashboard/f;->c(Lcom/android/settings_ext/dashboard/DashboardTile;)V

    .line 138
    move-object/from16 v0, v19

    invoke-virtual {v10, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 129
    add-int/lit8 v2, v11, 0x1

    move v11, v2

    goto :goto_2

    .line 142
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/dashboard/b;->Rf:Landroid/view/ViewGroup;

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 116
    add-int/lit8 v2, v12, 0x1

    move v12, v2

    goto :goto_1

    .line 144
    :cond_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, v14

    .line 145
    const-string v4, "DashboardSummary"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "rebuildUI took: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " ms"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method private nJ()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 170
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/b;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 171
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/b;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 173
    :cond_0
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 92
    iput-object p1, p0, Lcom/android/settings_ext/dashboard/b;->ta:Landroid/view/LayoutInflater;

    .line 94
    const v0, 0x7f04003a

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 95
    const v0, 0x7f10007e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings_ext/dashboard/b;->Rf:Landroid/view/ViewGroup;

    .line 97
    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Landroid/app/Fragment;->onPause()V

    .line 85
    invoke-virtual {p0}, Lcom/android/settings_ext/dashboard/b;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/dashboard/b;->Rg:Lcom/android/settings_ext/dashboard/d;

    invoke-virtual {v0, v1}, Landroid/app/Activity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 86
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 69
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 71
    invoke-direct {p0}, Lcom/android/settings_ext/dashboard/b;->nJ()V

    .line 73
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 74
    const-string v1, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 75
    const-string v1, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 76
    const-string v1, "android.intent.action.PACKAGE_REPLACED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 77
    const-string v1, "package"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 78
    invoke-virtual {p0}, Lcom/android/settings_ext/dashboard/b;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/dashboard/b;->Rg:Lcom/android/settings_ext/dashboard/d;

    invoke-virtual {v1, v2, v0}, Landroid/app/Activity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 79
    return-void
.end method
