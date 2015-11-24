.class public Lcom/android/settings_ext/applications/ManageApplications$TabInfo;
.super Ljava/lang/Object;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field public final DP:Lcom/android/settings_ext/applications/ApplicationsState;

.field public final Eg:I

.field public final Eh:I

.field public final Ej:Ljava/lang/CharSequence;

.field public final Ek:Ljava/lang/CharSequence;

.field private Em:Landroid/view/View;

.field final Eo:Ljava/lang/Runnable;

.field private Hi:Lcom/android/internal/app/IMediaContainerService;

.field public final Hr:Lcom/android/settings_ext/applications/ManageApplications;

.field public final Hs:Lcom/android/settings_ext/applications/AppClickListener;

.field private final Ht:Landroid/os/Bundle;

.field public Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

.field private Hv:Landroid/view/ViewGroup;

.field private Hw:Lcom/android/settings_ext/applications/RunningProcessesView;

.field private Hx:J

.field private Hy:J

.field private Hz:J

.field private fz:Landroid/widget/ListView;

.field public mInflater:Landroid/view/LayoutInflater;

.field public final mLabel:Ljava/lang/CharSequence;

.field private mListContainer:Landroid/view/View;

.field public mRootView:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/applications/ManageApplications;Lcom/android/settings_ext/applications/ApplicationsState;Ljava/lang/CharSequence;ILcom/android/settings_ext/applications/AppClickListener;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 222
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 211
    iput-wide v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hx:J

    iput-wide v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hy:J

    iput-wide v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hz:J

    .line 214
    new-instance v0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo$1;-><init>(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Eo:Ljava/lang/Runnable;

    .line 223
    iput-object p1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hr:Lcom/android/settings_ext/applications/ManageApplications;

    .line 224
    iput-object p2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->DP:Lcom/android/settings_ext/applications/ApplicationsState;

    .line 225
    iput-object p3, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mLabel:Ljava/lang/CharSequence;

    .line 226
    iput p4, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Eg:I

    .line 227
    packed-switch p4, :pswitch_data_0

    .line 231
    :pswitch_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Eh:I

    .line 233
    :goto_0
    iput-object p5, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hs:Lcom/android/settings_ext/applications/AppClickListener;

    .line 234
    invoke-virtual {p1}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f090560

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Ej:Ljava/lang/CharSequence;

    .line 235
    invoke-virtual {p1}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f09055f

    invoke-virtual {v0, v1}, Landroid/app/Activity;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Ek:Ljava/lang/CharSequence;

    .line 236
    iput-object p6, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Ht:Landroid/os/Bundle;

    .line 237
    return-void

    .line 228
    :pswitch_1
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Eh:I

    goto :goto_0

    .line 229
    :pswitch_2
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Eh:I

    goto :goto_0

    .line 230
    :pswitch_3
    const/4 v0, 0x3

    iput v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Eh:I

    goto :goto_0

    .line 227
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method static synthetic a(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)Landroid/view/View;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Em:Landroid/view/View;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;)Lcom/android/settings_ext/applications/RunningProcessesView;
    .locals 1

    .prologue
    .line 179
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hw:Lcom/android/settings_ext/applications/RunningProcessesView;

    return-object v0
.end method


# virtual methods
.method public a(Lcom/android/internal/app/IMediaContainerService;)V
    .locals 0

    .prologue
    .line 240
    iput-object p1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hi:Lcom/android/internal/app/IMediaContainerService;

    .line 241
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->jp()V

    .line 242
    return-void
.end method

.method public b(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/view/View;)Landroid/view/View;
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 245
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 246
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    .line 301
    :goto_0
    return-object v0

    .line 249
    :cond_0
    iput-object p1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mInflater:Landroid/view/LayoutInflater;

    .line 250
    iget v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Eg:I

    if-ne v0, v3, :cond_6

    const v0, 0x7f04007c

    :goto_1
    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    .line 253
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v1, 0x7f10012a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hv:Landroid/view/ViewGroup;

    .line 254
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hr:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-static {v0}, Lcom/android/settings_ext/applications/ManageApplications;->a(Lcom/android/settings_ext/applications/ManageApplications;)Lcom/android/settings_ext/hj;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 255
    const v0, 0x7f040104

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    .line 256
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hr:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-static {v1}, Lcom/android/settings_ext/applications/ManageApplications;->a(Lcom/android/settings_ext/applications/ManageApplications;)Lcom/android/settings_ext/hj;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 257
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hr:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 258
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hv:Landroid/view/ViewGroup;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 259
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hv:Landroid/view/ViewGroup;

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v1, 0x7f100122

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Em:Landroid/view/View;

    .line 262
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Em:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    .line 263
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v1, 0x7f100124

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    .line 264
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    if-eqz v0, :cond_4

    .line 268
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v1, 0x1020004

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 269
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mListContainer:Landroid/view/View;

    const v2, 0x102000a

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    .line 270
    if-eqz v1, :cond_2

    .line 271
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 273
    :cond_2
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 274
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setSaveEnabled(Z)V

    .line 275
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setItemsCanFocus(Z)V

    .line 276
    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setTextFilterEnabled(Z)V

    .line 277
    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->fz:Landroid/widget/ListView;

    .line 278
    new-instance v0, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->DP:Lcom/android/settings_ext/applications/ApplicationsState;

    iget v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Eh:I

    invoke-direct {v0, v1, p0, v2}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;-><init>(Lcom/android/settings_ext/applications/ApplicationsState;Lcom/android/settings_ext/applications/ManageApplications$TabInfo;I)V

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    .line 279
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->fz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 280
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->fz:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setRecyclerListener(Landroid/widget/AbsListView$RecyclerListener;)V

    .line 285
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->fz:Landroid/widget/ListView;

    invoke-static {p2, p3, v0, v4}, Lcom/android/settings_ext/hl;->a(Landroid/view/ViewGroup;Landroid/view/View;Landroid/view/View;Z)V

    .line 286
    iget v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Eh:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 293
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->jq()V

    .line 295
    :cond_4
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    const v1, 0x7f100129

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/RunningProcessesView;

    iput-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hw:Lcom/android/settings_ext/applications/RunningProcessesView;

    .line 297
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hw:Lcom/android/settings_ext/applications/RunningProcessesView;

    if-eqz v0, :cond_5

    .line 298
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hw:Lcom/android/settings_ext/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Ht:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/RunningProcessesView;->h(Landroid/os/Bundle;)V

    .line 301
    :cond_5
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    goto/16 :goto_0

    .line 250
    :cond_6
    const v0, 0x7f040078

    goto/16 :goto_1
.end method

.method public iO()V
    .locals 2

    .prologue
    .line 305
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 306
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 307
    if-eqz v0, :cond_0

    .line 308
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 311
    :cond_0
    return-void
.end method

.method iQ()V
    .locals 3

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Em:Landroid/view/View;

    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hr:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 449
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hw:Lcom/android/settings_ext/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hr:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-virtual {v1}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const/high16 v2, 0x10a0000

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/RunningProcessesView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 451
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hw:Lcom/android/settings_ext/applications/RunningProcessesView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/applications/RunningProcessesView;->setVisibility(I)V

    .line 452
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Em:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 453
    return-void
.end method

.method jp()V
    .locals 10

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 345
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hr:Lcom/android/settings_ext/applications/ManageApplications;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ManageApplications;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_1

    .line 400
    :cond_0
    :goto_0
    return-void

    .line 347
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 349
    iput-wide v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hx:J

    .line 350
    iput-wide v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hy:J

    .line 351
    iput-wide v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hz:J

    .line 353
    iget v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Eh:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_3

    .line 354
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hi:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v0, :cond_2

    .line 356
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hi:Lcom/android/internal/app/IMediaContainerService;

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v0

    .line 358
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hz:J

    .line 359
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hx:J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_7

    .line 366
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v0

    .line 367
    :goto_2
    if-ge v1, v0, :cond_7

    .line 368
    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v2, v1}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->az(I)Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    move-result-object v2

    .line 369
    iget-wide v4, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hy:J

    iget-wide v6, v2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iget-wide v8, v2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v6, v8

    iget-wide v2, v2, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalCacheSize:J

    add-long/2addr v2, v6

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hy:J

    .line 367
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 360
    :catch_0
    move-exception v0

    .line 361
    const-string v2, "ManageApplications"

    const-string v3, "Problem in container service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 374
    :cond_3
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hi:Lcom/android/internal/app/IMediaContainerService;

    if-eqz v0, :cond_4

    .line 376
    :try_start_1
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hi:Lcom/android/internal/app/IMediaContainerService;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/app/IMediaContainerService;->getFileSystemStats(Ljava/lang/String;)[J

    move-result-object v0

    .line 378
    const/4 v2, 0x0

    aget-wide v2, v0, v2

    iput-wide v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hz:J

    .line 379
    const/4 v2, 0x1

    aget-wide v2, v0, v2

    iput-wide v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hx:J
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 385
    :cond_4
    :goto_3
    invoke-static {}, Landroid/os/Environment;->isExternalStorageEmulated()Z

    move-result v2

    .line 386
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_6

    .line 387
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->getCount()I

    move-result v3

    move v0, v1

    .line 388
    :goto_4
    if-ge v0, v3, :cond_6

    .line 389
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v1, v0}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->az(I)Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    move-result-object v1

    .line 390
    iget-wide v4, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hy:J

    iget-wide v6, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->codeSize:J

    iget-wide v8, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->dataSize:J

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hy:J

    .line 391
    if-eqz v2, :cond_5

    .line 392
    iget-wide v4, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hy:J

    iget-wide v6, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalCodeSize:J

    iget-wide v8, v1, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->externalDataSize:J

    add-long/2addr v6, v8

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hy:J

    .line 388
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 380
    :catch_1
    move-exception v0

    .line 381
    const-string v2, "ManageApplications"

    const-string v3, "Problem in container service"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_3

    .line 396
    :cond_6
    iget-wide v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hx:J

    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->DP:Lcom/android/settings_ext/applications/ApplicationsState;

    invoke-virtual {v2}, Lcom/android/settings_ext/applications/ApplicationsState;->iW()J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hx:J

    .line 399
    :cond_7
    invoke-virtual {p0}, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->jq()V

    goto/16 :goto_0
.end method

.method jq()V
    .locals 1

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->mRootView:Landroid/view/View;

    if-nez v0, :cond_0

    .line 439
    :cond_0
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 8

    .prologue
    .line 443
    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hs:Lcom/android/settings_ext/applications/AppClickListener;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-wide v6, p4

    invoke-interface/range {v1 .. v7}, Lcom/android/settings_ext/applications/AppClickListener;->a(Lcom/android/settings_ext/applications/ManageApplications$TabInfo;Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 444
    return-void
.end method

.method public pause()V
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 330
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->pause()V

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hw:Lcom/android/settings_ext/applications/RunningProcessesView;

    if-eqz v0, :cond_1

    .line 333
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hw:Lcom/android/settings_ext/applications/RunningProcessesView;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/RunningProcessesView;->jH()V

    .line 335
    :cond_1
    return-void
.end method

.method public release()V
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 339
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->release()V

    .line 341
    :cond_0
    return-void
.end method

.method public resume(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 314
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hu:Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/applications/ManageApplications$ApplicationsAdapter;->resume(I)V

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hw:Lcom/android/settings_ext/applications/RunningProcessesView;

    if-eqz v0, :cond_1

    .line 318
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hw:Lcom/android/settings_ext/applications/RunningProcessesView;

    iget-object v1, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hr:Lcom/android/settings_ext/applications/ManageApplications;

    iget-object v2, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Eo:Ljava/lang/Runnable;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings_ext/applications/RunningProcessesView;->a(Landroid/app/Fragment;Ljava/lang/Runnable;)Z

    move-result v0

    .line 319
    if-eqz v0, :cond_2

    .line 320
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Hw:Lcom/android/settings_ext/applications/RunningProcessesView;

    invoke-virtual {v0, v3}, Lcom/android/settings_ext/applications/RunningProcessesView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Em:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 326
    :cond_1
    :goto_0
    return-void

    .line 323
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/applications/ManageApplications$TabInfo;->Em:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
