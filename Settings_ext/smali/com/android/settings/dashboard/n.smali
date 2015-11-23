.class Lcom/android/settings/dashboard/n;
.super Landroid/widget/BaseAdapter;
.source "SearchResultsSummary.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 410
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 408
    iput-boolean v2, p0, Lcom/android/settings/dashboard/n;->mDataValid:Z

    .line 411
    iput-object p1, p0, Lcom/android/settings/dashboard/n;->mContext:Landroid/content/Context;

    .line 412
    iget-object v0, p0, Lcom/android/settings/dashboard/n;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/dashboard/n;->mInflater:Landroid/view/LayoutInflater;

    .line 413
    iput-boolean v2, p0, Lcom/android/settings/dashboard/n;->mDataValid:Z

    .line 414
    return-void
.end method

.method static synthetic a(Lcom/android/settings/dashboard/n;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 400
    iget-object v0, p0, Lcom/android/settings/dashboard/n;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 434
    iget-boolean v0, p0, Lcom/android/settings/dashboard/n;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/n;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/n;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 435
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings/dashboard/n;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 440
    iget-boolean v0, p0, Lcom/android/settings/dashboard/n;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/dashboard/n;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 441
    iget-object v0, p0, Lcom/android/settings/dashboard/n;->mCursor:Landroid/database/Cursor;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 443
    new-instance v0, Lcom/android/settings/dashboard/m;

    invoke-direct {v0, v1}, Lcom/android/settings/dashboard/m;-><init>(Ljava/lang/String;)V

    .line 445
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 450
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/android/settings/dashboard/n;->mDataValid:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 456
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should only be called when the cursor is valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 459
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/n;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 460
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "couldn\'t move cursor to position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 465
    :cond_1
    if-nez p2, :cond_2

    .line 466
    iget-object v0, p0, Lcom/android/settings/dashboard/n;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400f3

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 471
    :cond_2
    const v0, 0x7f100052

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 473
    invoke-virtual {p0, p1}, Lcom/android/settings/dashboard/n;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/dashboard/m;

    .line 474
    iget-object v1, v1, Lcom/android/settings/dashboard/m;->RD:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 476
    return-object p2
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 417
    iget-object v0, p0, Lcom/android/settings/dashboard/n;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 418
    const/4 v0, 0x0

    .line 429
    :goto_0
    return-object v0

    .line 420
    :cond_0
    iget-object v0, p0, Lcom/android/settings/dashboard/n;->mCursor:Landroid/database/Cursor;

    .line 421
    iput-object p1, p0, Lcom/android/settings/dashboard/n;->mCursor:Landroid/database/Cursor;

    .line 422
    if-eqz p1, :cond_1

    .line 423
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings/dashboard/n;->mDataValid:Z

    .line 424
    invoke-virtual {p0}, Lcom/android/settings/dashboard/n;->notifyDataSetChanged()V

    goto :goto_0

    .line 426
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/dashboard/n;->mDataValid:Z

    .line 427
    invoke-virtual {p0}, Lcom/android/settings/dashboard/n;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
