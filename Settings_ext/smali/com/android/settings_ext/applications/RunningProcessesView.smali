.class public Lcom/android/settings_ext/applications/RunningProcessesView;
.super Landroid/widget/FrameLayout;
.source "RunningProcessesView.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Lcom/android/settings_ext/applications/RunningState$OnRefreshUiListener;


# instance fields
.field DN:Lcom/android/settings_ext/applications/RunningState;

.field JA:Landroid/widget/TextView;

.field JB:Landroid/widget/TextView;

.field JC:Landroid/widget/TextView;

.field JD:Landroid/widget/TextView;

.field JE:Landroid/widget/TextView;

.field JF:J

.field JG:J

.field JH:J

.field JI:J

.field JJ:Z

.field final Je:Ljava/util/HashMap;

.field Jf:Landroid/app/ActivityManager;

.field Jh:Ljava/lang/Runnable;

.field Ji:J

.field Jj:Lcom/android/settings_ext/applications/RunningState$BaseItem;

.field Jk:Lcom/android/internal/util/MemInfoReader;

.field final Ju:I

.field Jv:Landroid/app/Fragment;

.field Jw:Landroid/view/View;

.field Jx:Lcom/android/settings_ext/applications/RunningProcessesView$ServiceListAdapter;

.field Jy:Lcom/android/settings_ext/applications/LinearColorBar;

.field Jz:Landroid/widget/TextView;

.field fz:Landroid/widget/ListView;

.field mBuilder:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 439
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Je:Ljava/util/HashMap;

    .line 73
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    .line 88
    iput-wide v2, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->JF:J

    .line 89
    iput-wide v2, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->JG:J

    .line 90
    iput-wide v2, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->JH:J

    .line 91
    iput-wide v2, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->JI:J

    .line 92
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->JJ:Z

    .line 96
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jk:Lcom/android/internal/util/MemInfoReader;

    .line 440
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Ju:I

    .line 441
    return-void
.end method

.method private a(Lcom/android/settings_ext/applications/RunningState$MergedItem;)V
    .locals 7

    .prologue
    const/4 v4, 0x0

    .line 418
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jv:Landroid/app/Fragment;

    if-eqz v0, :cond_1

    .line 420
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 421
    iget-object v0, p1, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    if-eqz v0, :cond_0

    .line 422
    const-string v0, "uid"

    iget-object v1, p1, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    iget v1, v1, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mUid:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 423
    const-string v0, "process"

    iget-object v1, p1, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    iget-object v1, v1, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    :cond_0
    const-string v0, "user_id"

    iget v1, p1, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mUserId:I

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 426
    const-string v0, "background"

    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jx:Lcom/android/settings_ext/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v1, v1, Lcom/android/settings_ext/applications/RunningProcessesView$ServiceListAdapter;->Hg:Z

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 428
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jv:Landroid/app/Fragment;

    invoke-virtual {v0}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/gh;

    .line 429
    const-class v1, Lcom/android/settings_ext/applications/RunningServiceDetails;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const v3, 0x7f090597

    const/4 v6, 0x0

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/settings_ext/gh;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 432
    :cond_1
    return-void
.end method


# virtual methods
.method public a(Landroid/app/Fragment;Ljava/lang/Runnable;)Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 486
    iput-object p1, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jv:Landroid/app/Fragment;

    .line 487
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->DN:Lcom/android/settings_ext/applications/RunningState;

    invoke-virtual {v1, p0}, Lcom/android/settings_ext/applications/RunningState;->c(Lcom/android/settings_ext/applications/RunningState$OnRefreshUiListener;)V

    .line 488
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->DN:Lcom/android/settings_ext/applications/RunningState;

    invoke-virtual {v1}, Lcom/android/settings_ext/applications/RunningState;->hasData()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/RunningProcessesView;->ah(Z)V

    .line 495
    :goto_0
    return v0

    .line 494
    :cond_0
    iput-object p2, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jh:Ljava/lang/Runnable;

    .line 495
    const/4 v0, 0x0

    goto :goto_0
.end method

.method ah(Z)V
    .locals 18

    .prologue
    .line 330
    if-eqz p1, :cond_0

    .line 331
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jx:Lcom/android/settings_ext/applications/RunningProcessesView$ServiceListAdapter;

    .line 332
    invoke-virtual {v2}, Lcom/android/settings_ext/applications/RunningProcessesView$ServiceListAdapter;->jG()V

    .line 333
    invoke-virtual {v2}, Lcom/android/settings_ext/applications/RunningProcessesView$ServiceListAdapter;->notifyDataSetChanged()V

    .line 336
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jh:Ljava/lang/Runnable;

    if-eqz v2, :cond_1

    .line 337
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jh:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 338
    const/4 v2, 0x0

    move-object/from16 v0, p0

    iput-object v2, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jh:Ljava/lang/Runnable;

    .line 341
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jk:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 353
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->DN:Lcom/android/settings_ext/applications/RunningState;

    iget-object v6, v2, Lcom/android/settings_ext/applications/RunningState;->mLock:Ljava/lang/Object;

    monitor-enter v6

    .line 354
    :try_start_0
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->JJ:Z

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jx:Lcom/android/settings_ext/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v3, v3, Lcom/android/settings_ext/applications/RunningProcessesView$ServiceListAdapter;->Hg:Z

    if-eq v2, v3, :cond_2

    .line 355
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jx:Lcom/android/settings_ext/applications/RunningProcessesView$ServiceListAdapter;

    iget-boolean v2, v2, Lcom/android/settings_ext/applications/RunningProcessesView$ServiceListAdapter;->Hg:Z

    move-object/from16 v0, p0

    iput-boolean v2, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->JJ:Z

    .line 356
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->JJ:Z

    if-eqz v2, :cond_5

    .line 357
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->JB:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090594

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->JA:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090595

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 369
    :cond_2
    :goto_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jk:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v8

    .line 372
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->JJ:Z

    if-eqz v2, :cond_6

    .line 373
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jk:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jk:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 374
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->DN:Lcom/android/settings_ext/applications/RunningState;

    iget-wide v4, v4, Lcom/android/settings_ext/applications/RunningState;->KH:J

    .line 381
    :goto_1
    sub-long v10, v8, v4

    sub-long/2addr v10, v2

    .line 383
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->JF:J

    cmp-long v7, v12, v8

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->JG:J

    cmp-long v7, v12, v10

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->JH:J

    cmp-long v7, v12, v4

    if-nez v7, :cond_3

    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->JI:J

    cmp-long v7, v12, v2

    if-eqz v7, :cond_4

    .line 385
    :cond_3
    move-object/from16 v0, p0

    iput-wide v8, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->JF:J

    .line 386
    move-object/from16 v0, p0

    iput-wide v10, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->JG:J

    .line 387
    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->JH:J

    .line 388
    move-object/from16 v0, p0

    iput-wide v2, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->JI:J

    .line 389
    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v7

    .line 390
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v2, v3}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 392
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->JC:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090596

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v12, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 394
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 396
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->JD:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v14

    const v15, 0x7f090596

    const/16 v16, 0x1

    move/from16 v0, v16

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput-object v12, v16, v17

    invoke-virtual/range {v14 .. v16}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v13, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 398
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v10, v11}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 400
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->JE:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    const v14, 0x7f090596

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v7, v15, v16

    invoke-virtual {v13, v14, v15}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v12, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jy:Lcom/android/settings_ext/applications/LinearColorBar;

    long-to-float v10, v10

    long-to-float v11, v8

    div-float/2addr v10, v11

    long-to-float v4, v4

    long-to-float v5, v8

    div-float/2addr v4, v5

    long-to-float v2, v2

    long-to-float v3, v8

    div-float/2addr v2, v3

    invoke-virtual {v7, v10, v4, v2}, Lcom/android/settings_ext/applications/LinearColorBar;->a(FFF)V

    .line 406
    :cond_4
    monitor-exit v6

    .line 407
    return-void

    .line 362
    :cond_5
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->JB:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090591

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 364
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->JA:Landroid/widget/TextView;

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings_ext/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f090592

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 406
    :catchall_0
    move-exception v2

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 376
    :cond_6
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jk:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v2}, Lcom/android/internal/util/MemInfoReader;->getFreeSize()J

    move-result-wide v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jk:Lcom/android/internal/util/MemInfoReader;

    invoke-virtual {v4}, Lcom/android/internal/util/MemInfoReader;->getCachedSize()J

    move-result-wide v4

    add-long/2addr v2, v4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->DN:Lcom/android/settings_ext/applications/RunningState;

    iget-wide v4, v4, Lcom/android/settings_ext/applications/RunningState;->KH:J

    add-long/2addr v2, v4

    .line 378
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/settings_ext/applications/RunningProcessesView;->DN:Lcom/android/settings_ext/applications/RunningState;

    iget-wide v4, v4, Lcom/android/settings_ext/applications/RunningState;->KL:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_1
.end method

.method public ax(I)V
    .locals 1

    .prologue
    .line 513
    packed-switch p1, :pswitch_data_0

    .line 526
    :goto_0
    return-void

    .line 515
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningProcessesView;->jF()V

    goto :goto_0

    .line 518
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/RunningProcessesView;->ah(Z)V

    .line 519
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningProcessesView;->jF()V

    goto :goto_0

    .line 522
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/RunningProcessesView;->ah(Z)V

    .line 523
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningProcessesView;->jF()V

    goto :goto_0

    .line 513
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public h(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 444
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jf:Landroid/app/ActivityManager;

    .line 445
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/applications/RunningState;->ac(Landroid/content/Context;)Lcom/android/settings_ext/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->DN:Lcom/android/settings_ext/applications/RunningState;

    .line 446
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 448
    const v1, 0x7f0400e7

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 449
    const v1, 0x102000a

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ListView;

    iput-object v1, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->fz:Landroid/widget/ListView;

    .line 452
    const v1, 0x1020004

    invoke-virtual {p0, v1}, Lcom/android/settings_ext/applications/RunningProcessesView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 453
    if-eqz v1, :cond_0

    .line 454
    iget-object v2, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->fz:Landroid/widget/ListView;

    invoke-virtual {v2, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 456
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->fz:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 457
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->fz:Landroid/widget/ListView;

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 458
    new-instance v1, Lcom/android/settings_ext/applications/RunningProcessesView$ServiceListAdapter;

    iget-object v2, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->DN:Lcom/android/settings_ext/applications/RunningState;

    invoke-direct {v1, p0, v2}, Lcom/android/settings_ext/applications/RunningProcessesView$ServiceListAdapter;-><init>(Lcom/android/settings_ext/applications/RunningProcessesView;Lcom/android/settings_ext/applications/RunningState;)V

    iput-object v1, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jx:Lcom/android/settings_ext/applications/RunningProcessesView$ServiceListAdapter;

    .line 459
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->fz:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jx:Lcom/android/settings_ext/applications/RunningProcessesView$ServiceListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 460
    const v1, 0x7f0400e5

    invoke-virtual {v0, v1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jw:Landroid/view/View;

    .line 461
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->fz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jw:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v3, v2}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 462
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jw:Landroid/view/View;

    const v1, 0x7f10025d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/LinearColorBar;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jy:Lcom/android/settings_ext/applications/LinearColorBar;

    .line 463
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningProcessesView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 464
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jy:Lcom/android/settings_ext/applications/LinearColorBar;

    const v2, 0x7f08002d

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    const v3, 0x7f08002e

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    const v4, 0x7f08002f

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/android/settings_ext/applications/LinearColorBar;->a(III)V

    .line 467
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jw:Landroid/view/View;

    const v1, 0x7f100262

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jz:Landroid/widget/TextView;

    .line 468
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jw:Landroid/view/View;

    const v1, 0x7f100260

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->JA:Landroid/widget/TextView;

    .line 469
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jw:Landroid/view/View;

    const v1, 0x7f10025e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->JB:Landroid/widget/TextView;

    .line 470
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jw:Landroid/view/View;

    const v1, 0x7f100263

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->JC:Landroid/widget/TextView;

    .line 471
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jw:Landroid/view/View;

    const v1, 0x7f100261

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->JD:Landroid/widget/TextView;

    .line 472
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jw:Landroid/view/View;

    const v1, 0x7f10025f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->JE:Landroid/widget/TextView;

    .line 474
    new-instance v0, Landroid/app/ActivityManager$MemoryInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$MemoryInfo;-><init>()V

    .line 475
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jf:Landroid/app/ActivityManager;

    invoke-virtual {v1, v0}, Landroid/app/ActivityManager;->getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V

    .line 476
    iget-wide v0, v0, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    iput-wide v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Ji:J

    .line 477
    return-void
.end method

.method jF()V
    .locals 4

    .prologue
    .line 499
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Je:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 500
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 501
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;

    .line 502
    iget-object v2, v0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->mRootView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v2

    if-nez v2, :cond_0

    .line 504
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 507
    :cond_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningProcessesView;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    goto :goto_0

    .line 509
    :cond_1
    return-void
.end method

.method public jH()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 480
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->DN:Lcom/android/settings_ext/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/RunningState;->pause()V

    .line 481
    iput-object v1, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jh:Ljava/lang/Runnable;

    .line 482
    iput-object v1, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jv:Landroid/app/Fragment;

    .line 483
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 1

    .prologue
    .line 410
    check-cast p1, Landroid/widget/ListView;

    .line 411
    invoke-virtual {p1}, Landroid/widget/ListView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    .line 412
    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Jj:Lcom/android/settings_ext/applications/RunningState$BaseItem;

    .line 413
    invoke-direct {p0, v0}, Lcom/android/settings_ext/applications/RunningProcessesView;->a(Lcom/android/settings_ext/applications/RunningState$MergedItem;)V

    .line 414
    return-void
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningProcessesView;->Je:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 436
    return-void
.end method
