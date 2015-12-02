.class Lcom/android/camera/SwitchAnimManager$AnimateFraction;
.super Ljava/lang/Object;
.source "SwitchAnimManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/camera/SwitchAnimManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimateFraction"
.end annotation


# instance fields
.field private mInterpolator:Landroid/view/animation/Interpolator;

.field final synthetic this$0:Lcom/android/camera/SwitchAnimManager;


# direct methods
.method private constructor <init>(Lcom/android/camera/SwitchAnimManager;)V
    .locals 1

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/camera/SwitchAnimManager$AnimateFraction;->this$0:Lcom/android/camera/SwitchAnimManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 217
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/camera/SwitchAnimManager$AnimateFraction;->mInterpolator:Landroid/view/animation/Interpolator;

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/camera/SwitchAnimManager;Lcom/android/camera/SwitchAnimManager$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/android/camera/SwitchAnimManager;
    .param p2, "x1"    # Lcom/android/camera/SwitchAnimManager$1;

    .prologue
    .line 216
    invoke-direct {p0, p1}, Lcom/android/camera/SwitchAnimManager$AnimateFraction;-><init>(Lcom/android/camera/SwitchAnimManager;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/camera/SwitchAnimManager$AnimateFraction;J)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SwitchAnimManager$AnimateFraction;
    .param p1, "x1"    # J

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/camera/SwitchAnimManager$AnimateFraction;->getFraction(J)F

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lcom/android/camera/SwitchAnimManager$AnimateFraction;J)F
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/SwitchAnimManager$AnimateFraction;
    .param p1, "x1"    # J

    .prologue
    .line 216
    invoke-direct {p0, p1, p2}, Lcom/android/camera/SwitchAnimManager$AnimateFraction;->getAlphaFraction(J)F

    move-result v0

    return v0
.end method

.method private getAlphaFraction(J)F
    .locals 5
    .param p1, "timeDiff"    # J

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 232
    iget-object v0, p0, Lcom/android/camera/SwitchAnimManager$AnimateFraction;->this$0:Lcom/android/camera/SwitchAnimManager;

    # getter for: Lcom/android/camera/SwitchAnimManager;->mSwitchState:I
    invoke-static {v0}, Lcom/android/camera/SwitchAnimManager;->access$300(Lcom/android/camera/SwitchAnimManager;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 241
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 236
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/SwitchAnimManager$AnimateFraction;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v1, p1

    const/high16 v2, 0x442f0000    # 700.0f

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v3

    goto :goto_0

    .line 239
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/SwitchAnimManager$AnimateFraction;->mInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v1, 0x43c80000    # 400.0f

    long-to-float v2, p1

    add-float/2addr v1, v2

    const/high16 v2, 0x44480000    # 800.0f

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    goto :goto_0

    .line 232
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private getFraction(J)F
    .locals 5
    .param p1, "timeDiff"    # J

    .prologue
    const/high16 v4, 0x442f0000    # 700.0f

    const/high16 v3, 0x40000000    # 2.0f

    .line 220
    iget-object v0, p0, Lcom/android/camera/SwitchAnimManager$AnimateFraction;->this$0:Lcom/android/camera/SwitchAnimManager;

    # getter for: Lcom/android/camera/SwitchAnimManager;->mSwitchState:I
    invoke-static {v0}, Lcom/android/camera/SwitchAnimManager;->access$300(Lcom/android/camera/SwitchAnimManager;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 228
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 222
    :pswitch_0
    iget-object v0, p0, Lcom/android/camera/SwitchAnimManager$AnimateFraction;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v1, p1

    div-float/2addr v1, v4

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v3

    goto :goto_0

    .line 224
    :pswitch_1
    iget-object v0, p0, Lcom/android/camera/SwitchAnimManager$AnimateFraction;->mInterpolator:Landroid/view/animation/Interpolator;

    const/high16 v1, 0x43af0000    # 350.0f

    long-to-float v2, p1

    add-float/2addr v1, v2

    div-float/2addr v1, v4

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    const/high16 v1, 0x3f000000    # 0.5f

    sub-float/2addr v0, v1

    mul-float/2addr v0, v3

    goto :goto_0

    .line 226
    :pswitch_2
    iget-object v0, p0, Lcom/android/camera/SwitchAnimManager$AnimateFraction;->mInterpolator:Landroid/view/animation/Interpolator;

    long-to-float v1, p1

    const/high16 v2, 0x44480000    # 800.0f

    div-float/2addr v1, v2

    invoke-interface {v0, v1}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v0

    mul-float/2addr v0, v3

    goto :goto_0

    .line 220
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
