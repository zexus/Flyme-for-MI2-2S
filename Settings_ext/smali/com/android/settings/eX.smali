.class public Lcom/android/settings/eX;
.super Landroid/widget/BaseAdapter;
.source "NotificationAppListSettings.java"


# instance fields
.field private S:Ljava/util/List;

.field bA:Landroid/view/View$OnClickListener;

.field final synthetic th:Lcom/android/settings/NotificationAppListSettings;


# direct methods
.method public constructor <init>(Lcom/android/settings/NotificationAppListSettings;)V
    .locals 1

    .prologue
    .line 275
    iput-object p1, p0, Lcom/android/settings/eX;->th:Lcom/android/settings/NotificationAppListSettings;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 362
    new-instance v0, Lcom/android/settings/eY;

    invoke-direct {v0, p0}, Lcom/android/settings/eY;-><init>(Lcom/android/settings/eX;)V

    iput-object v0, p0, Lcom/android/settings/eX;->bA:Landroid/view/View$OnClickListener;

    .line 276
    return-void
.end method


# virtual methods
.method public R(I)Lcom/android/settings/fa;
    .locals 1

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/settings/eX;->S:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fa;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/settings/eX;->S:Ljava/util/List;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/eX;->S:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0
.end method

.method public synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 274
    invoke-virtual {p0, p1}, Lcom/android/settings/eX;->R(I)Lcom/android/settings/fa;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 309
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/settings/eX;->S:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fa;

    invoke-static {v0}, Lcom/android/settings/fa;->c(Lcom/android/settings/fa;)I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 314
    iget-object v0, p0, Lcom/android/settings/eX;->S:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fa;

    .line 316
    invoke-static {v0}, Lcom/android/settings/fa;->c(Lcom/android/settings/fa;)I

    move-result v1

    if-nez v1, :cond_4

    .line 317
    if-nez p2, :cond_2

    .line 318
    new-instance v2, Lcom/android/settings/eZ;

    invoke-direct {v2, p0, v4}, Lcom/android/settings/eZ;-><init>(Lcom/android/settings/eX;Lcom/android/settings/eT;)V

    .line 319
    iget-object v1, p0, Lcom/android/settings/eX;->th:Lcom/android/settings/NotificationAppListSettings;

    invoke-static {v1}, Lcom/android/settings/NotificationAppListSettings;->g(Lcom/android/settings/NotificationAppListSettings;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f040107

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 320
    const v1, 0x1020006

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, v2, Lcom/android/settings/eZ;->icon:Landroid/widget/ImageView;

    .line 321
    const v1, 0x1020016

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/settings/eZ;->title:Landroid/widget/TextView;

    .line 322
    const v1, 0x1020010

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/settings/eZ;->summary:Landroid/widget/TextView;

    .line 323
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 328
    :goto_0
    invoke-static {v0}, Lcom/android/settings/fa;->d(Lcom/android/settings/fa;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 329
    invoke-static {v0, v5}, Lcom/android/settings/fa;->b(Lcom/android/settings/fa;Z)Z

    .line 330
    iget-object v2, p0, Lcom/android/settings/eX;->th:Lcom/android/settings/NotificationAppListSettings;

    invoke-static {v2}, Lcom/android/settings/NotificationAppListSettings;->d(Lcom/android/settings/NotificationAppListSettings;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/settings/fa;->fK()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/util/NotificationFilterHelper;->initUserSetting(Landroid/content/Context;Ljava/lang/String;)V

    .line 333
    :cond_0
    invoke-static {v0}, Lcom/android/settings/fa;->e(Lcom/android/settings/fa;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 334
    iget-object v2, v1, Lcom/android/settings/eZ;->summary:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 341
    :goto_1
    iget-object v2, p0, Lcom/android/settings/eX;->th:Lcom/android/settings/NotificationAppListSettings;

    invoke-static {v2}, Lcom/android/settings/NotificationAppListSettings;->h(Lcom/android/settings/NotificationAppListSettings;)Lcom/android/settings/w;

    move-result-object v2

    iget-object v3, v1, Lcom/android/settings/eZ;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0}, Lcom/android/settings/fa;->fK()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lcom/android/settings/w;->a(Landroid/widget/ImageView;Ljava/lang/String;)Z

    .line 342
    iget-object v1, v1, Lcom/android/settings/eZ;->title:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/settings/fa;->b(Lcom/android/settings/fa;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 343
    const v1, 0x7f090045

    invoke-virtual {p2, v1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 344
    iget-object v0, p0, Lcom/android/settings/eX;->bA:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 359
    :cond_1
    :goto_2
    return-object p2

    .line 325
    :cond_2
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/eZ;

    goto :goto_0

    .line 337
    :cond_3
    iget-object v2, v1, Lcom/android/settings/eZ;->summary:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/settings/fa;->e(Lcom/android/settings/fa;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 338
    iget-object v2, v1, Lcom/android/settings/eZ;->summary:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 346
    :cond_4
    invoke-static {v0}, Lcom/android/settings/fa;->c(Lcom/android/settings/fa;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1

    .line 347
    if-nez p2, :cond_5

    .line 348
    new-instance v2, Lcom/android/settings/eZ;

    invoke-direct {v2, p0, v4}, Lcom/android/settings/eZ;-><init>(Lcom/android/settings/eX;Lcom/android/settings/eT;)V

    .line 349
    iget-object v1, p0, Lcom/android/settings/eX;->th:Lcom/android/settings/NotificationAppListSettings;

    invoke-static {v1}, Lcom/android/settings/NotificationAppListSettings;->g(Lcom/android/settings/NotificationAppListSettings;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f040106

    invoke-virtual {v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 350
    const v1, 0x7f100294

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v2, Lcom/android/settings/eZ;->tk:Landroid/widget/TextView;

    .line 351
    invoke-virtual {p2, v5}, Landroid/view/View;->setEnabled(Z)V

    .line 352
    invoke-virtual {p2, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    move-object v1, v2

    .line 356
    :goto_3
    iget-object v1, v1, Lcom/android/settings/eZ;->tk:Landroid/widget/TextView;

    invoke-static {v0}, Lcom/android/settings/fa;->b(Lcom/android/settings/fa;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 354
    :cond_5
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/eZ;

    goto :goto_3
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 299
    const/4 v0, 0x2

    return v0
.end method

.method public setItems(Ljava/util/List;)V
    .locals 0

    .prologue
    .line 284
    iput-object p1, p0, Lcom/android/settings/eX;->S:Ljava/util/List;

    .line 285
    return-void
.end method
