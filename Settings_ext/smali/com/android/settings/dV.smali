.class public Lcom/android/settings/dV;
.super Lcom/android/settings/dg;
.source "MiuiSearchDrawable.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 12
    const v0, 0x7f020016

    invoke-direct {p0, p1, v0}, Lcom/android/settings/dV;-><init>(Landroid/content/Context;I)V

    .line 13
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Lcom/android/settings/dg;-><init>(Landroid/content/Context;I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Animatable;
    .locals 3

    .prologue
    .line 32
    check-cast p1, Landroid/graphics/drawable/StateListDrawable;

    .line 33
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x101009e

    aput v2, v0, v1

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawableIndex([I)I

    move-result v0

    .line 34
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/StateListDrawable;->getStateDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 35
    return-object v0
.end method

.method public eT()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/android/settings/dV;->er()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public stopAnimation()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/android/settings/dg;->stopAnimation()V

    .line 26
    invoke-virtual {p0}, Lcom/android/settings/dV;->es()Landroid/graphics/drawable/Animatable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/AnimatedRotateDrawable;

    .line 27
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimatedRotateDrawable;->stop()V

    .line 28
    return-void
.end method
