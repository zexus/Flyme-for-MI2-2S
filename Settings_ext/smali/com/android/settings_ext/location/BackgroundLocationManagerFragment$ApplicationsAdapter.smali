.class Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;
.super Landroid/widget/BaseAdapter;
.source "BackgroundLocationManagerFragment.java"

# interfaces
.implements Landroid/widget/AbsListView$RecyclerListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;
.implements Landroid/widget/Filterable;
.implements Lcom/android/settings_ext/applications/ApplicationsState$Callbacks;


# instance fields
.field private final DU:Lcom/android/settings_ext/applications/ApplicationsState;

.field private final DV:Lcom/android/settings_ext/applications/ApplicationsState$Session;

.field private final DX:I

.field private DY:Ljava/util/ArrayList;

.field private DZ:Ljava/util/ArrayList;

.field private Ea:I

.field Ec:Ljava/lang/CharSequence;

.field private Ed:Landroid/widget/Filter;

.field final synthetic acq:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;

.field private acr:Ljava/util/HashMap;

.field private final mActive:Ljava/util/ArrayList;

.field private final mContext:Landroid/content/Context;

.field mInflater:Landroid/view/LayoutInflater;

.field private mResumed:Z


# direct methods
.method public constructor <init>(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;Lcom/android/settings_ext/applications/ApplicationsState;Landroid/content/Context;I)V
    .locals 1

    .prologue
    .line 262
    iput-object p1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->acq:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 161
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->mActive:Ljava/util/ArrayList;

    .line 167
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->Ea:I

    .line 240
    new-instance v0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter$1;

    invoke-direct {v0, p0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter$1;-><init>(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;)V

    iput-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->Ed:Landroid/widget/Filter;

    .line 263
    iput-object p2, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->DU:Lcom/android/settings_ext/applications/ApplicationsState;

    .line 264
    invoke-virtual {p2, p0}, Lcom/android/settings_ext/applications/ApplicationsState;->a(Lcom/android/settings_ext/applications/ApplicationsState$Callbacks;)Lcom/android/settings_ext/applications/ApplicationsState$Session;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->DV:Lcom/android/settings_ext/applications/ApplicationsState$Session;

    .line 265
    iput-object p3, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->mContext:Landroid/content/Context;

    .line 266
    iput p4, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->DX:I

    .line 267
    invoke-static {p3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 268
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    .line 269
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->acr:Ljava/util/HashMap;

    .line 270
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;)Ljava/util/ArrayList;
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->DY:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .prologue
    .line 155
    iput-object p1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    return-object p1
.end method

.method private c(Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 345
    if-eqz p1, :cond_1

    .line 346
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    .line 347
    iget-object v3, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->acr:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->acq:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;

    invoke-static {v1}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->f(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;)Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v4}, Landroid/util/SparseIntArray;->indexOfKey(I)I

    move-result v1

    if-gez v1, :cond_0

    const/4 v1, 0x1

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 351
    :cond_1
    return-object p1
.end method


# virtual methods
.method public Z(Z)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 299
    .line 301
    sget-object v0, Lcom/android/settings_ext/applications/ApplicationsState;->Er:Ljava/util/Comparator;

    .line 302
    iget-object v1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->DV:Lcom/android/settings_ext/applications/ApplicationsState$Session;

    invoke-virtual {v1, v2, v0}, Lcom/android/settings_ext/applications/ApplicationsState$Session;->a(Lcom/android/settings_ext/applications/ApplicationsState$AppFilter;Ljava/util/Comparator;)Ljava/util/ArrayList;

    move-result-object v0

    .line 304
    if-nez v0, :cond_0

    if-nez p1, :cond_0

    .line 323
    :goto_0
    return-void

    .line 308
    :cond_0
    iput-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->DY:Ljava/util/ArrayList;

    .line 309
    iget-object v1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->DY:Ljava/util/ArrayList;

    if-eqz v1, :cond_1

    .line 310
    iget-object v1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->acq:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;

    invoke-static {v1}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->c(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->DY:Ljava/util/ArrayList;

    invoke-virtual {p0, v1, v2}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    .line 314
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 316
    if-nez v0, :cond_2

    .line 317
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->acq:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;

    invoke-static {v0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->d(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 318
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->acq:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;

    invoke-static {v0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->e(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 312
    :cond_1
    iput-object v2, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    goto :goto_1

    .line 320
    :cond_2
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->acq:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;

    invoke-static {v0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->d(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;)Landroid/widget/ListView;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->acq:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;

    invoke-static {v0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->e(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method

.method public a(Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;ZI)V
    .locals 2

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->acr:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 184
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->acq:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;

    invoke-static {v0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->b(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;)Landroid/util/SparseIntArray;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1, p3}, Landroid/util/SparseIntArray;->put(II)V

    .line 185
    return-void
.end method

.method public aF(Z)V
    .locals 3

    .prologue
    .line 188
    if-eqz p1, :cond_0

    const/4 v0, 0x0

    move v1, v0

    .line 190
    :goto_0
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    .line 191
    invoke-virtual {p0, v0, p1, v1}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->a(Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;ZI)V

    goto :goto_1

    .line 188
    :cond_0
    const/4 v0, 0x1

    move v1, v0

    goto :goto_0

    .line 193
    :cond_1
    invoke-virtual {p0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 194
    return-void
.end method

.method public aa(Z)V
    .locals 0

    .prologue
    .line 356
    return-void
.end method

.method public ac(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 392
    return-void
.end method

.method public ay(I)V
    .locals 1

    .prologue
    .line 291
    iget v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->Ea:I

    if-ne p1, v0, :cond_0

    .line 296
    :goto_0
    return-void

    .line 294
    :cond_0
    iput p1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->Ea:I

    .line 295
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->Z(Z)V

    goto :goto_0
.end method

.method public az(I)Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;
    .locals 1

    .prologue
    .line 231
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 237
    :goto_0
    return-object v0

    .line 232
    :catch_0
    move-exception v0

    .line 233
    invoke-virtual {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;->printStackTrace()V

    .line 237
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 234
    :catch_1
    move-exception v0

    .line 235
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public b(Ljava/util/ArrayList;)V
    .locals 3

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->acq:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;

    invoke-static {v0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->e(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->acq:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;

    invoke-static {v0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->e(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;)Landroid/view/View;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->mContext:Landroid/content/Context;

    const v2, 0x10a0001

    invoke-static {v1, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 364
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->acq:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;

    invoke-static {v0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->d(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;)Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V

    .line 365
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->acq:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;

    invoke-static {v0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->e(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 367
    iput-object p1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->DY:Ljava/util/ArrayList;

    .line 368
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->acq:Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;

    invoke-static {v0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;->c(Lcom/android/settings_ext/location/BackgroundLocationManagerFragment;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->DY:Ljava/util/ArrayList;

    invoke-virtual {p0, v0, v1}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    .line 369
    invoke-virtual {p0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 370
    return-void
.end method

.method c(Ljava/util/ArrayList;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 5

    .prologue
    .line 328
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 329
    :cond_0
    invoke-direct {p0, p2}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    .line 339
    :goto_0
    return-object v0

    .line 331
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 332
    const/4 v0, 0x0

    move v1, v0

    :goto_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge v1, v0, :cond_3

    .line 333
    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    .line 334
    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v3

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    if-lez v3, :cond_2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    .line 336
    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 332
    :cond_2
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 339
    :cond_3
    invoke-direct {p0, v2}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->c(Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    goto :goto_0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->Ed:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->DZ:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 205
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->mInflater:Landroid/view/LayoutInflater;

    invoke-static {v0, p2}, Lcom/android/settings_ext/applications/AppViewHolder;->a(Landroid/view/LayoutInflater;Landroid/view/View;)Lcom/android/settings_ext/applications/AppViewHolder;

    move-result-object v1

    .line 211
    iget-object v2, v1, Lcom/android/settings_ext/applications/AppViewHolder;->Dy:Landroid/view/View;

    .line 214
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    .line 215
    monitor-enter v0

    .line 216
    :try_start_0
    iput-object v0, v1, Lcom/android/settings_ext/applications/AppViewHolder;->Dx:Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    .line 217
    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 218
    iget-object v3, v1, Lcom/android/settings_ext/applications/AppViewHolder;->Dz:Landroid/widget/TextView;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->getLabel()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    :cond_0
    iget-object v3, v1, Lcom/android/settings_ext/applications/AppViewHolder;->DA:Landroid/widget/ImageView;

    iget-object v4, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v4}, Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;->getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 221
    iget-object v3, v1, Lcom/android/settings_ext/applications/AppViewHolder;->DC:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 222
    iget-object v3, v1, Lcom/android/settings_ext/applications/AppViewHolder;->DB:Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 223
    iget-object v3, v1, Lcom/android/settings_ext/applications/AppViewHolder;->DD:Landroid/widget/CheckBox;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 224
    iget-object v3, v1, Lcom/android/settings_ext/applications/AppViewHolder;->DD:Landroid/widget/CheckBox;

    iget-object v1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->acr:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v3, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 225
    monitor-exit v0

    .line 226
    return-object v2

    .line 225
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public iL()V
    .locals 1

    .prologue
    .line 374
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->Z(Z)V

    .line 375
    return-void
.end method

.method public iM()V
    .locals 0

    .prologue
    .line 379
    return-void
.end method

.method public iN()V
    .locals 0

    .prologue
    .line 396
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 174
    invoke-virtual {p0, p3}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->az(I)Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;

    move-result-object v4

    .line 175
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->acr:Ljava/util/HashMap;

    invoke-virtual {v0, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    move v3, v2

    .line 176
    :goto_0
    if-eqz v3, :cond_1

    move v0, v1

    .line 178
    :goto_1
    invoke-virtual {p0, v4, v3, v0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->a(Lcom/android/settings_ext/applications/ApplicationsState$AppEntry;ZI)V

    .line 179
    invoke-virtual {p0}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->notifyDataSetChanged()V

    .line 180
    return-void

    :cond_0
    move v3, v1

    .line 175
    goto :goto_0

    :cond_1
    move v0, v2

    .line 176
    goto :goto_1
.end method

.method public onMovedToScrapHeap(Landroid/view/View;)V
    .locals 0

    .prologue
    .line 388
    return-void
.end method

.method public resume(I)V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 273
    iget-boolean v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->mResumed:Z

    if-nez v0, :cond_0

    .line 274
    iput-boolean v1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->mResumed:Z

    .line 275
    iget-object v0, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->DV:Lcom/android/settings_ext/applications/ApplicationsState$Session;

    invoke-virtual {v0}, Lcom/android/settings_ext/applications/ApplicationsState$Session;->resume()V

    .line 276
    iput p1, p0, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->Ea:I

    .line 277
    invoke-virtual {p0, v1}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->Z(Z)V

    .line 281
    :goto_0
    return-void

    .line 279
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/location/BackgroundLocationManagerFragment$ApplicationsAdapter;->ay(I)V

    goto :goto_0
.end method
