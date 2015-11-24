.class public Lcom/android/settings_ext/applications/RunningServiceDetails;
.super Lcom/android/settings_ext/BaseFragment;
.source "RunningServiceDetails.java"

# interfaces
.implements Lcom/android/settings_ext/applications/RunningState$OnRefreshUiListener;


# instance fields
.field DN:Lcom/android/settings_ext/applications/RunningState;

.field Hg:Z

.field JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

.field JT:Landroid/view/ViewGroup;

.field JU:Landroid/view/ViewGroup;

.field JV:Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;

.field JW:Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;

.field JX:I

.field JY:I

.field JZ:Landroid/widget/TextView;

.field Jf:Landroid/app/ActivityManager;

.field Ka:Landroid/widget/TextView;

.field final Kb:Ljava/util/ArrayList;

.field mBuilder:Ljava/lang/StringBuilder;

.field mHaveData:Z

.field mInflater:Landroid/view/LayoutInflater;

.field mProcessName:Ljava/lang/String;

.field mRootView:Landroid/view/View;

.field mUid:I

.field mUserId:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings_ext/BaseFragment;-><init>()V

    .line 82
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->Kb:Ljava/util/ArrayList;

    .line 196
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    .line 575
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/applications/RunningServiceDetails;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->gW()V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/applications/RunningServiceDetails;Landroid/content/ComponentName;)V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0, p1}, Lcom/android/settings_ext/applications/RunningServiceDetails;->c(Landroid/content/ComponentName;)V

    return-void
.end method

.method private c(Landroid/content/ComponentName;)V
    .locals 3

    .prologue
    .line 569
    const/4 v0, 0x1

    invoke-static {v0, p1}, Lcom/android/settings_ext/applications/RunningServiceDetails$MyAlertDialogFragment;->a(ILandroid/content/ComponentName;)Lcom/android/settings_ext/applications/RunningServiceDetails$MyAlertDialogFragment;

    move-result-object v0

    .line 571
    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Landroid/app/DialogFragment;->setTargetFragment(Landroid/app/Fragment;I)V

    .line 572
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    const-string v2, "confirmstop"

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 573
    return-void
.end method

.method private gW()V
    .locals 0

    .prologue
    .line 489
    invoke-super {p0}, Lcom/android/settings_ext/BaseFragment;->finish()V

    .line 490
    return-void
.end method


# virtual methods
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 529
    const v0, 0x7f0400e8

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 530
    invoke-static {p2, v1, v1, v2}, Lcom/android/settings_ext/hl;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 532
    iput-object v1, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mRootView:Landroid/view/View;

    .line 533
    const v0, 0x7f100017

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JT:Landroid/view/ViewGroup;

    .line 534
    const v0, 0x7f100266

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JU:Landroid/view/ViewGroup;

    .line 535
    new-instance v0, Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JU:Landroid/view/ViewGroup;

    invoke-direct {v0, v2}, Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JW:Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;

    .line 539
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->jN()V

    .line 541
    return-object v1
.end method

.method a(Lcom/android/settings_ext/applications/RunningState$MergedItem;ZZ)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 396
    if-eqz p1, :cond_1

    .line 397
    if-eqz p2, :cond_0

    move v1, v2

    .line 398
    :goto_0
    iget-object v0, p1, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_0

    .line 399
    iget-object v0, p1, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lg:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningState$ServiceItem;

    invoke-virtual {p0, v0, p1, v3, v3}, Lcom/android/settings_ext/applications/RunningServiceDetails;->a(Lcom/android/settings_ext/applications/RunningState$ServiceItem;Lcom/android/settings_ext/applications/RunningState$MergedItem;ZZ)V

    .line 398
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 403
    :cond_0
    if-eqz p3, :cond_1

    .line 404
    iget-object v0, p1, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lg:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gtz v0, :cond_3

    .line 408
    const/4 v1, 0x0

    iget v0, p1, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v4

    if-eq v0, v4, :cond_2

    move v0, v3

    :goto_1
    invoke-virtual {p0, v1, p1, v2, v0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->a(Lcom/android/settings_ext/applications/RunningState$ServiceItem;Lcom/android/settings_ext/applications/RunningState$MergedItem;ZZ)V

    .line 424
    :cond_1
    return-void

    :cond_2
    move v0, v2

    .line 408
    goto :goto_1

    .line 412
    :cond_3
    const/4 v0, -0x1

    move v1, v0

    :goto_2
    iget-object v0, p1, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lf:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 413
    if-gez v1, :cond_4

    iget-object v0, p1, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    move-object v4, v0

    .line 415
    :goto_3
    if-eqz v4, :cond_5

    iget v0, v4, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mPid:I

    if-gtz v0, :cond_5

    .line 412
    :goto_4
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    .line 413
    :cond_4
    iget-object v0, p1, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lf:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    move-object v4, v0

    goto :goto_3

    .line 419
    :cond_5
    if-gez v1, :cond_6

    move v0, v3

    :goto_5
    invoke-virtual {p0, v4, v0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->a(Lcom/android/settings_ext/applications/RunningState$ProcessItem;Z)V

    goto :goto_4

    :cond_6
    move v0, v2

    goto :goto_5
.end method

.method a(Lcom/android/settings_ext/applications/RunningState$ProcessItem;Z)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 336
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->jL()V

    .line 338
    new-instance v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v4, p0}, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings_ext/applications/RunningServiceDetails;)V

    .line 339
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400e9

    iget-object v2, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JT:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JT:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 342
    iput-object v0, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 343
    new-instance v1, Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v0}, Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Kg:Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;

    .line 344
    iget-object v1, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Kg:Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;

    iget-object v2, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->DN:Lcom/android/settings_ext/applications/RunningState;

    iget-object v5, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2, p1, v5}, Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;->a(Lcom/android/settings_ext/applications/RunningState;Lcom/android/settings_ext/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;

    move-result-object v1

    iput-object v1, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Kf:Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;

    .line 346
    const v1, 0x7f100268

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 347
    iget v1, p1, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v2

    if-eq v1, v2, :cond_1

    .line 350
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 391
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->Kb:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 392
    return-void

    .line 351
    :cond_1
    if-eqz p2, :cond_2

    .line 352
    const v1, 0x7f0905a1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 355
    :cond_2
    const/4 v1, 0x0

    .line 356
    iget-object v5, p1, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->Lo:Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 357
    iget-object v2, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 360
    iget v2, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    packed-switch v2, :pswitch_data_0

    move v2, v3

    .line 386
    :cond_3
    :goto_1
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    .line 387
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v3

    invoke-virtual {v5, v2, v6}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 362
    :pswitch_0
    const v2, 0x7f0905a3

    .line 363
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_3

    .line 365
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getProviderInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ProviderInfo;

    move-result-object v5

    .line 367
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Lcom/android/settings_ext/applications/RunningState;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    goto :goto_1

    .line 374
    :pswitch_1
    const v2, 0x7f0905a2

    .line 375
    iget-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    if-eqz v6, :cond_3

    .line 377
    :try_start_1
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v5, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    const/4 v7, 0x0

    invoke-virtual {v6, v5, v7}, Landroid/content/pm/PackageManager;->getServiceInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ServiceInfo;

    move-result-object v5

    .line 379
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    iget-object v7, v5, Landroid/content/pm/ServiceInfo;->name:Ljava/lang/String;

    invoke-static {v6, v7, v5}, Lcom/android/settings_ext/applications/RunningState;->a(Landroid/content/pm/PackageManager;Ljava/lang/String;Landroid/content/pm/PackageItemInfo;)Ljava/lang/CharSequence;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v1

    goto :goto_1

    .line 381
    :catch_0
    move-exception v5

    goto :goto_1

    .line 369
    :catch_1
    move-exception v5

    goto :goto_1

    .line 360
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method a(Lcom/android/settings_ext/applications/RunningState$ServiceItem;Lcom/android/settings_ext/applications/RunningState$MergedItem;ZZ)V
    .locals 9

    .prologue
    const/4 v2, 0x1

    const/16 v8, 0x8

    const/4 v3, 0x0

    .line 248
    if-eqz p3, :cond_3

    .line 249
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->jK()V

    .line 258
    :cond_0
    :goto_0
    if-eqz p1, :cond_4

    move-object v0, p1

    .line 260
    :goto_1
    new-instance v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;

    invoke-direct {v4, p0}, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;-><init>(Lcom/android/settings_ext/applications/RunningServiceDetails;)V

    .line 261
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v5, 0x7f0400ea

    iget-object v6, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JT:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5, v6, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v5

    .line 263
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JT:Landroid/view/ViewGroup;

    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 264
    iput-object v5, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    .line 265
    iput-object p1, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Ke:Lcom/android/settings_ext/applications/RunningState$ServiceItem;

    .line 266
    new-instance v1, Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;

    invoke-direct {v1, v5}, Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;-><init>(Landroid/view/View;)V

    iput-object v1, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Kg:Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;

    .line 267
    iget-object v1, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Kg:Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;

    iget-object v6, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->DN:Lcom/android/settings_ext/applications/RunningState;

    iget-object v7, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6, v0, v7}, Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;->a(Lcom/android/settings_ext/applications/RunningState;Lcom/android/settings_ext/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Kf:Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;

    .line 269
    if-nez p4, :cond_1

    .line 270
    const v0, 0x7f100267

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 273
    :cond_1
    if-eqz p1, :cond_2

    iget-object v0, p1, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->Lr:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v0, v0, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    if-eqz v0, :cond_2

    .line 274
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->Jf:Landroid/app/ActivityManager;

    iget-object v1, p1, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->Lr:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/app/ActivityManager;->getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Kh:Landroid/app/PendingIntent;

    .line 278
    :cond_2
    const v0, 0x7f100268

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 279
    const v1, 0x7f1002bd

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Kd:Landroid/widget/Button;

    .line 280
    const v1, 0x7f1002be

    invoke-virtual {v5, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Ip:Landroid/widget/Button;

    .line 282
    if-eqz p3, :cond_5

    iget v1, p2, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v6

    if-eq v1, v6, :cond_5

    .line 286
    invoke-virtual {v0, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 287
    const v0, 0x7f1000f0

    invoke-virtual {v5, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/view/View;->setVisibility(I)V

    .line 332
    :goto_2
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->Kb:Ljava/util/ArrayList;

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 333
    return-void

    .line 250
    :cond_3
    iget v0, p2, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mUserId:I

    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 255
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->jL()V

    goto/16 :goto_0

    :cond_4
    move-object v0, p2

    .line 258
    goto/16 :goto_1

    .line 289
    :cond_5
    if-eqz p1, :cond_6

    iget-object v1, p1, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->Ls:Landroid/content/pm/ServiceInfo;

    iget v1, v1, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    if-eqz v1, :cond_6

    .line 290
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v5, p1, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->Ls:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v6, p1, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->Ls:Landroid/content/pm/ServiceInfo;

    iget v6, v6, Landroid/content/pm/ServiceInfo;->descriptionRes:I

    iget-object v7, p1, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->Ls:Landroid/content/pm/ServiceInfo;

    iget-object v7, v7, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 312
    :goto_3
    iget-object v0, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Kd:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 313
    iget-object v1, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Kd:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    iget-object v0, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Kh:Landroid/app/PendingIntent;

    if-eqz v0, :cond_a

    const v0, 0x7f09059c

    :goto_4
    invoke-virtual {v5, v0}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 315
    iget-object v0, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Ip:Landroid/widget/Button;

    invoke-virtual {v0, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 318
    iget-object v0, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Ip:Landroid/widget/Button;

    const v1, 0x1107003f

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(I)V

    .line 320
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "send_action_app_error"

    invoke-static {v0, v1, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 322
    if-eqz v0, :cond_c

    if-eqz p1, :cond_c

    .line 323
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->Ls:Landroid/content/pm/ServiceInfo;

    iget-object v1, v1, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    iget-object v5, p1, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->Ls:Landroid/content/pm/ServiceInfo;

    iget-object v5, v5, Landroid/content/pm/ServiceInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    invoke-static {v0, v1, v5}, Landroid/app/ApplicationErrorReport;->getErrorReportReceiver(Landroid/content/Context;Ljava/lang/String;I)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Ki:Landroid/content/ComponentName;

    .line 326
    iget-object v1, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Ip:Landroid/widget/Button;

    iget-object v0, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Ki:Landroid/content/ComponentName;

    if-eqz v0, :cond_b

    move v0, v2

    :goto_5
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2

    .line 294
    :cond_6
    iget-boolean v1, p2, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Lc:Z

    if-eqz v1, :cond_7

    .line 295
    const v1, 0x7f09059f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_3

    .line 296
    :cond_7
    iget-object v1, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Kh:Landroid/app/PendingIntent;

    if-eqz v1, :cond_8

    .line 298
    :try_start_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iget-object v5, p1, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->Lr:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->clientPackage:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v1

    .line 300
    iget-object v5, p1, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->Lr:Landroid/app/ActivityManager$RunningServiceInfo;

    iget v5, v5, Landroid/app/ActivityManager$RunningServiceInfo;->clientLabel:I

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 301
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    const v6, 0x7f0905a0

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v1, v7, v8

    invoke-virtual {v5, v6, v7}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_3

    .line 303
    :catch_0
    move-exception v0

    goto/16 :goto_3

    .line 306
    :cond_8
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v5

    if-eqz p1, :cond_9

    const v1, 0x7f09059d

    :goto_6
    invoke-virtual {v5, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_3

    :cond_9
    const v1, 0x7f09059e

    goto :goto_6

    .line 313
    :cond_a
    const v0, 0x7f09059b

    goto/16 :goto_4

    :cond_b
    move v0, v3

    .line 326
    goto :goto_5

    .line 328
    :cond_c
    iget-object v0, v4, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Ip:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_2
.end method

.method ah(Z)V
    .locals 4

    .prologue
    .line 466
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->jJ()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 467
    const/4 p1, 0x1

    .line 469
    :cond_0
    if-eqz p1, :cond_1

    .line 470
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    if-eqz v0, :cond_2

    .line 471
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JW:Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;

    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->DN:Lcom/android/settings_ext/applications/RunningState;

    iget-object v2, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    iget-object v3, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;->a(Lcom/android/settings_ext/applications/RunningState;Lcom/android/settings_ext/applications/RunningState$BaseItem;Ljava/lang/StringBuilder;)Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JV:Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;

    .line 483
    :goto_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->jM()V

    .line 485
    :cond_1
    :goto_1
    return-void

    .line 473
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JV:Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_3

    .line 475
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JV:Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->JL:Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;->JQ:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JV:Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->JL:Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;->JR:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 477
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JV:Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->JL:Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningProcessesView$ViewHolder;->jE:Landroid/widget/TextView;

    const v1, 0x7f090598

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    .line 480
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->finish()V

    goto :goto_1
.end method

.method public ax(I)V
    .locals 1

    .prologue
    .line 647
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 661
    :goto_0
    return-void

    .line 648
    :cond_0
    packed-switch p1, :pswitch_data_0

    goto :goto_0

    .line 650
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->jF()V

    goto :goto_0

    .line 653
    :pswitch_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->ah(Z)V

    .line 654
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->jF()V

    goto :goto_0

    .line 657
    :pswitch_2
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->ah(Z)V

    .line 658
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->jF()V

    goto :goto_0

    .line 648
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method b(Landroid/content/ComponentName;)Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;
    .locals 3

    .prologue
    .line 558
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->Kb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 559
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->Kb:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;

    .line 560
    iget-object v2, v0, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Ke:Lcom/android/settings_ext/applications/RunningState$ServiceItem;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Ke:Lcom/android/settings_ext/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->Lr:Landroid/app/ActivityManager$RunningServiceInfo;

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Ke:Lcom/android/settings_ext/applications/RunningState$ServiceItem;

    iget-object v2, v2, Lcom/android/settings_ext/applications/RunningState$ServiceItem;->Lr:Landroid/app/ActivityManager$RunningServiceInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningServiceInfo;->service:Landroid/content/ComponentName;

    invoke-virtual {p1, v2}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 565
    :goto_1
    return-object v0

    .line 558
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 565
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public finish()V
    .locals 2

    .prologue
    .line 496
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/android/settings_ext/applications/RunningServiceDetails$1;

    invoke-direct {v1, p0}, Lcom/android/settings_ext/applications/RunningServiceDetails$1;-><init>(Lcom/android/settings_ext/applications/RunningServiceDetails;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 507
    return-void
.end method

.method jF()V
    .locals 4

    .prologue
    .line 637
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JV:Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;

    if-eqz v0, :cond_0

    .line 638
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JV:Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 640
    :cond_0
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->Kb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 641
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->Kb:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->Kf:Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;

    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2, v3}, Lcom/android/settings_ext/applications/RunningProcessesView$ActiveItem;->a(Landroid/content/Context;Ljava/lang/StringBuilder;)V

    .line 640
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 643
    :cond_1
    return-void
.end method

.method jJ()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 199
    const/4 v3, 0x0

    .line 200
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->Hg:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->DN:Lcom/android/settings_ext/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/RunningState;->jS()Ljava/util/ArrayList;

    move-result-object v0

    move-object v4, v0

    .line 202
    :goto_0
    if-eqz v4, :cond_6

    move v1, v2

    .line 203
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_6

    .line 204
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    .line 205
    iget v5, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mUserId:I

    iget v6, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mUserId:I

    if-eq v5, v6, :cond_2

    .line 203
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 200
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->DN:Lcom/android/settings_ext/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/RunningState;->jR()Ljava/util/ArrayList;

    move-result-object v0

    move-object v4, v0

    goto :goto_0

    .line 208
    :cond_2
    iget v5, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mUid:I

    if-ltz v5, :cond_3

    iget-object v5, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    if-eqz v5, :cond_3

    iget-object v5, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    iget v5, v5, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mUid:I

    iget v6, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mUid:I

    if-ne v5, v6, :cond_0

    .line 211
    :cond_3
    iget-object v5, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    if-eqz v5, :cond_4

    iget-object v5, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    iget-object v6, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Ld:Lcom/android/settings_ext/applications/RunningState$ProcessItem;

    iget-object v6, v6, Lcom/android/settings_ext/applications/RunningState$ProcessItem;->mProcessName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 219
    :cond_4
    :goto_2
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    if-eq v1, v0, :cond_5

    .line 220
    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    .line 221
    const/4 v2, 0x1

    .line 223
    :cond_5
    return v2

    :cond_6
    move-object v0, v3

    goto :goto_2
.end method

.method jK()V
    .locals 4

    .prologue
    .line 227
    iget v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JX:I

    if-nez v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400f8

    iget-object v2, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JT:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JZ:Landroid/widget/TextView;

    .line 230
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JZ:Landroid/widget/TextView;

    const v1, 0x7f090599

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 231
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JT:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JZ:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 233
    :cond_0
    iget v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JX:I

    .line 234
    return-void
.end method

.method jL()V
    .locals 4

    .prologue
    .line 237
    iget v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JY:I

    if-nez v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400f8

    iget-object v2, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JT:Landroid/view/ViewGroup;

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->Ka:Landroid/widget/TextView;

    .line 240
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->Ka:Landroid/widget/TextView;

    const v1, 0x7f09059a

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 241
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JT:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->Ka:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 243
    :cond_0
    iget v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JY:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JY:I

    .line 244
    return-void
.end method

.method jM()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 427
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->Kb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_0
    if-ltz v1, :cond_0

    .line 428
    iget-object v2, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JT:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->Kb:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningServiceDetails$ActiveDetail;->mRootView:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 427
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_0

    .line 430
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->Kb:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 432
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JZ:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 433
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JT:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JZ:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 434
    iput-object v5, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JZ:Landroid/widget/TextView;

    .line 437
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->Ka:Landroid/widget/TextView;

    if-eqz v0, :cond_2

    .line 438
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JT:Landroid/view/ViewGroup;

    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->Ka:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 439
    iput-object v5, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->Ka:Landroid/widget/TextView;

    .line 442
    :cond_2
    iput v3, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JY:I

    iput v3, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JX:I

    .line 444
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    if-eqz v0, :cond_6

    .line 445
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->Le:Lcom/android/settings_ext/applications/RunningState$UserState;

    if-eqz v0, :cond_5

    .line 447
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->Hg:Z

    if-eqz v0, :cond_3

    .line 448
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    iget-object v1, v1, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 449
    iget-object v1, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->DN:Lcom/android/settings_ext/applications/RunningState;

    iget-object v1, v1, Lcom/android/settings_ext/applications/RunningState;->KB:Ljava/util/Comparator;

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    move-object v1, v0

    :goto_1
    move v2, v3

    .line 453
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_4

    .line 454
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    invoke-virtual {p0, v0, v4, v3}, Lcom/android/settings_ext/applications/RunningServiceDetails;->a(Lcom/android/settings_ext/applications/RunningState$MergedItem;ZZ)V

    .line 453
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_2

    .line 451
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    iget-object v0, v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;->mChildren:Ljava/util/ArrayList;

    move-object v1, v0

    goto :goto_1

    :cond_4
    move v2, v3

    .line 456
    :goto_3
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v2, v0, :cond_6

    .line 457
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningState$MergedItem;

    invoke-virtual {p0, v0, v3, v4}, Lcom/android/settings_ext/applications/RunningServiceDetails;->a(Lcom/android/settings_ext/applications/RunningState$MergedItem;ZZ)V

    .line 456
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_3

    .line 460
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->JS:Lcom/android/settings_ext/applications/RunningState$MergedItem;

    invoke-virtual {p0, v0, v4, v4}, Lcom/android/settings_ext/applications/RunningServiceDetails;->a(Lcom/android/settings_ext/applications/RunningState$MergedItem;ZZ)V

    .line 463
    :cond_6
    return-void
.end method

.method jN()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 621
    iget-boolean v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mHaveData:Z

    if-nez v0, :cond_0

    .line 622
    iput-boolean v1, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mHaveData:Z

    .line 623
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->DN:Lcom/android/settings_ext/applications/RunningState;

    invoke-virtual {v0, p0}, Lcom/android/settings_ext/applications/RunningState;->c(Lcom/android/settings_ext/applications/RunningState$OnRefreshUiListener;)V

    .line 628
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->DN:Lcom/android/settings_ext/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/RunningState;->jQ()V

    .line 632
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/applications/RunningServiceDetails;->ah(Z)V

    .line 634
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 511
    invoke-super {p0, p1}, Lcom/android/settings_ext/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 513
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "uid"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mUid:I

    .line 514
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "user_id"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mUserId:I

    .line 515
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "process"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mProcessName:Ljava/lang/String;

    .line 516
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "background"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->Hg:Z

    .line 518
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "activity"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->Jf:Landroid/app/ActivityManager;

    .line 519
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mInflater:Landroid/view/LayoutInflater;

    .line 521
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/applications/RunningState;->ac(Landroid/content/Context;)Lcom/android/settings_ext/applications/RunningState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->DN:Lcom/android/settings_ext/applications/RunningState;

    .line 522
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 546
    invoke-super {p0}, Lcom/android/settings_ext/BaseFragment;->onPause()V

    .line 547
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->mHaveData:Z

    .line 548
    iget-object v0, p0, Lcom/android/settings_ext/applications/RunningServiceDetails;->DN:Lcom/android/settings_ext/applications/RunningState;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/RunningState;->pause()V

    .line 549
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 553
    invoke-super {p0}, Lcom/android/settings_ext/BaseFragment;->onResume()V

    .line 554
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/RunningServiceDetails;->jN()V

    .line 555
    return-void
.end method
