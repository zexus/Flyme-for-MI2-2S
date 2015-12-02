.class public Lcom/miui/compass/TutorialAnimation;
.super Ljava/lang/Object;
.source "TutorialAnimation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/compass/TutorialAnimation$AnimationItem;
    }
.end annotation


# instance fields
.field private final ANIMATION_CMD:I

.field private mAnimation:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/miui/compass/TutorialAnimation$AnimationItem;",
            ">;"
        }
    .end annotation
.end field

.field private mAnimationView:Landroid/widget/ImageView;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mIndex:I

.field private mIsAnimating:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v0, 0x1

    iput v0, p0, Lcom/miui/compass/TutorialAnimation;->ANIMATION_CMD:I

    .line 24
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/miui/compass/TutorialAnimation;->mAnimation:Ljava/util/List;

    .line 26
    new-instance v0, Lcom/miui/compass/TutorialAnimation$1;

    invoke-direct {v0, p0}, Lcom/miui/compass/TutorialAnimation$1;-><init>(Lcom/miui/compass/TutorialAnimation;)V

    iput-object v0, p0, Lcom/miui/compass/TutorialAnimation;->mHandler:Landroid/os/Handler;

    .line 41
    iput-object p1, p0, Lcom/miui/compass/TutorialAnimation;->mContext:Landroid/content/Context;

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/miui/compass/TutorialAnimation;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/TutorialAnimation;

    .prologue
    .line 19
    iget-boolean v0, p0, Lcom/miui/compass/TutorialAnimation;->mIsAnimating:Z

    return v0
.end method

.method static synthetic access$100(Lcom/miui/compass/TutorialAnimation;)I
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/TutorialAnimation;

    .prologue
    .line 19
    iget v0, p0, Lcom/miui/compass/TutorialAnimation;->mIndex:I

    return v0
.end method

.method static synthetic access$102(Lcom/miui/compass/TutorialAnimation;I)I
    .locals 0
    .param p0, "x0"    # Lcom/miui/compass/TutorialAnimation;
    .param p1, "x1"    # I

    .prologue
    .line 19
    iput p1, p0, Lcom/miui/compass/TutorialAnimation;->mIndex:I

    return p1
.end method

.method static synthetic access$200(Lcom/miui/compass/TutorialAnimation;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/TutorialAnimation;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/compass/TutorialAnimation;->mAnimation:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/compass/TutorialAnimation;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/TutorialAnimation;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/compass/TutorialAnimation;->mAnimationView:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/compass/TutorialAnimation;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/TutorialAnimation;

    .prologue
    .line 19
    iget-object v0, p0, Lcom/miui/compass/TutorialAnimation;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private loadAnimationFrame(I)V
    .locals 10
    .param p1, "animationId"    # I

    .prologue
    const/4 v9, 0x1

    .line 54
    iget-object v7, p0, Lcom/miui/compass/TutorialAnimation;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 55
    .local v5, "rescources":Landroid/content/res/Resources;
    invoke-virtual {v5, p1}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v4

    .line 56
    .local v4, "parser":Landroid/content/res/XmlResourceParser;
    sget-object v7, Lcom/android/internal/R$styleable;->AnimationDrawable:[I

    invoke-virtual {v5, v4, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 61
    .local v0, "a":Landroid/content/res/TypedArray;
    :cond_0
    :goto_0
    :try_start_0
    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->next()I

    move-result v6

    .local v6, "type":I
    if-eq v6, v9, :cond_2

    .line 62
    const/4 v7, 0x2

    if-ne v6, v7, :cond_0

    invoke-interface {v4}, Landroid/content/res/XmlResourceParser;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "item"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 65
    sget-object v7, Lcom/android/internal/R$styleable;->AnimationDrawableItem:[I

    invoke-virtual {v5, v4, v7}, Landroid/content/res/Resources;->obtainAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 67
    const/4 v7, 0x0

    const/4 v8, -0x1

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 68
    .local v2, "duration":I
    if-gez v2, :cond_1

    .line 69
    const/16 v2, 0x64

    .line 71
    :cond_1
    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 73
    .local v1, "drawableRes":I
    iget-object v7, p0, Lcom/miui/compass/TutorialAnimation;->mAnimation:Ljava/util/List;

    new-instance v8, Lcom/miui/compass/TutorialAnimation$AnimationItem;

    invoke-direct {v8, p0, v1, v2}, Lcom/miui/compass/TutorialAnimation$AnimationItem;-><init>(Lcom/miui/compass/TutorialAnimation;II)V

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 74
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 76
    .end local v1    # "drawableRes":I
    .end local v2    # "duration":I
    .end local v6    # "type":I
    :catch_0
    move-exception v3

    .line 77
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string v7, "Compass:TutorialAnimation"

    const-string v8, "loadAnimationFrame XmlPullParserException"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 81
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    :cond_2
    :goto_1
    return-void

    .line 78
    :catch_1
    move-exception v3

    .line 79
    .local v3, "e":Ljava/io/IOException;
    const-string v7, "Compass:TutorialAnimation"

    const-string v8, "loadAnimationFrame IOException"

    invoke-static {v7, v8, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public startAnimation(Landroid/widget/ImageView;I)V
    .locals 2
    .param p1, "animationView"    # Landroid/widget/ImageView;
    .param p2, "animationId"    # I

    .prologue
    const/4 v1, 0x1

    .line 45
    iput-object p1, p0, Lcom/miui/compass/TutorialAnimation;->mAnimationView:Landroid/widget/ImageView;

    .line 46
    iput-boolean v1, p0, Lcom/miui/compass/TutorialAnimation;->mIsAnimating:Z

    .line 47
    iget-object v0, p0, Lcom/miui/compass/TutorialAnimation;->mAnimation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 48
    const/4 v0, 0x0

    iput v0, p0, Lcom/miui/compass/TutorialAnimation;->mIndex:I

    .line 49
    invoke-direct {p0, p2}, Lcom/miui/compass/TutorialAnimation;->loadAnimationFrame(I)V

    .line 50
    iget-object v0, p0, Lcom/miui/compass/TutorialAnimation;->mHandler:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 51
    return-void
.end method

.method public stopAnimation()V
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/compass/TutorialAnimation;->mIsAnimating:Z

    .line 85
    iget-object v0, p0, Lcom/miui/compass/TutorialAnimation;->mAnimation:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 86
    iget-object v0, p0, Lcom/miui/compass/TutorialAnimation;->mHandler:Landroid/os/Handler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 87
    return-void
.end method
