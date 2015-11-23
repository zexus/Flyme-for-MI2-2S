.class public Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;
.super Ljava/lang/Object;
.source "ApplicationsContainer.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final DP:Lcom/android/settings_ext/applications/ApplicationsState;

.field public final Ef:Lcom/android/settings_ext/applications/ApplicationsContainer;

.field public final Eg:I

.field public final Eh:I

.field public final Ei:Lcom/android/settings_ext/applications/ManageAppClickListener;

.field public final Ej:Ljava/lang/CharSequence;

.field public final Ek:Ljava/lang/CharSequence;

.field public El:Lcom/android/settings_ext/applications/ApplicationsContainer$ApplicationsAdapter;

.field private Em:Landroid/view/View;

.field private En:Z

.field final Eo:Ljava/lang/Runnable;

.field private fz:Landroid/widget/ListView;

.field public mInflater:Landroid/view/LayoutInflater;

.field public final mLabel:Ljava/lang/CharSequence;

.field public mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/applications/ApplicationsContainer;Lcom/android/settings_ext/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ext/applications/ManageAppClickListener;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 359
    new-instance v0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo$1;-><init>(Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Eo:Ljava/lang/Runnable;

    .line 368
    iput-object p1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Ef:Lcom/android/settings_ext/applications/ApplicationsContainer;

    .line 369
    iput-object p2, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->DP:Lcom/android/settings_ext/applications/ApplicationsState;

    .line 370
    iput-object p3, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->mLabel:Ljava/lang/CharSequence;

    .line 371
    iput p4, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Eg:I

    .line 372
    packed-switch p4, :pswitch_data_0

    .line 375
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Eh:I

    .line 377
    :goto_0
    iput-object p5, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Ei:Lcom/android/settings_ext/applications/ManageAppClickListener;

    .line 378
    const v0, 0x7f090560

    invoke-virtual {p1, v0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Ej:Ljava/lang/CharSequence;

    .line 379
    const v0, 0x7f09055f

    invoke-virtual {p1, v0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Ek:Ljava/lang/CharSequence;

    .line 380
    return-void

    .line 373
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Eh:I

    goto :goto_0

    .line 374
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Eh:I

    goto :goto_0

    .line 372
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method static synthetic b(Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;)Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->fz:Landroid/widget/ListView;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;)Landroid/view/View;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Em:Landroid/view/View;

    return-object v0
.end method


# virtual methods
.method public ab(Z)V
    .locals 0

    .prologue
    .line 459
    iput-boolean p1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->En:Z

    .line 460
    return-void
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 383
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 384
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    .line 411
    :goto_0
    return-object v0

    .line 387
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    .line 388
    const v0, 0x7f04007b

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    .line 389
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    const v1, 0x7f100122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Em:Landroid/view/View;

    .line 390
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Em:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 393
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 394
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 395
    if-eqz v1, :cond_1

    .line 396
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 398
    :cond_1
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 399
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 400
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 401
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 402
    iput-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->fz:Landroid/widget/ListView;

    .line 403
    new-instance v0, Lcom/android/settings_ext/applications/ApplicationsContainer$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->DP:Lcom/android/settings_ext/applications/ApplicationsState;

    iget v2, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Eh:I

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings_ext/applications/ApplicationsContainer$ApplicationsAdapter;-><init>(Lcom/android/settings_ext/applications/ApplicationsState;Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;I)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->El:Lcom/android/settings_ext/applications/ApplicationsContainer$ApplicationsAdapter;

    .line 404
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->fz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->El:Lcom/android/settings_ext/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 405
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->fz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->El:Lcom/android/settings_ext/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 407
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Ef:Lcom/android/settings_ext/applications/ApplicationsContainer;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->iJ()I

    move-result v0

    iget v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Eg:I

    if-ne v0, v1, :cond_2

    .line 408
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Ef:Lcom/android/settings_ext/applications/ApplicationsContainer;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->a(Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;)V

    .line 411
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    goto :goto_0
.end method

.method public iO()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 415
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->El:Lcom/android/settings_ext/applications/ApplicationsContainer$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 416
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->El:Lcom/android/settings_ext/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsContainer$ApplicationsAdapter;->destroy()V

    .line 417
    iput-boolean v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->En:Z

    .line 420
    :cond_0
    iput-boolean v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->En:Z

    .line 422
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 423
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 424
    if-eqz v0, :cond_1

    .line 425
    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 428
    :cond_1
    return-void
.end method

.method iP()Z
    .locals 1

    .prologue
    .line 463
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->En:Z

    return v0
.end method

.method iQ()V
    .locals 3

    .prologue
    .line 472
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Em:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Ef:Lcom/android/settings_ext/applications/ApplicationsContainer;

    invoke-virtual {v1}, Lcom/android/settings_ext/applications/ApplicationsContainer;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 474
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Em:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 475
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    .prologue
    .line 468
    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Ei:Lcom/android/settings_ext/applications/ManageAppClickListener;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/settings_ext/applications/ManageAppClickListener;->a(Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 469
    return-void
.end method

.method public pause()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 445
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->El:Lcom/android/settings_ext/applications/ApplicationsContainer$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 446
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->El:Lcom/android/settings_ext/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsContainer$ApplicationsAdapter;->pause()V

    .line 447
    iput-boolean v3, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->En:Z

    .line 450
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Ef:Lcom/android/settings_ext/applications/ApplicationsContainer;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/applications/RunningState;->ac(Landroid/content/Context;)Lcom/android/settings_ext/applications/RunningState;

    move-result-object v0

    .line 451
    iget v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Eg:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Eg:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    iget-boolean v1, v0, Lcom/android/settings_ext/applications/RunningState;->mResumed:Z

    if-nez v1, :cond_2

    .line 453
    invoke-virtual {v0}, Lcom/android/settings_ext/applications/RunningState;->pause()V

    .line 454
    iput-boolean v3, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->En:Z

    .line 456
    :cond_2
    return-void
.end method

.method public resume(I)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 431
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->El:Lcom/android/settings_ext/applications/ApplicationsContainer$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 432
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->El:Lcom/android/settings_ext/applications/ApplicationsContainer$ApplicationsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/applications/ApplicationsContainer$ApplicationsAdapter;->resume(I)V

    .line 433
    iput-boolean v3, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->En:Z

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Ef:Lcom/android/settings_ext/applications/ApplicationsContainer;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsContainer;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/applications/RunningState;->ac(Landroid/content/Context;)Lcom/android/settings_ext/applications/RunningState;

    move-result-object v0

    .line 437
    iget v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Eg:I

    const/4 v2, 0x3

    if-eq v1, v2, :cond_1

    iget v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Eg:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    :cond_1
    iget-boolean v1, v0, Lcom/android/settings_ext/applications/RunningState;->mResumed:Z

    if-nez v1, :cond_2

    .line 439
    iget-object v1, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->Ef:Lcom/android/settings_ext/applications/ApplicationsContainer;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/RunningState;->c(Lcom/android/settings_ext/applications/RunningState$OnRefreshUiListener;)V

    .line 440
    iput-boolean v3, p0, Lcom/android/settings_ext/applications/ApplicationsContainer$TabInfo;->En:Z

    .line 442
    :cond_2
    return-void
.end method
