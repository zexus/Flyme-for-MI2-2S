.class Lcom/android/settings/bu;
.super Landroid/os/AsyncTask;
.source "DataUsageSummary.java"


# instance fields
.field private final gZ:Lcom/android/settings/b/j;

.field private final hd:Lcom/android/settings/DataUsageSummary$AppItem;

.field private final he:Landroid/view/View;


# direct methods
.method private constructor <init>(Lcom/android/settings/b/j;Lcom/android/settings/DataUsageSummary$AppItem;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 2279
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 2280
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/b/j;

    iput-object v0, p0, Lcom/android/settings/bu;->gZ:Lcom/android/settings/b/j;

    .line 2281
    invoke-static {p2}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/DataUsageSummary$AppItem;

    iput-object v0, p0, Lcom/android/settings/bu;->hd:Lcom/android/settings/DataUsageSummary$AppItem;

    .line 2282
    invoke-static {p3}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/android/settings/bu;->he:Landroid/view/View;

    .line 2283
    return-void
.end method

.method private static a(Lcom/android/settings/b/i;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2302
    const v0, 0x1020006

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 2303
    const v1, 0x1020016

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 2305
    if-eqz p0, :cond_0

    .line 2306
    iget-object v2, p0, Lcom/android/settings/b/i;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2307
    iget-object v0, p0, Lcom/android/settings/b/i;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2308
    iget-object v0, p0, Lcom/android/settings/b/i;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 2313
    :goto_0
    return-void

    .line 2310
    :cond_0
    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 2311
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public static a(Lcom/android/settings/b/j;Lcom/android/settings/DataUsageSummary$AppItem;Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 2287
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bu;

    .line 2288
    if-eqz v0, :cond_0

    .line 2289
    invoke-virtual {v0, v2}, Lcom/android/settings/bu;->cancel(Z)Z

    .line 2292
    :cond_0
    iget v0, p1, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    invoke-virtual {p0, v0, v2}, Lcom/android/settings/b/j;->g(IZ)Lcom/android/settings/b/i;

    move-result-object v0

    .line 2293
    if-eqz v0, :cond_1

    .line 2294
    invoke-static {v0, p2}, Lcom/android/settings/bu;->a(Lcom/android/settings/b/i;Landroid/view/View;)V

    .line 2299
    :goto_0
    return-void

    .line 2296
    :cond_1
    new-instance v0, Lcom/android/settings/bu;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/settings/bu;-><init>(Lcom/android/settings/b/j;Lcom/android/settings/DataUsageSummary$AppItem;Landroid/view/View;)V

    sget-object v1, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/bu;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method


# virtual methods
.method protected a(Lcom/android/settings/b/i;)V
    .locals 1

    .prologue
    .line 2327
    iget-object v0, p0, Lcom/android/settings/bu;->he:Landroid/view/View;

    invoke-static {p1, v0}, Lcom/android/settings/bu;->a(Lcom/android/settings/b/i;Landroid/view/View;)V

    .line 2328
    return-void
.end method

.method protected varargs b([Ljava/lang/Void;)Lcom/android/settings/b/i;
    .locals 3

    .prologue
    .line 2322
    iget-object v0, p0, Lcom/android/settings/bu;->gZ:Lcom/android/settings/b/j;

    iget-object v1, p0, Lcom/android/settings/bu;->hd:Lcom/android/settings/DataUsageSummary$AppItem;

    iget v1, v1, Lcom/android/settings/DataUsageSummary$AppItem;->key:I

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/b/j;->g(IZ)Lcom/android/settings/b/i;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 2274
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/settings/bu;->b([Ljava/lang/Void;)Lcom/android/settings/b/i;

    move-result-object v0

    return-object v0
.end method

.method protected synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 2274
    check-cast p1, Lcom/android/settings/b/i;

    invoke-virtual {p0, p1}, Lcom/android/settings/bu;->a(Lcom/android/settings/b/i;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 2317
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/android/settings/bu;->he:Landroid/view/View;

    invoke-static {v0, v1}, Lcom/android/settings/bu;->a(Lcom/android/settings/b/i;Landroid/view/View;)V

    .line 2318
    return-void
.end method
