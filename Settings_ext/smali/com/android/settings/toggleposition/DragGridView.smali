.class public Lcom/android/settings/toggleposition/DragGridView;
.super Landroid/widget/GridView;
.source "DragGridView.java"


# instance fields
.field private GT:I

.field private Re:I

.field private akA:I

.field private akB:I

.field private akC:Ljava/lang/Runnable;

.field private akD:I

.field private akE:I

.field private akF:I

.field private akG:I

.field akH:Ljava/lang/Runnable;

.field private akf:J

.field private akg:Z

.field private akh:I

.field private aki:I

.field private akj:I

.field private akk:I

.field private akl:I

.field private akm:I

.field private akn:Landroid/view/View;

.field private ako:Landroid/widget/ImageView;

.field private akp:Landroid/view/WindowManager$LayoutParams;

.field private akq:Landroid/graphics/Bitmap;

.field private akr:I

.field private aks:I

.field private akt:I

.field private aku:I

.field private akv:I

.field private akw:Z

.field private akx:Lcom/android/settings/toggleposition/b;

.field private aky:I

.field private akz:Z

.field private mHandler:Landroid/os/Handler;

.field private mWindowManager:Landroid/view/WindowManager;

.field private sK:Landroid/os/Vibrator;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/settings/toggleposition/DragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 120
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 123
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/settings/toggleposition/DragGridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 124
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, -0x1

    .line 127
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/GridView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akf:J

    .line 44
    iput-boolean v2, p0, Lcom/android/settings/toggleposition/DragGridView;->akg:Z

    .line 53
    iput v4, p0, Lcom/android/settings/toggleposition/DragGridView;->akl:I

    .line 55
    iput v4, p0, Lcom/android/settings/toggleposition/DragGridView;->akm:I

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akn:Landroid/view/View;

    .line 108
    iput-boolean v3, p0, Lcom/android/settings/toggleposition/DragGridView;->akw:Z

    .line 116
    iput v3, p0, Lcom/android/settings/toggleposition/DragGridView;->GT:I

    .line 141
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->mHandler:Landroid/os/Handler;

    .line 144
    new-instance v0, Lcom/android/settings/toggleposition/c;

    invoke-direct {v0, p0}, Lcom/android/settings/toggleposition/c;-><init>(Lcom/android/settings/toggleposition/DragGridView;)V

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akC:Ljava/lang/Runnable;

    .line 434
    iput v2, p0, Lcom/android/settings/toggleposition/DragGridView;->akD:I

    .line 435
    iput v2, p0, Lcom/android/settings/toggleposition/DragGridView;->akE:I

    .line 436
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akF:I

    .line 437
    const/4 v0, -0x2

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akG:I

    .line 438
    new-instance v0, Lcom/android/settings/toggleposition/d;

    invoke-direct {v0, p0}, Lcom/android/settings/toggleposition/d;-><init>(Lcom/android/settings/toggleposition/DragGridView;)V

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akH:Ljava/lang/Runnable;

    .line 128
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->GT:I

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->GT:I

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->GT:I

    iget v3, p0, Lcom/android/settings/toggleposition/DragGridView;->GT:I

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/toggleposition/DragGridView;->setPadding(IIII)V

    .line 129
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->GT:I

    invoke-virtual {p0, v0}, Lcom/android/settings/toggleposition/DragGridView;->setVerticalSpacing(I)V

    .line 130
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->GT:I

    invoke-virtual {p0, v0}, Lcom/android/settings/toggleposition/DragGridView;->setHorizontalSpacing(I)V

    .line 131
    const-string v0, "vibrator"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->sK:Landroid/os/Vibrator;

    .line 132
    const-string v0, "window"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/WindowManager;

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0d000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akv:I

    .line 134
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f080008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akB:I

    .line 136
    iget-boolean v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akz:Z

    if-nez v0, :cond_0

    .line 137
    iput v4, p0, Lcom/android/settings/toggleposition/DragGridView;->Re:I

    .line 139
    :cond_0
    return-void
.end method

.method static synthetic a(Lcom/android/settings/toggleposition/DragGridView;I)I
    .locals 0

    .prologue
    .line 33
    iput p1, p0, Lcom/android/settings/toggleposition/DragGridView;->akl:I

    return p1
.end method

.method private a(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;
    .locals 6

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 489
    const-string v0, "translationX"

    new-array v1, v3, [F

    aput p2, v1, v4

    aput p3, v1, v5

    invoke-static {p1, v0, v1}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 491
    const-string v1, "translationY"

    new-array v2, v3, [F

    aput p4, v2, v4

    aput p5, v2, v5

    invoke-static {p1, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 493
    new-instance v2, Landroid/animation/AnimatorSet;

    invoke-direct {v2}, Landroid/animation/AnimatorSet;-><init>()V

    .line 494
    new-array v3, v3, [Landroid/animation/Animator;

    aput-object v0, v3, v4

    aput-object v1, v3, v5

    invoke-virtual {v2, v3}, Landroid/animation/AnimatorSet;->playTogether([Landroid/animation/Animator;)V

    .line 495
    return-object v2
.end method

.method static synthetic a(Lcom/android/settings/toggleposition/DragGridView;)Landroid/os/Vibrator;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->sK:Landroid/os/Vibrator;

    return-object v0
.end method

.method private a(Landroid/graphics/Bitmap;II)V
    .locals 4

    .prologue
    const/4 v3, -0x2

    .line 377
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akp:Landroid/view/WindowManager$LayoutParams;

    .line 378
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akp:Landroid/view/WindowManager$LayoutParams;

    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 379
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x33

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 380
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akp:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->aks:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->aku:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 381
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akp:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->akr:I

    sub-int v1, p3, v1

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->akt:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->akv:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 382
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akp:Landroid/view/WindowManager$LayoutParams;

    const v1, 0x3f666666    # 0.9f

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->alpha:F

    .line 383
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akp:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 384
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akp:Landroid/view/WindowManager$LayoutParams;

    iput v3, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 385
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akp:Landroid/view/WindowManager$LayoutParams;

    const/16 v1, 0x18

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 388
    new-instance v0, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->ako:Landroid/widget/ImageView;

    .line 389
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->ako:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 390
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->ako:Landroid/widget/ImageView;

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundColor(I)V

    .line 391
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->ako:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/toggleposition/DragGridView;->akp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 392
    return-void
.end method

.method static synthetic a(Lcom/android/settings/toggleposition/DragGridView;II)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/android/settings/toggleposition/DragGridView;->q(II)V

    return-void
.end method

.method static synthetic a(Lcom/android/settings/toggleposition/DragGridView;Landroid/graphics/Bitmap;II)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/toggleposition/DragGridView;->a(Landroid/graphics/Bitmap;II)V

    return-void
.end method

.method private a(Landroid/view/View;II)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 318
    if-nez p1, :cond_1

    .line 331
    :cond_0
    :goto_0
    return v0

    .line 321
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLeft()I

    move-result v1

    .line 322
    invoke-virtual {p1}, Landroid/view/View;->getTop()I

    move-result v2

    .line 323
    if-lt p2, v1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    add-int/2addr v1, v3

    if-gt p2, v1, :cond_0

    .line 327
    if-lt p3, v2, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v1, v2

    if-gt p3, v1, :cond_0

    .line 331
    const/4 v0, 0x1

    goto :goto_0
.end method

.method static synthetic a(Lcom/android/settings/toggleposition/DragGridView;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/settings/toggleposition/DragGridView;->akg:Z

    return p1
.end method

.method static synthetic b(Lcom/android/settings/toggleposition/DragGridView;)Landroid/view/View;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akn:Landroid/view/View;

    return-object v0
.end method

.method static synthetic b(Lcom/android/settings/toggleposition/DragGridView;Z)Z
    .locals 0

    .prologue
    .line 33
    iput-boolean p1, p0, Lcom/android/settings/toggleposition/DragGridView;->akw:Z

    return p1
.end method

.method static synthetic c(Lcom/android/settings/toggleposition/DragGridView;)Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akq:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method private static clamp(III)I
    .locals 0

    .prologue
    .line 358
    if-ge p0, p1, :cond_0

    .line 363
    :goto_0
    return p1

    .line 360
    :cond_0
    if-lt p0, p2, :cond_1

    .line 361
    add-int/lit8 p1, p2, -0x1

    goto :goto_0

    :cond_1
    move p1, p0

    .line 363
    goto :goto_0
.end method

.method static synthetic d(Lcom/android/settings/toggleposition/DragGridView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akh:I

    return v0
.end method

.method static synthetic e(Lcom/android/settings/toggleposition/DragGridView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->aki:I

    return v0
.end method

.method static synthetic f(Lcom/android/settings/toggleposition/DragGridView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akD:I

    return v0
.end method

.method static synthetic g(Lcom/android/settings/toggleposition/DragGridView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akE:I

    return v0
.end method

.method static synthetic h(Lcom/android/settings/toggleposition/DragGridView;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akl:I

    return v0
.end method

.method private o(II)V
    .locals 3

    .prologue
    .line 410
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akp:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->aks:I

    sub-int v1, p1, v1

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->aku:I

    add-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 411
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akp:Landroid/view/WindowManager$LayoutParams;

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->akr:I

    sub-int v1, p2, v1

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->akt:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->akv:I

    sub-int/2addr v1, v2

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 412
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->ako:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/android/settings/toggleposition/DragGridView;->akp:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v0, v1, v2}, Landroid/view/WindowManager;->updateViewLayout(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 413
    invoke-direct {p0, p1, p2}, Lcom/android/settings/toggleposition/DragGridView;->p(II)V

    .line 416
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akr:I

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->akn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getHeight()I

    move-result v1

    iget-object v2, p0, Lcom/android/settings/toggleposition/DragGridView;->akn:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    if-le v0, v1, :cond_1

    .line 417
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akD:I

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->akF:I

    if-eq v0, v1, :cond_0

    .line 418
    invoke-direct {p0}, Lcom/android/settings/toggleposition/DragGridView;->rS()V

    .line 419
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akF:I

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akD:I

    .line 420
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akH:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/settings/toggleposition/DragGridView;->post(Ljava/lang/Runnable;)Z

    .line 432
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akr:I

    sub-int v0, p2, v0

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->akn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    if-ge v0, v1, :cond_2

    .line 423
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akD:I

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->akG:I

    if-eq v0, v1, :cond_0

    .line 424
    invoke-direct {p0}, Lcom/android/settings/toggleposition/DragGridView;->rS()V

    .line 425
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akG:I

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akD:I

    .line 426
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akH:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lcom/android/settings/toggleposition/DragGridView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 429
    :cond_2
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akE:I

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akD:I

    .line 430
    invoke-direct {p0}, Lcom/android/settings/toggleposition/DragGridView;->rS()V

    goto :goto_0
.end method

.method private p(II)V
    .locals 3

    .prologue
    .line 458
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/toggleposition/DragGridView;->pointToPosition(II)I

    move-result v0

    .line 461
    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->akl:I

    if-eq v0, v1, :cond_0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-boolean v1, p0, Lcom/android/settings/toggleposition/DragGridView;->akw:Z

    if-eqz v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->akx:Lcom/android/settings/toggleposition/b;

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->akl:I

    invoke-interface {v1, v2, v0}, Lcom/android/settings/toggleposition/b;->n(II)V

    .line 463
    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->akx:Lcom/android/settings/toggleposition/b;

    invoke-interface {v1, v0}, Lcom/android/settings/toggleposition/b;->cs(I)V

    .line 464
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    .line 465
    new-instance v2, Lcom/android/settings/toggleposition/e;

    invoke-direct {v2, p0, v1, v0}, Lcom/android/settings/toggleposition/e;-><init>(Lcom/android/settings/toggleposition/DragGridView;Landroid/view/ViewTreeObserver;I)V

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 476
    :cond_0
    return-void
.end method

.method private q(II)V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 505
    if-le p2, p1, :cond_1

    const/4 v0, 0x1

    .line 506
    :goto_0
    new-instance v6, Ljava/util/LinkedList;

    invoke-direct {v6}, Ljava/util/LinkedList;-><init>()V

    .line 507
    if-eqz v0, :cond_3

    .line 508
    :goto_1
    if-ge p1, p2, :cond_6

    .line 509
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/settings/toggleposition/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 511
    if-eqz v1, :cond_0

    .line 512
    add-int/lit8 v0, p1, 0x1

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->Re:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_2

    .line 513
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->Re:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v4, v0

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/toggleposition/DragGridView;->a(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 508
    :cond_0
    :goto_2
    add-int/lit8 p1, p1, 0x1

    goto :goto_1

    .line 505
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 517
    :cond_2
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v2, v0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/toggleposition/DragGridView;->a(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 523
    :cond_3
    :goto_3
    if-le p1, p2, :cond_6

    .line 524
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getFirstVisiblePosition()I

    move-result v0

    sub-int v0, p1, v0

    invoke-virtual {p0, v0}, Lcom/android/settings/toggleposition/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 525
    if-eqz v1, :cond_4

    .line 526
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->Re:I

    add-int/2addr v0, p1

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->Re:I

    rem-int/2addr v0, v2

    if-nez v0, :cond_5

    .line 527
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->Re:I

    add-int/lit8 v2, v2, -0x1

    mul-int/2addr v0, v2

    int-to-float v2, v0

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v0

    neg-int v0, v0

    int-to-float v4, v0

    move-object v0, p0

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/toggleposition/DragGridView;->a(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_4
    :goto_4
    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 531
    :cond_5
    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v0

    neg-int v0, v0

    int-to-float v2, v0

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/toggleposition/DragGridView;->a(Landroid/view/View;FFFF)Landroid/animation/AnimatorSet;

    move-result-object v0

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 538
    :cond_6
    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    .line 539
    invoke-virtual {v0, v6}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 540
    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v2, v3}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 541
    new-instance v1, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v1}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 542
    new-instance v1, Lcom/android/settings/toggleposition/f;

    invoke-direct {v1, p0}, Lcom/android/settings/toggleposition/f;-><init>(Lcom/android/settings/toggleposition/DragGridView;)V

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 553
    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    .line 554
    return-void
.end method

.method private rQ()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 560
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akl:I

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/toggleposition/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 561
    if-eqz v0, :cond_0

    .line 562
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 564
    :cond_0
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akE:I

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akD:I

    .line 565
    invoke-direct {p0}, Lcom/android/settings/toggleposition/DragGridView;->rS()V

    .line 566
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akx:Lcom/android/settings/toggleposition/b;

    invoke-interface {v0, v2}, Lcom/android/settings/toggleposition/b;->cs(I)V

    .line 567
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akx:Lcom/android/settings/toggleposition/b;

    invoke-interface {v0}, Lcom/android/settings/toggleposition/b;->rQ()V

    .line 568
    invoke-direct {p0}, Lcom/android/settings/toggleposition/DragGridView;->rR()V

    .line 569
    iput v2, p0, Lcom/android/settings/toggleposition/DragGridView;->akm:I

    .line 570
    iput v2, p0, Lcom/android/settings/toggleposition/DragGridView;->akl:I

    .line 571
    return-void
.end method

.method private rR()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->ako:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 399
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->mWindowManager:Landroid/view/WindowManager;

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->ako:Landroid/widget/ImageView;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 400
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->ako:Landroid/widget/ImageView;

    .line 402
    :cond_0
    return-void
.end method

.method private rS()V
    .locals 2

    .prologue
    .line 448
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->akH:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 449
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .prologue
    .line 256
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 306
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    return v0

    .line 258
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akh:I

    .line 259
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->aki:I

    .line 262
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akh:I

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->aki:I

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/toggleposition/DragGridView;->pointToPosition(II)I

    move-result v0

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akm:I

    .line 263
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akm:I

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akl:I

    .line 266
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akl:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 267
    invoke-super {p0, p1}, Landroid/widget/GridView;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 271
    :cond_1
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->akC:Ljava/lang/Runnable;

    iget-wide v2, p0, Lcom/android/settings/toggleposition/DragGridView;->akf:J

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 274
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akl:I

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0, v0}, Lcom/android/settings/toggleposition/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akn:Landroid/view/View;

    .line 276
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->aki:I

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->akn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akr:I

    .line 277
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akh:I

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->akn:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v1

    sub-int/2addr v0, v1

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->aks:I

    .line 279
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->aki:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akt:I

    .line 280
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->akh:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->aku:I

    .line 283
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akn:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setDrawingCacheEnabled(Z)V

    .line 285
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akq:Landroid/graphics/Bitmap;

    .line 287
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akn:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->destroyDrawingCache()V

    goto/16 :goto_0

    .line 292
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 293
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    float-to-int v1, v1

    .line 296
    iget-object v2, p0, Lcom/android/settings/toggleposition/DragGridView;->akn:Landroid/view/View;

    invoke-direct {p0, v2, v0, v1}, Lcom/android/settings/toggleposition/DragGridView;->a(Landroid/view/View;II)Z

    move-result v0

    if-eqz v0, :cond_2

    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->aki:I

    sub-int v0, v1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akg:Z

    if-nez v0, :cond_0

    .line 297
    :cond_2
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->akC:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 302
    :pswitch_2
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->akC:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 303
    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/android/settings/toggleposition/DragGridView;->akH:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    goto/16 :goto_0

    .line 256
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 14

    .prologue
    const/4 v1, 0x0

    const/4 v6, 0x0

    .line 226
    invoke-super {p0, p1}, Landroid/widget/GridView;->onDraw(Landroid/graphics/Canvas;)V

    .line 227
    invoke-virtual {p0, v6}, Lcom/android/settings/toggleposition/DragGridView;->getChildAt(I)Landroid/view/View;

    move-result-object v12

    .line 228
    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getChildCount()I

    move-result v0

    .line 229
    int-to-double v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v2, v4

    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->Re:I

    int-to-double v4, v0

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-int v13, v2

    .line 231
    new-instance v5, Landroid/graphics/Paint;

    invoke-direct {v5}, Landroid/graphics/Paint;-><init>()V

    .line 232
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->GT:I

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 233
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akB:I

    invoke-virtual {v5, v0}, Landroid/graphics/Paint;->setColor(I)V

    move v7, v6

    .line 234
    :goto_0
    if-gt v7, v13, :cond_0

    .line 235
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v0

    mul-int/2addr v0, v7

    int-to-float v0, v0

    invoke-virtual {v12}, Landroid/view/View;->getY()F

    move-result v2

    add-float/2addr v0, v2

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->GT:I

    mul-int/2addr v2, v7

    int-to-float v2, v2

    add-float/2addr v2, v0

    .line 236
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->Re:I

    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v3

    mul-int/2addr v0, v3

    iget v3, p0, Lcom/android/settings/toggleposition/DragGridView;->Re:I

    iget v4, p0, Lcom/android/settings/toggleposition/DragGridView;->GT:I

    mul-int/2addr v3, v4

    add-int/2addr v0, v3

    int-to-float v3, v0

    move-object v0, p1

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 234
    add-int/lit8 v0, v7, 0x1

    move v7, v0

    goto :goto_0

    :cond_0
    move v0, v6

    .line 239
    :goto_1
    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->Re:I

    if-gt v0, v2, :cond_1

    .line 240
    invoke-virtual {v12}, Landroid/view/View;->getWidth()I

    move-result v2

    mul-int/2addr v2, v0

    iget v3, p0, Lcom/android/settings/toggleposition/DragGridView;->GT:I

    mul-int/2addr v3, v0

    add-int/2addr v2, v3

    int-to-float v7, v2

    .line 241
    invoke-virtual {v12}, Landroid/view/View;->getHeight()I

    move-result v2

    mul-int/2addr v2, v13

    iget v3, p0, Lcom/android/settings/toggleposition/DragGridView;->GT:I

    mul-int/2addr v3, v13

    add-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v12}, Landroid/view/View;->getY()F

    move-result v3

    add-float/2addr v2, v3

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getPaddingTop()I

    move-result v3

    int-to-float v3, v3

    sub-float v10, v2, v3

    move-object v6, p1

    move v8, v1

    move v9, v7

    move-object v11, v5

    invoke-virtual/range {v6 .. v11}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    .line 239
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 243
    :cond_1
    return-void
.end method

.method protected onMeasure(II)V
    .locals 6

    .prologue
    const/4 v0, 0x1

    .line 197
    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->Re:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_2

    .line 199
    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->aky:I

    if-lez v1, :cond_0

    .line 200
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    const/4 v2, 0x0

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 202
    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->aky:I

    div-int v1, v2, v1

    .line 203
    if-lez v1, :cond_1

    .line 204
    :goto_0
    if-eq v1, v0, :cond_3

    .line 205
    iget v3, p0, Lcom/android/settings/toggleposition/DragGridView;->aky:I

    mul-int/2addr v3, v1

    add-int/lit8 v4, v1, -0x1

    iget v5, p0, Lcom/android/settings/toggleposition/DragGridView;->akA:I

    mul-int/2addr v4, v5

    add-int/2addr v3, v4

    if-le v3, v2, :cond_3

    .line 207
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 216
    :cond_0
    const/4 v0, 0x2

    .line 218
    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->Re:I

    .line 221
    :cond_2
    invoke-super {p0, p1, p2}, Landroid/widget/GridView;->onMeasure(II)V

    .line 222
    return-void

    :cond_3
    move v0, v1

    goto :goto_1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    .line 336
    iget-boolean v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akg:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/toggleposition/DragGridView;->ako:Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    .line 337
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 352
    :goto_0
    const/4 v0, 0x1

    .line 354
    :goto_1
    return v0

    .line 339
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akj:I

    .line 340
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akk:I

    .line 343
    iget v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akj:I

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->aks:I

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getWidth()I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/toggleposition/DragGridView;->akn:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    iget v3, p0, Lcom/android/settings/toggleposition/DragGridView;->aks:I

    add-int/2addr v2, v3

    invoke-static {v0, v1, v2}, Lcom/android/settings/toggleposition/DragGridView;->clamp(III)I

    move-result v0

    iget v1, p0, Lcom/android/settings/toggleposition/DragGridView;->akk:I

    iget v2, p0, Lcom/android/settings/toggleposition/DragGridView;->akr:I

    invoke-virtual {p0}, Lcom/android/settings/toggleposition/DragGridView;->getHeight()I

    move-result v3

    iget-object v4, p0, Lcom/android/settings/toggleposition/DragGridView;->akn:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getHeight()I

    move-result v4

    sub-int/2addr v3, v4

    iget v4, p0, Lcom/android/settings/toggleposition/DragGridView;->akr:I

    add-int/2addr v3, v4

    invoke-static {v1, v2, v3}, Lcom/android/settings/toggleposition/DragGridView;->clamp(III)I

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/android/settings/toggleposition/DragGridView;->o(II)V

    goto :goto_0

    .line 348
    :pswitch_1
    invoke-direct {p0}, Lcom/android/settings/toggleposition/DragGridView;->rQ()V

    .line 349
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akg:Z

    goto :goto_0

    .line 354
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/GridView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 337
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 33
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/android/settings/toggleposition/DragGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2

    .prologue
    .line 160
    invoke-super {p0, p1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 162
    instance-of v0, p1, Lcom/android/settings/toggleposition/b;

    if-eqz v0, :cond_0

    .line 163
    check-cast p1, Lcom/android/settings/toggleposition/b;

    iput-object p1, p0, Lcom/android/settings/toggleposition/DragGridView;->akx:Lcom/android/settings/toggleposition/b;

    .line 167
    return-void

    .line 165
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "the adapter must be implements DragGridAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setColumnWidth(I)V
    .locals 0

    .prologue
    .line 180
    invoke-super {p0, p1}, Landroid/widget/GridView;->setColumnWidth(I)V

    .line 181
    iput p1, p0, Lcom/android/settings/toggleposition/DragGridView;->aky:I

    .line 182
    return-void
.end method

.method public setHorizontalSpacing(I)V
    .locals 0

    .prologue
    .line 187
    invoke-super {p0, p1}, Landroid/widget/GridView;->setHorizontalSpacing(I)V

    .line 188
    iput p1, p0, Lcom/android/settings/toggleposition/DragGridView;->akA:I

    .line 189
    return-void
.end method

.method public setNumColumns(I)V
    .locals 1

    .prologue
    .line 172
    invoke-super {p0, p1}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/toggleposition/DragGridView;->akz:Z

    .line 174
    iput p1, p0, Lcom/android/settings/toggleposition/DragGridView;->Re:I

    .line 175
    return-void
.end method
