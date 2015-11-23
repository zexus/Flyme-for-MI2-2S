.class Lcom/android/settings/ce;
.super Landroid/widget/ArrayAdapter;
.source "DreamSettings.java"


# instance fields
.field final synthetic kt:Lcom/android/settings/DreamSettings;

.field private final mInflater:Landroid/view/LayoutInflater;


# direct methods
.method public constructor <init>(Lcom/android/settings/DreamSettings;Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 285
    iput-object p1, p0, Lcom/android/settings/ce;->kt:Lcom/android/settings/DreamSettings;

    .line 286
    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 287
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/settings/ce;->mInflater:Landroid/view/LayoutInflater;

    .line 288
    return-void
.end method

.method static synthetic a(Lcom/android/settings/ce;Lcom/android/settings/bY;)V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0, p1}, Lcom/android/settings/ce;->c(Lcom/android/settings/bY;)V

    return-void
.end method

.method private c(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/settings/ce;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f040055

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 334
    const v1, 0x1020018

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 335
    new-instance v2, Lcom/android/settings/ch;

    invoke-direct {v2, p0, v0}, Lcom/android/settings/ch;-><init>(Lcom/android/settings/ce;Landroid/view/View;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 341
    return-object v0
.end method

.method private c(Lcom/android/settings/bY;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 353
    invoke-direct {p0}, Lcom/android/settings/ce;->dk()Lcom/android/settings/bY;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    :goto_0
    return-void

    :cond_0
    move v1, v2

    .line 355
    :goto_1
    invoke-virtual {p0}, Lcom/android/settings/ce;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 356
    invoke-virtual {p0, v1}, Lcom/android/settings/ce;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bY;

    iput-boolean v2, v0, Lcom/android/settings/bY;->kl:Z

    .line 355
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 358
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/settings/bY;->kl:Z

    .line 359
    iget-object v0, p0, Lcom/android/settings/ce;->kt:Lcom/android/settings/DreamSettings;

    invoke-static {v0}, Lcom/android/settings/DreamSettings;->a(Lcom/android/settings/DreamSettings;)Lcom/android/settings/bX;

    move-result-object v0

    iget-object v1, p1, Lcom/android/settings/bY;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Lcom/android/settings/bX;->a(Landroid/content/ComponentName;)V

    .line 360
    invoke-virtual {p0}, Lcom/android/settings/ce;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method private dk()Lcom/android/settings/bY;
    .locals 3

    .prologue
    .line 345
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/android/settings/ce;->getCount()I

    move-result v0

    if-ge v1, v0, :cond_1

    .line 346
    invoke-virtual {p0, v1}, Lcom/android/settings/ce;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bY;

    .line 347
    iget-boolean v2, v0, Lcom/android/settings/bY;->kl:Z

    if-eqz v2, :cond_0

    .line 350
    :goto_1
    return-object v0

    .line 345
    :cond_0
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 350
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v4, 0x4

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 292
    invoke-virtual {p0, p1}, Lcom/android/settings/ce;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/settings/bY;

    .line 293
    const-string v1, "getView(%s)"

    new-array v5, v2, [Ljava/lang/Object;

    iget-object v6, v0, Lcom/android/settings/bY;->kk:Ljava/lang/CharSequence;

    aput-object v6, v5, v3

    invoke-static {v1, v5}, Lcom/android/settings/DreamSettings;->b(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 294
    if-eqz p2, :cond_0

    .line 295
    :goto_0
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 298
    const v1, 0x1020006

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iget-object v5, v0, Lcom/android/settings/bY;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 301
    const v1, 0x1020016

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v5, v0, Lcom/android/settings/bY;->kk:Ljava/lang/CharSequence;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 304
    const v1, 0x1020019

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RadioButton;

    .line 305
    iget-boolean v5, v0, Lcom/android/settings/bY;->kl:Z

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setChecked(Z)V

    .line 306
    new-instance v5, Lcom/android/settings/cf;

    invoke-direct {v5, p0, p2}, Lcom/android/settings/cf;-><init>(Lcom/android/settings/ce;Landroid/view/View;)V

    invoke-virtual {v1, v5}, Landroid/widget/RadioButton;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 314
    iget-object v1, v0, Lcom/android/settings/bY;->km:Landroid/content/ComponentName;

    if-eqz v1, :cond_1

    .line 315
    :goto_1
    const v1, 0x7f1000c4

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 316
    if-eqz v2, :cond_2

    move v1, v3

    :goto_2
    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 318
    const v1, 0x102001a

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 319
    if-eqz v2, :cond_3

    :goto_3
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 320
    iget-boolean v2, v0, Lcom/android/settings/bY;->kl:Z

    if-eqz v2, :cond_4

    const/high16 v2, 0x3f800000    # 1.0f

    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 321
    iget-boolean v2, v0, Lcom/android/settings/bY;->kl:Z

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 322
    iget-boolean v0, v0, Lcom/android/settings/bY;->kl:Z

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setFocusable(Z)V

    .line 323
    new-instance v0, Lcom/android/settings/cg;

    invoke-direct {v0, p0, p2}, Lcom/android/settings/cg;-><init>(Lcom/android/settings/ce;Landroid/view/View;)V

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    return-object p2

    .line 294
    :cond_0
    invoke-direct {p0, p3}, Lcom/android/settings/ce;->c(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    goto :goto_0

    :cond_1
    move v2, v3

    .line 314
    goto :goto_1

    :cond_2
    move v1, v4

    .line 316
    goto :goto_2

    :cond_3
    move v3, v4

    .line 319
    goto :goto_3

    .line 320
    :cond_4
    const v2, 0x3ecccccd    # 0.4f

    goto :goto_4
.end method
