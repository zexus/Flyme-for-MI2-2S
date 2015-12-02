.class public Lcom/android/camera/effect/renders/XBlurEffectRender;
.super Lcom/android/camera/effect/renders/RegionEffectRender;
.source "XBlurEffectRender.java"


# direct methods
.method public constructor <init>(Lcom/android/gallery3d/ui/GLCanvas;I)V
    .locals 0
    .param p1, "canvas"    # Lcom/android/gallery3d/ui/GLCanvas;
    .param p2, "id"    # I

    .prologue
    .line 13
    invoke-direct {p0, p1, p2}, Lcom/android/camera/effect/renders/RegionEffectRender;-><init>(Lcom/android/gallery3d/ui/GLCanvas;I)V

    .line 14
    return-void
.end method


# virtual methods
.method protected drawTexture(Lcom/android/gallery3d/ui/BasicTexture;FFFFZ)V
    .locals 3
    .param p1, "texture"    # Lcom/android/gallery3d/ui/BasicTexture;
    .param p2, "x"    # F
    .param p3, "y"    # F
    .param p4, "w"    # F
    .param p5, "h"    # F
    .param p6, "isSnapShot"    # Z

    .prologue
    .line 18
    mul-float v0, p4, p5

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 19
    float-to-int v0, p4

    float-to-int v1, p5

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/XBlurEffectRender;->setStep(II)V

    .line 23
    :goto_0
    invoke-super/range {p0 .. p6}, Lcom/android/camera/effect/renders/RegionEffectRender;->drawTexture(Lcom/android/gallery3d/ui/BasicTexture;FFFFZ)V

    .line 24
    return-void

    .line 21
    :cond_0
    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureWidth()I

    move-result v0

    invoke-virtual {p1}, Lcom/android/gallery3d/ui/BasicTexture;->getTextureHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/android/camera/effect/renders/XBlurEffectRender;->setStep(II)V

    goto :goto_0
.end method

.method public getFragShaderString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    const-string v0, "precision mediump float; \nuniform vec2 uStep; \nuniform sampler2D sTexture; \nvarying vec2 vTexCoord; \nvoid main() { \n    vec2 step = vec2(uStep.x, 0.0); \n    vec2 delta = step; \n    int radius = 22; \n    float factor = 0.001890359; \n    float weight = factor * float(radius + 1); \n    vec3 sum = texture2D(sTexture, vTexCoord).rgb * weight; \n    for (int i = 1; i <= radius; ++i) { \n        weight -= factor; \n        sum += (texture2D(sTexture, vTexCoord + delta).rgb + texture2D(sTexture, vTexCoord - delta).rgb) * weight; \n        delta += step; \n    } \n    gl_FragColor = vec4(sum, 1.0);  \n}"

    return-object v0
.end method
