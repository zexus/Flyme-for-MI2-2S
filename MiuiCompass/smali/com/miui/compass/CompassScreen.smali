.class public Lcom/miui/compass/CompassScreen;
.super Lcom/miui/compass/LyingPortraitView;
.source "CompassScreen.java"


# instance fields
.field private mAltitude:Lcom/miui/compass/PressureAltitude;

.field private mAngleLayoutLying:Landroid/widget/TextView;

.field private mAngleLayoutPortrait:Landroid/widget/TextView;

.field private mCompassView:Lcom/miui/compass/CompassView;

.field private mDegreeLying:Landroid/widget/ImageView;

.field private mDirectionLeft:Landroid/widget/ImageView;

.field private mDirectionRight:Landroid/widget/ImageView;

.field private mDirectionTextViewLying:Landroid/widget/TextView;

.field private mDirectionTextViewPortrait:Landroid/widget/TextView;

.field private mPressure:Lcom/miui/compass/PressureAltitude;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 36
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/compass/CompassScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    .line 40
    invoke-direct {p0, p1, p2}, Lcom/miui/compass/LyingPortraitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 41
    invoke-virtual {p0}, Lcom/miui/compass/CompassScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 42
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030003

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 44
    const v2, 0x7f0a0019

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/compass/PressureAltitude;

    iput-object v2, p0, Lcom/miui/compass/CompassScreen;->mPressure:Lcom/miui/compass/PressureAltitude;

    .line 45
    iget-object v2, p0, Lcom/miui/compass/CompassScreen;->mPressure:Lcom/miui/compass/PressureAltitude;

    invoke-virtual {v2, v4}, Lcom/miui/compass/PressureAltitude;->setIsPressure(Z)V

    .line 46
    const v2, 0x7f0a001a

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/compass/PressureAltitude;

    iput-object v2, p0, Lcom/miui/compass/CompassScreen;->mAltitude:Lcom/miui/compass/PressureAltitude;

    .line 47
    iget-object v2, p0, Lcom/miui/compass/CompassScreen;->mAltitude:Lcom/miui/compass/PressureAltitude;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/compass/PressureAltitude;->setIsPressure(Z)V

    .line 48
    const v2, 0x7f0a001b

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/compass/CompassView;

    iput-object v2, p0, Lcom/miui/compass/CompassScreen;->mCompassView:Lcom/miui/compass/CompassView;

    .line 49
    const v2, 0x7f0a001c

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/compass/CompassScreen;->mAngleLayoutLying:Landroid/widget/TextView;

    .line 50
    const v2, 0x7f0a0023

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/compass/CompassScreen;->mAngleLayoutPortrait:Landroid/widget/TextView;

    .line 51
    const v2, 0x7f0a001e

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/compass/CompassScreen;->mDirectionTextViewLying:Landroid/widget/TextView;

    .line 52
    const v2, 0x7f0a0020

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/compass/CompassScreen;->mDirectionTextViewPortrait:Landroid/widget/TextView;

    .line 53
    const v2, 0x7f0a0021

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/compass/CompassScreen;->mDirectionLeft:Landroid/widget/ImageView;

    .line 54
    const v2, 0x7f0a0022

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/compass/CompassScreen;->mDirectionRight:Landroid/widget/ImageView;

    .line 55
    const v2, 0x7f0a001d

    invoke-virtual {p0, v2}, Lcom/miui/compass/CompassScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/miui/compass/CompassScreen;->mDegreeLying:Landroid/widget/ImageView;

    .line 57
    invoke-virtual {p0}, Lcom/miui/compass/CompassScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fontnumber_light.ttf"

    invoke-static {v2, v3}, Lcom/miui/compass/Utils;->getTypeface(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 58
    .local v0, "fontNumber":Landroid/graphics/Typeface;
    iget-object v2, p0, Lcom/miui/compass/CompassScreen;->mAngleLayoutLying:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 59
    iget-object v2, p0, Lcom/miui/compass/CompassScreen;->mAngleLayoutPortrait:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 60
    return-void
.end method

.method private normalizeDegree(F)F
    .locals 2
    .param p1, "degree"    # F

    .prologue
    .line 153
    const/high16 v0, 0x44340000    # 720.0f

    add-float/2addr v0, p1

    const/high16 v1, 0x43b40000    # 360.0f

    rem-float/2addr v0, v1

    return v0
.end method

.method private setTextToTextView(Landroid/widget/TextView;Ljava/lang/String;)V
    .locals 1
    .param p1, "tv"    # Landroid/widget/TextView;
    .param p2, "tx"    # Ljava/lang/String;

    .prologue
    .line 119
    if-eqz p2, :cond_0

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 120
    :cond_0
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    :cond_1
    return-void
.end method

.method private updateDirection(F)V
    .locals 11
    .param p1, "direction"    # F

    .prologue
    const/high16 v10, 0x42e10000    # 112.5f

    const/high16 v9, 0x42970000    # 75.5f

    const/high16 v7, 0x41b40000    # 22.5f

    const/4 v6, 0x4

    const/4 v8, 0x0

    .line 63
    invoke-virtual {p0}, Lcom/miui/compass/CompassScreen;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 65
    .local v0, "context":Landroid/content/Context;
    const/high16 v5, -0x40800000    # -1.0f

    mul-float/2addr v5, p1

    invoke-direct {p0, v5}, Lcom/miui/compass/CompassScreen;->normalizeDegree(F)F

    move-result p1

    .line 67
    const-string v1, ""

    .line 68
    .local v1, "directionString":Ljava/lang/String;
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    .line 69
    .local v2, "language":Ljava/lang/String;
    cmpl-float v5, p1, v7

    if-lez v5, :cond_2

    cmpg-float v5, p1, v9

    if-gez v5, :cond_2

    .line 71
    const v5, 0x7f080019

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 95
    :goto_0
    cmpg-float v5, p1, v7

    if-ltz v5, :cond_0

    const v5, 0x43a8c000    # 337.5f

    cmpl-float v5, p1, v5

    if-lez v5, :cond_9

    .line 96
    :cond_0
    iget-object v5, p0, Lcom/miui/compass/CompassScreen;->mDirectionLeft:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 97
    iget-object v5, p0, Lcom/miui/compass/CompassScreen;->mDirectionRight:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 106
    :cond_1
    :goto_1
    iget-object v5, p0, Lcom/miui/compass/CompassScreen;->mDirectionTextViewLying:Landroid/widget/TextView;

    invoke-direct {p0, v5, v1}, Lcom/miui/compass/CompassScreen;->setTextToTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 107
    iget-object v5, p0, Lcom/miui/compass/CompassScreen;->mDirectionTextViewPortrait:Landroid/widget/TextView;

    invoke-direct {p0, v5, v1}, Lcom/miui/compass/CompassScreen;->setTextToTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 108
    iget-object v5, p0, Lcom/miui/compass/CompassScreen;->mAngleLayoutLying:Landroid/widget/TextView;

    float-to-int v6, p1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/miui/compass/CompassScreen;->setTextToTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 110
    iget-object v5, p0, Lcom/miui/compass/CompassScreen;->mAngleLayoutLying:Landroid/widget/TextView;

    invoke-virtual {v5}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v5

    iget-object v6, p0, Lcom/miui/compass/CompassScreen;->mAngleLayoutLying:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v5

    float-to-int v5, v5

    div-int/lit8 v6, v5, 0x2

    iget-object v5, p0, Lcom/miui/compass/CompassScreen;->mDegreeLying:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    add-int v4, v6, v5

    .line 112
    .local v4, "textLength":I
    iget-object v5, p0, Lcom/miui/compass/CompassScreen;->mDegreeLying:Landroid/widget/ImageView;

    invoke-virtual {v5}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/FrameLayout$LayoutParams;

    .line 113
    .local v3, "p":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {v3, v4, v8, v8, v8}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 114
    iget-object v5, p0, Lcom/miui/compass/CompassScreen;->mDegreeLying:Landroid/widget/ImageView;

    iget-object v6, p0, Lcom/miui/compass/CompassScreen;->mDegreeLying:Landroid/widget/ImageView;

    invoke-virtual {v6}, Landroid/widget/ImageView;->getWidth()I

    move-result v6

    add-int/2addr v6, v4

    iget-object v7, p0, Lcom/miui/compass/CompassScreen;->mDegreeLying:Landroid/widget/ImageView;

    invoke-virtual {v7}, Landroid/widget/ImageView;->getHeight()I

    move-result v7

    invoke-virtual {v5, v4, v8, v6, v7}, Landroid/widget/ImageView;->layout(IIII)V

    .line 115
    iget-object v5, p0, Lcom/miui/compass/CompassScreen;->mAngleLayoutPortrait:Landroid/widget/TextView;

    float-to-int v6, p1

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {p0, v5, v6}, Lcom/miui/compass/CompassScreen;->setTextToTextView(Landroid/widget/TextView;Ljava/lang/String;)V

    .line 116
    return-void

    .line 72
    .end local v3    # "p":Landroid/widget/FrameLayout$LayoutParams;
    .end local v4    # "textLength":I
    :cond_2
    cmpl-float v5, p1, v9

    if-lez v5, :cond_3

    cmpg-float v5, p1, v10

    if-gez v5, :cond_3

    .line 74
    const v5, 0x7f080017

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 75
    :cond_3
    cmpl-float v5, p1, v10

    if-lez v5, :cond_4

    const v5, 0x431d8000    # 157.5f

    cmpg-float v5, p1, v5

    if-gez v5, :cond_4

    .line 77
    const v5, 0x7f08001b

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 78
    :cond_4
    const v5, 0x431d8000    # 157.5f

    cmpl-float v5, p1, v5

    if-lez v5, :cond_5

    const v5, 0x434a8000    # 202.5f

    cmpg-float v5, p1, v5

    if-gez v5, :cond_5

    .line 80
    const v5, 0x7f080016

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 81
    :cond_5
    const v5, 0x434a8000    # 202.5f

    cmpl-float v5, p1, v5

    if-lez v5, :cond_6

    const v5, 0x43778000    # 247.5f

    cmpg-float v5, p1, v5

    if-gez v5, :cond_6

    .line 83
    const v5, 0x7f08001c

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 84
    :cond_6
    const v5, 0x43778000    # 247.5f

    cmpl-float v5, p1, v5

    if-lez v5, :cond_7

    const v5, 0x43924000    # 292.5f

    cmpg-float v5, p1, v5

    if-gez v5, :cond_7

    .line 86
    const v5, 0x7f080018

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 87
    :cond_7
    const v5, 0x43924000    # 292.5f

    cmpl-float v5, p1, v5

    if-lez v5, :cond_8

    const v5, 0x43a8c000    # 337.5f

    cmpg-float v5, p1, v5

    if-gez v5, :cond_8

    .line 89
    const v5, 0x7f08001a

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 92
    :cond_8
    const v5, 0x7f080015

    invoke-virtual {v0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto/16 :goto_0

    .line 98
    :cond_9
    const/high16 v5, 0x43340000    # 180.0f

    cmpg-float v5, p1, v5

    if-gez v5, :cond_a

    .line 99
    iget-object v5, p0, Lcom/miui/compass/CompassScreen;->mDirectionLeft:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    iget-object v5, p0, Lcom/miui/compass/CompassScreen;->mDirectionRight:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1

    .line 101
    :cond_a
    const/high16 v5, 0x43340000    # 180.0f

    cmpl-float v5, p1, v5

    if-lez v5, :cond_1

    .line 102
    iget-object v5, p0, Lcom/miui/compass/CompassScreen;->mDirectionLeft:Landroid/widget/ImageView;

    invoke-virtual {v5, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 103
    iget-object v5, p0, Lcom/miui/compass/CompassScreen;->mDirectionRight:Landroid/widget/ImageView;

    invoke-virtual {v5, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_1
.end method


# virtual methods
.method protected getLyingViewId()I
    .locals 1

    .prologue
    .line 126
    const v0, 0x7f0a0016

    return v0
.end method

.method protected getPortraitViewId()I
    .locals 1

    .prologue
    .line 131
    const v0, 0x7f0a001f

    return v0
.end method

.method protected getRotationCenterY()F
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/miui/compass/CompassScreen;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public getViewShot()Landroid/graphics/Bitmap;
    .locals 7

    .prologue
    .line 157
    const v4, 0x7f0a0016

    invoke-virtual {p0, v4}, Lcom/miui/compass/CompassScreen;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 158
    .local v3, "v":Landroid/view/ViewGroup;
    invoke-virtual {p0}, Lcom/miui/compass/CompassScreen;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Lcom/miui/compass/CompassScreen;->getHeight()I

    move-result v5

    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v4, v5, v6}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 159
    .local v0, "bmp":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 160
    .local v1, "c":Landroid/graphics/Canvas;
    invoke-virtual {v3, v1}, Landroid/view/ViewGroup;->draw(Landroid/graphics/Canvas;)V

    .line 161
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/lit8 v5, v5, 0x2

    invoke-static {v0, v4, v5}, Lmiui/graphics/BitmapFactory;->scaleBitmap(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 162
    .local v2, "dest":Landroid/graphics/Bitmap;
    if-eq v2, v0, :cond_0

    .line 163
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 165
    :cond_0
    return-object v2
.end method

.method public setAltitude(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 144
    iget-object v0, p0, Lcom/miui/compass/CompassScreen;->mAltitude:Lcom/miui/compass/PressureAltitude;

    invoke-virtual {v0, p1}, Lcom/miui/compass/PressureAltitude;->setValue(F)V

    .line 145
    return-void
.end method

.method public setCompassDirection(F)V
    .locals 1
    .param p1, "x"    # F

    .prologue
    .line 148
    iget-object v0, p0, Lcom/miui/compass/CompassScreen;->mCompassView:Lcom/miui/compass/CompassView;

    invoke-virtual {v0, p1}, Lcom/miui/compass/CompassView;->setTargetDirection(F)V

    .line 149
    invoke-direct {p0, p1}, Lcom/miui/compass/CompassScreen;->updateDirection(F)V

    .line 150
    return-void
.end method

.method public setPressure(F)V
    .locals 1
    .param p1, "v"    # F

    .prologue
    .line 140
    iget-object v0, p0, Lcom/miui/compass/CompassScreen;->mPressure:Lcom/miui/compass/PressureAltitude;

    invoke-virtual {v0, p1}, Lcom/miui/compass/PressureAltitude;->setValue(F)V

    .line 141
    return-void
.end method
