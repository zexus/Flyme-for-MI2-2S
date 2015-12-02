.class public Lcom/miui/compass/GradienterScreen;
.super Lcom/miui/compass/LyingPortraitView;
.source "GradienterScreen.java"


# instance fields
.field private mGradienterLying:Lcom/miui/compass/GradienterView;

.field private mGradienterPortrait:Lcom/miui/compass/GradienterView;

.field private mLayoutAngleLying:Landroid/widget/TextView;

.field private mLayoutAnglePortrait:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/compass/GradienterScreen;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    .line 21
    invoke-direct {p0, p1, p2}, Lcom/miui/compass/LyingPortraitView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-virtual {p0}, Lcom/miui/compass/GradienterScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 23
    .local v1, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f030006

    invoke-virtual {v1, v2, p0, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 24
    const v2, 0x7f0a0026

    invoke-virtual {p0, v2}, Lcom/miui/compass/GradienterScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/compass/GradienterView;

    iput-object v2, p0, Lcom/miui/compass/GradienterScreen;->mGradienterLying:Lcom/miui/compass/GradienterView;

    .line 25
    iget-object v2, p0, Lcom/miui/compass/GradienterScreen;->mGradienterLying:Lcom/miui/compass/GradienterView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/miui/compass/GradienterView;->setIsPortrait(Z)V

    .line 26
    const v2, 0x7f0a0029

    invoke-virtual {p0, v2}, Lcom/miui/compass/GradienterScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/miui/compass/GradienterView;

    iput-object v2, p0, Lcom/miui/compass/GradienterScreen;->mGradienterPortrait:Lcom/miui/compass/GradienterView;

    .line 27
    iget-object v2, p0, Lcom/miui/compass/GradienterScreen;->mGradienterPortrait:Lcom/miui/compass/GradienterView;

    invoke-virtual {v2, v4}, Lcom/miui/compass/GradienterView;->setIsPortrait(Z)V

    .line 28
    const v2, 0x7f0a0025

    invoke-virtual {p0, v2}, Lcom/miui/compass/GradienterScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/compass/GradienterScreen;->mLayoutAngleLying:Landroid/widget/TextView;

    .line 29
    const v2, 0x7f0a0028

    invoke-virtual {p0, v2}, Lcom/miui/compass/GradienterScreen;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/miui/compass/GradienterScreen;->mLayoutAnglePortrait:Landroid/widget/TextView;

    .line 31
    invoke-virtual {p0}, Lcom/miui/compass/GradienterScreen;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const-string v3, "fontnumber_light.ttf"

    invoke-static {v2, v3}, Lcom/miui/compass/Utils;->getTypeface(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    .line 32
    .local v0, "fontNumber":Landroid/graphics/Typeface;
    iget-object v2, p0, Lcom/miui/compass/GradienterScreen;->mLayoutAngleLying:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 33
    iget-object v2, p0, Lcom/miui/compass/GradienterScreen;->mLayoutAnglePortrait:Landroid/widget/TextView;

    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 34
    return-void
.end method


# virtual methods
.method protected getLyingViewId()I
    .locals 1

    .prologue
    .line 38
    const v0, 0x7f0a0024

    return v0
.end method

.method protected getPortraitViewId()I
    .locals 1

    .prologue
    .line 43
    const v0, 0x7f0a0027

    return v0
.end method

.method protected getRotationCenterY()F
    .locals 2

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/miui/compass/GradienterScreen;->getHeight()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    div-float/2addr v0, v1

    return v0
.end method

.method public setGradienterDirection(FF)V
    .locals 2
    .param p1, "y"    # F
    .param p2, "z"    # F

    .prologue
    .line 52
    iget-object v0, p0, Lcom/miui/compass/GradienterScreen;->mGradienterLying:Lcom/miui/compass/GradienterView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/compass/GradienterView;->setDirection(FF)V

    .line 53
    iget-object v0, p0, Lcom/miui/compass/GradienterScreen;->mLayoutAngleLying:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/compass/GradienterScreen;->mGradienterLying:Lcom/miui/compass/GradienterView;

    invoke-virtual {v1}, Lcom/miui/compass/GradienterView;->getDirectionLying()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 54
    iget-object v0, p0, Lcom/miui/compass/GradienterScreen;->mGradienterPortrait:Lcom/miui/compass/GradienterView;

    invoke-virtual {v0, p1, p2}, Lcom/miui/compass/GradienterView;->setDirection(FF)V

    .line 55
    iget-object v0, p0, Lcom/miui/compass/GradienterScreen;->mLayoutAnglePortrait:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/miui/compass/GradienterScreen;->mGradienterLying:Lcom/miui/compass/GradienterView;

    invoke-virtual {v1}, Lcom/miui/compass/GradienterView;->getDirectionPortart()F

    move-result v1

    float-to-int v1, v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 56
    return-void
.end method
