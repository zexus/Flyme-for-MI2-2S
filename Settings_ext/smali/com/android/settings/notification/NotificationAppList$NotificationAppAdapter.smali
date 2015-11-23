.class Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;
.super Landroid/widget/ArrayAdapter;
.source "NotificationAppList.java"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field final synthetic aeO:Lcom/android/settings/notification/NotificationAppList;


# direct methods
.method public constructor <init>(Lcom/android/settings/notification/NotificationAppList;Landroid/content/Context;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 213
    iput-object p1, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->aeO:Lcom/android/settings/notification/NotificationAppList;

    .line 214
    invoke-direct {p0, p2, v0, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II)V

    .line 215
    return-void
.end method

.method private a(Lcom/android/settings/notification/NotificationAppList$AppRow;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 309
    iget-boolean v0, p1, Lcom/android/settings/notification/NotificationAppList$AppRow;->aeQ:Z

    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->aeO:Lcom/android/settings/notification/NotificationAppList;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppList;->b(Lcom/android/settings/notification/NotificationAppList;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0909ee

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 320
    :cond_0
    :goto_0
    return-object v0

    .line 312
    :cond_1
    iget-boolean v0, p1, Lcom/android/settings/notification/NotificationAppList$AppRow;->aeR:Z

    if-nez v0, :cond_2

    iget-boolean v0, p1, Lcom/android/settings/notification/NotificationAppList$AppRow;->aeS:Z

    if-nez v0, :cond_2

    .line 313
    const-string v0, ""

    goto :goto_0

    .line 315
    :cond_2
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->aeO:Lcom/android/settings/notification/NotificationAppList;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppList;->b(Lcom/android/settings/notification/NotificationAppList;)Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f0909ef

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 316
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->aeO:Lcom/android/settings/notification/NotificationAppList;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationAppList;->b(Lcom/android/settings/notification/NotificationAppList;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0909f0

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 317
    iget-boolean v2, p1, Lcom/android/settings/notification/NotificationAppList$AppRow;->aeR:Z

    iget-boolean v3, p1, Lcom/android/settings/notification/NotificationAppList$AppRow;->aeS:Z

    if-eq v2, v3, :cond_3

    .line 318
    iget-boolean v2, p1, Lcom/android/settings/notification/NotificationAppList$AppRow;->aeR:Z

    if-nez v2, :cond_0

    move-object v0, v1

    goto :goto_0

    .line 320
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->aeO:Lcom/android/settings/notification/NotificationAppList;

    invoke-static {v2}, Lcom/android/settings/notification/NotificationAppList;->b(Lcom/android/settings/notification/NotificationAppList;)Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f0909f9

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private a(Landroid/view/ViewGroup;Z)V
    .locals 3

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x2

    .line 268
    if-eqz p2, :cond_0

    .line 269
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 270
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 275
    :goto_0
    return-void

    .line 272
    :cond_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 273
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;Lcom/android/settings/notification/NotificationAppList$Row;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 251
    instance-of v0, p2, Lcom/android/settings/notification/NotificationAppList$AppRow;

    if-nez v0, :cond_0

    .line 252
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->aeO:Lcom/android/settings/notification/NotificationAppList;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppList;->a(Lcom/android/settings/notification/NotificationAppList;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f04014a

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 264
    :goto_0
    return-object v1

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->aeO:Lcom/android/settings/notification/NotificationAppList;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppList;->a(Lcom/android/settings/notification/NotificationAppList;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f040097

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 255
    new-instance v2, Lcom/android/settings/notification/NotificationAppList$ViewHolder;

    const/4 v0, 0x0

    invoke-direct {v2, v0}, Lcom/android/settings/notification/NotificationAppList$ViewHolder;-><init>(Lcom/android/settings/notification/NotificationAppList$1;)V

    move-object v0, v1

    .line 256
    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, v2, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->aeX:Landroid/view/ViewGroup;

    .line 257
    iget-object v0, v2, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->aeX:Landroid/view/ViewGroup;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 258
    iget-object v0, v2, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->aeX:Landroid/view/ViewGroup;

    new-instance v3, Landroid/animation/LayoutTransition;

    invoke-direct {v3}, Landroid/animation/LayoutTransition;-><init>()V

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->setLayoutTransition(Landroid/animation/LayoutTransition;)V

    .line 259
    const v0, 0x1020006

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v2, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 260
    const v0, 0x1020016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->title:Landroid/widget/TextView;

    .line 261
    const v0, 0x1020014

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v2, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->aeY:Landroid/widget/TextView;

    .line 262
    const v0, 0x7f100016

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v2, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->aeZ:Landroid/view/View;

    .line 263
    invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public a(Landroid/view/View;Lcom/android/settings/notification/NotificationAppList$Row;Z)V
    .locals 5

    .prologue
    const/16 v2, 0x8

    const/4 v3, 0x0

    .line 278
    instance-of v0, p2, Lcom/android/settings/notification/NotificationAppList$AppRow;

    if-nez v0, :cond_0

    .line 280
    const v0, 0x1020016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 281
    iget-object v1, p2, Lcom/android/settings/notification/NotificationAppList$Row;->aeW:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 306
    :goto_0
    return-void

    .line 285
    :cond_0
    check-cast p2, Lcom/android/settings/notification/NotificationAppList$AppRow;

    .line 286
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/NotificationAppList$ViewHolder;

    .line 287
    iget-object v1, v0, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->aeX:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p3}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->a(Landroid/view/ViewGroup;Z)V

    .line 288
    iget-object v4, v0, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->aeZ:Landroid/view/View;

    iget-boolean v1, p2, Lcom/android/settings/notification/NotificationAppList$AppRow;->aeT:Z

    if-eqz v1, :cond_1

    move v1, v2

    :goto_1
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 289
    iget-object v1, v0, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->aeX:Landroid/view/ViewGroup;

    new-instance v4, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter$1;

    invoke-direct {v4, p0, p2}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter$1;-><init>(Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;Lcom/android/settings/notification/NotificationAppList$AppRow;)V

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 300
    iget-object v1, v0, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->aeX:Landroid/view/ViewGroup;

    invoke-direct {p0, v1, p3}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->a(Landroid/view/ViewGroup;Z)V

    .line 301
    iget-object v1, v0, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v4, p2, Lcom/android/settings/notification/NotificationAppList$AppRow;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 302
    iget-object v1, v0, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->title:Landroid/widget/TextView;

    iget-object v4, p2, Lcom/android/settings/notification/NotificationAppList$AppRow;->label:Ljava/lang/CharSequence;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 303
    invoke-direct {p0, p2}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->a(Lcom/android/settings/notification/NotificationAppList$AppRow;)Ljava/lang/String;

    move-result-object v1

    .line 304
    iget-object v4, v0, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->aeY:Landroid/widget/TextView;

    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 305
    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$ViewHolder;->aeY:Landroid/widget/TextView;

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    :goto_2
    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v1, v3

    .line 288
    goto :goto_1

    :cond_2
    move v3, v2

    .line 305
    goto :goto_2
.end method

.method public getItemId(I)J
    .locals 2

    .prologue
    .line 224
    int-to-long v0, p1

    return-wide v0
.end method

.method public getItemViewType(I)I
    .locals 1

    .prologue
    .line 234
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/NotificationAppList$Row;

    .line 235
    instance-of v0, v0, Lcom/android/settings/notification/NotificationAppList$AppRow;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPositionForSection(I)I
    .locals 5

    .prologue
    const/4 v3, 0x0

    .line 330
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->aeO:Lcom/android/settings/notification/NotificationAppList;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppList;->c(Lcom/android/settings/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 331
    invoke-virtual {p0}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->getCount()I

    move-result v4

    move v2, v3

    .line 332
    :goto_0
    if-ge v2, v4, :cond_1

    .line 333
    invoke-virtual {p0, v2}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/notification/NotificationAppList$Row;

    .line 334
    iget-object v1, v1, Lcom/android/settings/notification/NotificationAppList$Row;->aeW:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move v0, v2

    .line 338
    :goto_1
    return v0

    .line 332
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    .line 338
    goto :goto_1
.end method

.method public getSectionForPosition(I)I
    .locals 2

    .prologue
    .line 343
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/NotificationAppList$Row;

    .line 344
    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->aeO:Lcom/android/settings/notification/NotificationAppList;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationAppList;->c(Lcom/android/settings/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v1

    iget-object v0, v0, Lcom/android/settings/notification/NotificationAppList$Row;->aeW:Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 2

    .prologue
    .line 325
    iget-object v0, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->aeO:Lcom/android/settings/notification/NotificationAppList;

    invoke-static {v0}, Lcom/android/settings/notification/NotificationAppList;->c(Lcom/android/settings/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->aeO:Lcom/android/settings/notification/NotificationAppList;

    invoke-static {v1}, Lcom/android/settings/notification/NotificationAppList;->c(Lcom/android/settings/notification/NotificationAppList;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 2

    .prologue
    .line 239
    invoke-virtual {p0, p1}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/notification/NotificationAppList$Row;

    .line 241
    if-nez p2, :cond_0

    .line 242
    invoke-virtual {p0, p3, v0}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->a(Landroid/view/ViewGroup;Lcom/android/settings/notification/NotificationAppList$Row;)Landroid/view/View;

    move-result-object p2

    .line 246
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/settings/notification/NotificationAppList$NotificationAppAdapter;->a(Landroid/view/View;Lcom/android/settings/notification/NotificationAppList$Row;Z)V

    .line 247
    return-object p2
.end method

.method public getViewTypeCount()I
    .locals 1

    .prologue
    .line 229
    const/4 v0, 0x2

    return v0
.end method

.method public hasStableIds()Z
    .locals 1

    .prologue
    .line 219
    const/4 v0, 0x1

    return v0
.end method
