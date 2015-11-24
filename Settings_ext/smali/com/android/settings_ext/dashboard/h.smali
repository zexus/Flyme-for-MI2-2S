.class public Lcom/android/settings_ext/dashboard/h;
.super Landroid/app/Fragment;
.source "SearchResultsSummary.java"


# static fields
.field private static Rn:C


# instance fields
.field private Ro:Landroid/widget/ListView;

.field private Rp:Lcom/android/settings_ext/dashboard/l;

.field private Rq:Lcom/android/settings_ext/dashboard/o;

.field private Rr:Landroid/widget/ListView;

.field private Rs:Lcom/android/settings_ext/dashboard/n;

.field private Rt:Lcom/android/settings_ext/dashboard/p;

.field private Ru:Landroid/view/ViewGroup;

.field private Rv:Landroid/view/ViewGroup;

.field private Rw:Ljava/lang/String;

.field private Rx:Z

.field private wZ:Landroid/widget/SearchView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const/16 v0, 0x2026

    sput-char v0, Lcom/android/settings_ext/dashboard/h;->Rn:C

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 501
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/dashboard/h;)Lcom/android/settings_ext/dashboard/l;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rp:Lcom/android/settings_ext/dashboard/l;

    return-object v0
.end method

.method static synthetic a(Lcom/android/settings_ext/dashboard/h;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/android/settings_ext/dashboard/h;->Rw:Ljava/lang/String;

    return-object p1
.end method

.method private a(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rs:Lcom/android/settings_ext/dashboard/n;

    if-nez v0, :cond_1

    .line 325
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rs:Lcom/android/settings_ext/dashboard/n;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/dashboard/n;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 322
    if-eqz v0, :cond_0

    .line 323
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings_ext/dashboard/h;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings_ext/dashboard/h;->b(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/dashboard/h;Z)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings_ext/dashboard/h;->az(Z)V

    return-void
.end method

.method private ay(Z)V
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Ru:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 262
    iget-object v1, p0, Lcom/android/settings_ext/dashboard/h;->Ru:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 264
    :cond_0
    return-void

    .line 262
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private az(Z)V
    .locals 2

    .prologue
    .line 267
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rv:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/settings_ext/dashboard/h;->Rv:Landroid/view/ViewGroup;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 270
    :cond_0
    return-void

    .line 268
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method private b(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 346
    if-nez p1, :cond_0

    .line 347
    const/4 v0, 0x0

    .line 357
    :goto_0
    return-object v0

    .line 349
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 350
    const/4 v0, 0x0

    :goto_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 351
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 352
    invoke-static {v2}, Ljava/lang/Character;->isLetterOrDigit(C)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Ljava/lang/Character;->isSpaceChar(C)Z

    move-result v3

    if-nez v3, :cond_1

    .line 350
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 355
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 357
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private b(Landroid/database/Cursor;)V
    .locals 1

    .prologue
    .line 336
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rp:Lcom/android/settings_ext/dashboard/l;

    if-nez v0, :cond_1

    .line 343
    :cond_0
    :goto_0
    return-void

    .line 339
    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rp:Lcom/android/settings_ext/dashboard/l;

    invoke-virtual {v0, p1}, Lcom/android/settings_ext/dashboard/l;->swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_0

    .line 341
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    goto :goto_0
.end method

.method static synthetic b(Lcom/android/settings_ext/dashboard/h;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/android/settings_ext/dashboard/h;->nM()V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/dashboard/h;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings_ext/dashboard/h;->a(Landroid/database/Cursor;)V

    return-void
.end method

.method static synthetic b(Lcom/android/settings_ext/dashboard/h;Z)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/android/settings_ext/dashboard/h;->ay(Z)V

    return-void
.end method

.method static synthetic c(Lcom/android/settings_ext/dashboard/h;)Lcom/android/settings_ext/dashboard/n;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rs:Lcom/android/settings_ext/dashboard/n;

    return-object v0
.end method

.method static synthetic c(Lcom/android/settings_ext/dashboard/h;Z)Z
    .locals 0

    .prologue
    .line 47
    iput-boolean p1, p0, Lcom/android/settings_ext/dashboard/h;->Rx:Z

    return p1
.end method

.method static synthetic d(Lcom/android/settings_ext/dashboard/h;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rw:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic e(Lcom/android/settings_ext/dashboard/h;)Landroid/widget/SearchView;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->wZ:Landroid/widget/SearchView;

    return-object v0
.end method

.method private nM()V
    .locals 2

    .prologue
    .line 273
    invoke-virtual {p0}, Lcom/android/settings_ext/dashboard/h;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings_ext/search/e;->bn(Landroid/content/Context;)Lcom/android/settings_ext/search/e;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings_ext/dashboard/h;->Rw:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/search/e;->bd(Ljava/lang/String;)J

    .line 274
    return-void
.end method

.method private nO()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 310
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rt:Lcom/android/settings_ext/dashboard/p;

    if-eqz v0, :cond_0

    .line 311
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rt:Lcom/android/settings_ext/dashboard/p;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/dashboard/p;->cancel(Z)Z

    .line 312
    iput-object v2, p0, Lcom/android/settings_ext/dashboard/h;->Rt:Lcom/android/settings_ext/dashboard/p;

    .line 314
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings_ext/dashboard/h;->a(Landroid/database/Cursor;)V

    .line 315
    return-void
.end method

.method private nP()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 328
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rq:Lcom/android/settings_ext/dashboard/o;

    if-eqz v0, :cond_0

    .line 329
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rq:Lcom/android/settings_ext/dashboard/o;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/dashboard/o;->cancel(Z)Z

    .line 330
    iput-object v2, p0, Lcom/android/settings_ext/dashboard/h;->Rq:Lcom/android/settings_ext/dashboard/o;

    .line 332
    :cond_0
    invoke-direct {p0, v2}, Lcom/android/settings_ext/dashboard/h;->b(Landroid/database/Cursor;)V

    .line 333
    return-void
.end method

.method private nQ()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 361
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rq:Lcom/android/settings_ext/dashboard/o;

    if-eqz v0, :cond_0

    .line 362
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rq:Lcom/android/settings_ext/dashboard/o;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/dashboard/o;->cancel(Z)Z

    .line 363
    iput-object v2, p0, Lcom/android/settings_ext/dashboard/h;->Rq:Lcom/android/settings_ext/dashboard/o;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rt:Lcom/android/settings_ext/dashboard/p;

    if-eqz v0, :cond_1

    .line 366
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rt:Lcom/android/settings_ext/dashboard/p;

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/dashboard/p;->cancel(Z)Z

    .line 367
    iput-object v2, p0, Lcom/android/settings_ext/dashboard/h;->Rt:Lcom/android/settings_ext/dashboard/p;

    .line 369
    :cond_1
    return-void
.end method

.method private nR()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 372
    invoke-direct {p0}, Lcom/android/settings_ext/dashboard/h;->nQ()V

    .line 373
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rw:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 374
    invoke-direct {p0, v1}, Lcom/android/settings_ext/dashboard/h;->a(Landroid/database/Cursor;)V

    .line 379
    :goto_0
    return-void

    .line 376
    :cond_0
    new-instance v0, Lcom/android/settings_ext/dashboard/p;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/dashboard/p;-><init>(Lcom/android/settings_ext/dashboard/h;Lcom/android/settings_ext/dashboard/i;)V

    iput-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rt:Lcom/android/settings_ext/dashboard/p;

    .line 377
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rt:Lcom/android/settings_ext/dashboard/p;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/android/settings_ext/dashboard/h;->Rw:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/dashboard/p;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method

.method private nS()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 382
    invoke-direct {p0}, Lcom/android/settings_ext/dashboard/h;->nQ()V

    .line 383
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 384
    invoke-direct {p0, v3}, Lcom/android/settings_ext/dashboard/h;->az(Z)V

    .line 385
    invoke-direct {p0, v1}, Lcom/android/settings_ext/dashboard/h;->b(Landroid/database/Cursor;)V

    .line 390
    :goto_0
    return-void

    .line 387
    :cond_0
    new-instance v0, Lcom/android/settings_ext/dashboard/o;

    invoke-direct {v0, p0, v1}, Lcom/android/settings_ext/dashboard/o;-><init>(Lcom/android/settings_ext/dashboard/h;Lcom/android/settings_ext/dashboard/i;)V

    iput-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rq:Lcom/android/settings_ext/dashboard/o;

    .line 388
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rq:Lcom/android/settings_ext/dashboard/o;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/android/settings_ext/dashboard/h;->Rw:Ljava/lang/String;

    aput-object v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/android/settings_ext/dashboard/o;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    goto :goto_0
.end method


# virtual methods
.method public nN()V
    .locals 1

    .prologue
    .line 304
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/dashboard/h;->az(Z)V

    .line 305
    const-string v0, ""

    iput-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rw:Ljava/lang/String;

    .line 306
    invoke-direct {p0}, Lcom/android/settings_ext/dashboard/h;->nR()V

    .line 307
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 115
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 117
    new-instance v0, Lcom/android/settings_ext/dashboard/l;

    invoke-virtual {p0}, Lcom/android/settings_ext/dashboard/h;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ext/dashboard/l;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rp:Lcom/android/settings_ext/dashboard/l;

    .line 118
    new-instance v0, Lcom/android/settings_ext/dashboard/n;

    invoke-virtual {p0}, Lcom/android/settings_ext/dashboard/h;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/android/settings_ext/dashboard/n;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rs:Lcom/android/settings_ext/dashboard/n;

    .line 120
    if-eqz p1, :cond_0

    .line 121
    const-string v0, ":settings:show_results"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/settings_ext/dashboard/h;->Rx:Z

    .line 123
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 159
    const v0, 0x7f0400ef

    invoke-virtual {p1, v0, p2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 161
    const v0, 0x7f10026c

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Ru:Landroid/view/ViewGroup;

    .line 162
    const v0, 0x7f10026e

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rv:Landroid/view/ViewGroup;

    .line 164
    const v0, 0x7f10026f

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Ro:Landroid/widget/ListView;

    .line 165
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Ro:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings_ext/dashboard/h;->Rp:Lcom/android/settings_ext/dashboard/l;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 166
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Ro:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings_ext/dashboard/i;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/dashboard/i;-><init>(Lcom/android/settings_ext/dashboard/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 214
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Ro:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings_ext/dashboard/h;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400f0

    iget-object v4, p0, Lcom/android/settings_ext/dashboard/h;->Ro:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 219
    const v0, 0x7f10026d

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rr:Landroid/widget/ListView;

    .line 220
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rr:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/android/settings_ext/dashboard/h;->Rs:Lcom/android/settings_ext/dashboard/n;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 221
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rr:Landroid/widget/ListView;

    new-instance v2, Lcom/android/settings_ext/dashboard/j;

    invoke-direct {v2, p0}, Lcom/android/settings_ext/dashboard/j;-><init>(Lcom/android/settings_ext/dashboard/h;)V

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 239
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rr:Landroid/widget/ListView;

    invoke-virtual {p0}, Lcom/android/settings_ext/dashboard/h;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0400f1

    iget-object v4, p0, Lcom/android/settings_ext/dashboard/h;->Rr:Landroid/widget/ListView;

    invoke-virtual {v2, v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v0, v2, v6, v5}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V

    .line 244
    return-object v1
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 142
    iput-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Ro:Landroid/widget/ListView;

    .line 143
    iput-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rp:Lcom/android/settings_ext/dashboard/l;

    .line 144
    iput-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rq:Lcom/android/settings_ext/dashboard/o;

    .line 146
    iput-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rr:Landroid/widget/ListView;

    .line 147
    iput-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rs:Lcom/android/settings_ext/dashboard/n;

    .line 148
    iput-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rt:Lcom/android/settings_ext/dashboard/p;

    .line 150
    iput-object v0, p0, Lcom/android/settings_ext/dashboard/h;->wZ:Landroid/widget/SearchView;

    .line 152
    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    .line 153
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 286
    invoke-direct {p0, p1}, Lcom/android/settings_ext/dashboard/h;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 288
    iput-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rw:Ljava/lang/String;

    .line 290
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rw:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 291
    iput-boolean v1, p0, Lcom/android/settings_ext/dashboard/h;->Rx:Z

    .line 292
    invoke-direct {p0, v1}, Lcom/android/settings_ext/dashboard/h;->az(Z)V

    .line 293
    invoke-direct {p0}, Lcom/android/settings_ext/dashboard/h;->nR()V

    .line 300
    :goto_0
    return v2

    .line 295
    :cond_0
    iput-boolean v2, p0, Lcom/android/settings_ext/dashboard/h;->Rx:Z

    .line 296
    invoke-direct {p0, v1}, Lcom/android/settings_ext/dashboard/h;->ay(Z)V

    .line 297
    invoke-direct {p0}, Lcom/android/settings_ext/dashboard/h;->nS()V

    goto :goto_0
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 277
    invoke-direct {p0, p1}, Lcom/android/settings_ext/dashboard/h;->b(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings_ext/dashboard/h;->Rw:Ljava/lang/String;

    .line 278
    iput-boolean v1, p0, Lcom/android/settings_ext/dashboard/h;->Rx:Z

    .line 279
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/settings_ext/dashboard/h;->ay(Z)V

    .line 280
    invoke-direct {p0}, Lcom/android/settings_ext/dashboard/h;->nS()V

    .line 281
    invoke-direct {p0}, Lcom/android/settings_ext/dashboard/h;->nM()V

    .line 282
    return v1
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 249
    invoke-super {p0}, Landroid/app/Fragment;->onResume()V

    .line 251
    iget-boolean v0, p0, Lcom/android/settings_ext/dashboard/h;->Rx:Z

    if-nez v0, :cond_0

    .line 252
    invoke-virtual {p0}, Lcom/android/settings_ext/dashboard/h;->nN()V

    .line 254
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 127
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 129
    const-string v0, ":settings:show_results"

    iget-boolean v1, p0, Lcom/android/settings_ext/dashboard/h;->Rx:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 130
    return-void
.end method

.method public onStop()V
    .locals 0

    .prologue
    .line 134
    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    .line 136
    invoke-direct {p0}, Lcom/android/settings_ext/dashboard/h;->nO()V

    .line 137
    invoke-direct {p0}, Lcom/android/settings_ext/dashboard/h;->nP()V

    .line 138
    return-void
.end method

.method public setSearchView(Landroid/widget/SearchView;)V
    .locals 0

    .prologue
    .line 257
    iput-object p1, p0, Lcom/android/settings_ext/dashboard/h;->wZ:Landroid/widget/SearchView;

    .line 258
    return-void
.end method
