.class Lcom/android/settings/cp;
.super Ljava/lang/Object;
.source "EqualizerView.java"


# instance fields
.field final lc:F

.field final ld:F


# direct methods
.method protected constructor <init>(FF)V
    .locals 0

    .prologue
    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 241
    iput p1, p0, Lcom/android/settings/cp;->lc:F

    .line 242
    iput p2, p0, Lcom/android/settings/cp;->ld:F

    .line 243
    return-void
.end method


# virtual methods
.method protected b(Lcom/android/settings/cp;)Lcom/android/settings/cp;
    .locals 4

    .prologue
    .line 279
    new-instance v0, Lcom/android/settings/cp;

    iget v1, p0, Lcom/android/settings/cp;->lc:F

    iget v2, p1, Lcom/android/settings/cp;->lc:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/android/settings/cp;->ld:F

    iget v3, p1, Lcom/android/settings/cp;->ld:F

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cp;-><init>(FF)V

    return-object v0
.end method

.method protected c(Lcom/android/settings/cp;)Lcom/android/settings/cp;
    .locals 5

    .prologue
    .line 289
    new-instance v0, Lcom/android/settings/cp;

    iget v1, p0, Lcom/android/settings/cp;->lc:F

    iget v2, p1, Lcom/android/settings/cp;->lc:F

    mul-float/2addr v1, v2

    iget v2, p0, Lcom/android/settings/cp;->ld:F

    iget v3, p1, Lcom/android/settings/cp;->ld:F

    mul-float/2addr v2, v3

    sub-float/2addr v1, v2

    iget v2, p0, Lcom/android/settings/cp;->lc:F

    iget v3, p1, Lcom/android/settings/cp;->ld:F

    mul-float/2addr v2, v3

    iget v3, p0, Lcom/android/settings/cp;->ld:F

    iget v4, p1, Lcom/android/settings/cp;->lc:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cp;-><init>(FF)V

    return-object v0
.end method

.method protected d(Lcom/android/settings/cp;)Lcom/android/settings/cp;
    .locals 3

    .prologue
    .line 309
    iget v0, p1, Lcom/android/settings/cp;->lc:F

    iget v1, p1, Lcom/android/settings/cp;->lc:F

    mul-float/2addr v0, v1

    iget v1, p1, Lcom/android/settings/cp;->ld:F

    iget v2, p1, Lcom/android/settings/cp;->ld:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    .line 310
    invoke-virtual {p1}, Lcom/android/settings/cp;->dq()Lcom/android/settings/cp;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/settings/cp;->c(Lcom/android/settings/cp;)Lcom/android/settings/cp;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/cp;->f(F)Lcom/android/settings/cp;

    move-result-object v0

    return-object v0
.end method

.method protected dp()F
    .locals 3

    .prologue
    .line 251
    iget v0, p0, Lcom/android/settings/cp;->lc:F

    iget v1, p0, Lcom/android/settings/cp;->lc:F

    mul-float/2addr v0, v1

    iget v1, p0, Lcom/android/settings/cp;->ld:F

    iget v2, p0, Lcom/android/settings/cp;->ld:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method protected dq()Lcom/android/settings/cp;
    .locals 3

    .prologue
    .line 269
    new-instance v0, Lcom/android/settings/cp;

    iget v1, p0, Lcom/android/settings/cp;->lc:F

    iget v2, p0, Lcom/android/settings/cp;->ld:F

    neg-float v2, v2

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cp;-><init>(FF)V

    return-object v0
.end method

.method protected e(F)Lcom/android/settings/cp;
    .locals 3

    .prologue
    .line 299
    new-instance v0, Lcom/android/settings/cp;

    iget v1, p0, Lcom/android/settings/cp;->lc:F

    mul-float/2addr v1, p1

    iget v2, p0, Lcom/android/settings/cp;->ld:F

    mul-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cp;-><init>(FF)V

    return-object v0
.end method

.method protected f(F)Lcom/android/settings/cp;
    .locals 3

    .prologue
    .line 320
    new-instance v0, Lcom/android/settings/cp;

    iget v1, p0, Lcom/android/settings/cp;->lc:F

    div-float/2addr v1, p1

    iget v2, p0, Lcom/android/settings/cp;->ld:F

    div-float/2addr v2, p1

    invoke-direct {v0, v1, v2}, Lcom/android/settings/cp;-><init>(FF)V

    return-object v0
.end method
