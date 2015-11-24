.class Lcom/android/settings_ext/dashboard/l;
.super Landroid/widget/BaseAdapter;
.source "SearchResultsSummary.java"


# instance fields
.field private RC:Ljava/util/HashMap;

.field private mContext:Landroid/content/Context;

.field private mCursor:Landroid/database/Cursor;

.field private mDataValid:Z

.field private mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 512
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 507
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings_ext/dashboard/l;->RC:Ljava/util/HashMap;

    .line 513
    iput-object p1, p0, Lcom/android/settings_ext/dashboard/l;->mContext:Landroid/content/Context;

    .line 514
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/l;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings_ext/dashboard/l;->mInflater:Landroid/view/LayoutInflater;

    .line 515
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings_ext/dashboard/l;->mDataValid:Z

    .line 516
    return-void
.end method

.method static synthetic a(Lcom/android/settings_ext/dashboard/l;)Landroid/database/Cursor;
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/l;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 536
    iget-boolean v0, p0, Lcom/android/settings_ext/dashboard/l;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/dashboard/l;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings_ext/dashboard/l;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .line 537
    :goto_0
    return v0

    :cond_1
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/l;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v0

    goto :goto_0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 542
    iget-boolean v0, p0, Lcom/android/settings_ext/dashboard/l;->mDataValid:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings_ext/dashboard/l;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 543
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/l;->mCursor:Landroid/database/Cursor;

    const/4 v2, 0x1

    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 544
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/l;->mCursor:Landroid/database/Cursor;

    const/4 v3, 0x2

    invoke-interface {v0, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 545
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/l;->mCursor:Landroid/database/Cursor;

    const/4 v4, 0x3

    invoke-interface {v0, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 546
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/l;->mCursor:Landroid/database/Cursor;

    const/4 v5, 0x4

    invoke-interface {v0, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 547
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/l;->mCursor:Landroid/database/Cursor;

    const/16 v6, 0x8

    invoke-interface {v0, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    .line 548
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/l;->mCursor:Landroid/database/Cursor;

    const/4 v7, 0x6

    invoke-interface {v0, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 550
    iget-object v7, p0, Lcom/android/settings_ext/dashboard/l;->mCursor:Landroid/database/Cursor;

    const/16 v8, 0xa

    invoke-interface {v7, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    .line 552
    iget-object v7, p0, Lcom/android/settings_ext/dashboard/l;->mCursor:Landroid/database/Cursor;

    const/16 v9, 0xd

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 556
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 557
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/l;->RC:Ljava/util/HashMap;

    invoke-virtual {v0, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    .line 558
    if-nez v0, :cond_3

    .line 560
    :try_start_0
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/l;->mContext:Landroid/content/Context;

    const/4 v9, 0x0

    invoke-virtual {v0, v8, v9}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 565
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/l;->RC:Ljava/util/HashMap;

    invoke-virtual {v0, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 571
    :goto_0
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const v6, 0x7f02007a

    .line 574
    :goto_1
    new-instance v0, Lcom/android/settings_ext/dashboard/k;

    invoke-direct/range {v0 .. v7}, Lcom/android/settings_ext/dashboard/k;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 577
    :goto_2
    return-object v0

    .line 561
    :catch_0
    move-exception v0

    .line 562
    const-string v0, "SearchResultsSummary"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot create Context for package: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 563
    goto :goto_2

    .line 568
    :cond_0
    iget-object v1, p0, Lcom/android/settings_ext/dashboard/l;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 571
    :cond_1
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    goto :goto_1

    :cond_2
    move-object v0, v1

    .line 577
    goto :goto_2

    :cond_3
    move-object v1, v0

    goto :goto_0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 582
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    .prologue
    const v4, 0x7f02007a

    .line 587
    iget-boolean v0, p0, Lcom/android/settings_ext/dashboard/l;->mDataValid:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    .line 588
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "this should only be called when the cursor is valid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 591
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/l;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 592
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

    .line 599
    :cond_1
    if-nez p2, :cond_2

    .line 600
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/l;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f0400f2

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 605
    :cond_2
    const v0, 0x7f100052

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 606
    const v1, 0x7f100051

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 608
    invoke-virtual {p0, p1}, Lcom/android/settings_ext/dashboard/l;->getItem(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/settings_ext/dashboard/k;

    .line 609
    iget-object v3, v2, Lcom/android/settings_ext/dashboard/k;->title:Ljava/lang/String;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 611
    iget v0, v2, Lcom/android/settings_ext/dashboard/k;->iconResId:I

    if-eq v0, v4, :cond_3

    .line 612
    iget-object v0, v2, Lcom/android/settings_ext/dashboard/k;->context:Landroid/content/Context;

    .line 615
    :try_start_0
    iget v3, v2, Lcom/android/settings_ext/dashboard/k;->iconResId:I

    invoke-virtual {v0, v3}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 616
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    :goto_0
    return-object p2

    .line 617
    :catch_0
    move-exception v0

    .line 619
    const-string v0, "SearchResultsSummary"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot load Drawable for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v2, Lcom/android/settings_ext/dashboard/k;->title:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 622
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 623
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public swapCursor(Landroid/database/Cursor;)Landroid/database/Cursor;
    .locals 2

    .prologue
    .line 519
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/l;->mCursor:Landroid/database/Cursor;

    if-ne p1, v0, :cond_0

    .line 520
    const/4 v0, 0x0

    .line 531
    :goto_0
    return-object v0

    .line 522
    :cond_0
    iget-object v0, p0, Lcom/android/settings_ext/dashboard/l;->mCursor:Landroid/database/Cursor;

    .line 523
    iput-object p1, p0, Lcom/android/settings_ext/dashboard/l;->mCursor:Landroid/database/Cursor;

    .line 524
    if-eqz p1, :cond_1

    .line 525
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/settings_ext/dashboard/l;->mDataValid:Z

    .line 526
    invoke-virtual {p0}, Lcom/android/settings_ext/dashboard/l;->notifyDataSetChanged()V

    goto :goto_0

    .line 528
    :cond_1
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings_ext/dashboard/l;->mDataValid:Z

    .line 529
    invoke-virtual {p0}, Lcom/android/settings_ext/dashboard/l;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
