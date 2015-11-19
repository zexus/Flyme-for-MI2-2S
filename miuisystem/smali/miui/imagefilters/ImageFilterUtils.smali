.class public Lmiui/imagefilters/ImageFilterUtils;
.super Ljava/lang/Object;
.source "ImageFilterUtils.java"


# static fields
.field static final COLOR_TO_GRAYSCALE_FACTOR_B:F = 0.114f

.field static final COLOR_TO_GRAYSCALE_FACTOR_G:F = 0.587f

.field static final COLOR_TO_GRAYSCALE_FACTOR_R:F = 0.299f

.field static final TAG:Ljava/lang/String; = "ImageFilterUtils"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static HslToRgb(FFF)I
    .locals 12
    .param p0, "h"    # F
    .param p1, "s"    # F
    .param p2, "l"    # F

    .prologue
    .line 32
    const/4 v8, 0x0

    cmpl-float v8, p1, v8

    if-nez v8, :cond_0

    .line 35
    const/high16 v8, 0x437f0000    # 255.0f

    mul-float/2addr v8, p2

    float-to-int v2, v8

    .local v2, "b":I
    move v3, v2

    .local v3, "g":I
    move v7, v2

    .line 73
    .local v7, "r":I
    :goto_0
    const/4 v8, 0x0

    const/16 v9, 0xff

    invoke-static {v8, v7, v9}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v7

    .line 74
    const/4 v8, 0x0

    const/16 v9, 0xff

    invoke-static {v8, v3, v9}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v3

    .line 75
    const/4 v8, 0x0

    const/16 v9, 0xff

    invoke-static {v8, v2, v9}, Lmiui/imagefilters/ImageFilterUtils;->clamp(III)I

    move-result v2

    .line 77
    const/high16 v8, -0x1000000

    shl-int/lit8 v9, v7, 0x10

    or-int/2addr v8, v9

    shl-int/lit8 v9, v3, 0x8

    or-int/2addr v8, v9

    or-int/2addr v8, v2

    return v8

    .line 39
    .end local v2    # "b":I
    .end local v3    # "g":I
    .end local v7    # "r":I
    :cond_0
    const/high16 v8, 0x3f000000    # 0.5f

    cmpg-float v8, p2, v8

    if-gez v8, :cond_2

    const/high16 v8, 0x3f800000    # 1.0f

    add-float/2addr v8, p1

    mul-float v6, p2, v8

    .line 40
    .local v6, "q":F
    :goto_1
    const/high16 v8, 0x40000000    # 2.0f

    mul-float/2addr v8, p2

    sub-float v5, v8, v6

    .line 42
    .local v5, "p":F
    const/high16 v8, 0x43b40000    # 360.0f

    div-float v0, p0, v8

    .line 43
    .local v0, "Hk":F
    const/4 v8, 0x3

    new-array v1, v8, [F

    .line 44
    .local v1, "T":[F
    const/4 v8, 0x0

    const v9, 0x3eaaaaab

    add-float/2addr v9, v0

    aput v9, v1, v8

    .line 45
    const/4 v8, 0x1

    aput v0, v1, v8

    .line 46
    const/4 v8, 0x2

    const v9, 0x3eaaaaab

    sub-float v9, v0, v9

    aput v9, v1, v8

    .line 48
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_2
    const/4 v8, 0x3

    if-ge v4, v8, :cond_7

    .line 50
    aget v8, v1, v4

    const/4 v9, 0x0

    cmpg-float v8, v8, v9

    if-gez v8, :cond_3

    aget v8, v1, v4

    float-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    add-double/2addr v8, v10

    double-to-float v8, v8

    aput v8, v1, v4

    .line 53
    :cond_1
    :goto_3
    aget v8, v1, v4

    const/high16 v9, 0x40c00000    # 6.0f

    mul-float/2addr v8, v9

    const/high16 v9, 0x3f800000    # 1.0f

    cmpg-float v8, v8, v9

    if-gez v8, :cond_4

    .line 55
    sub-float v8, v6, v5

    const/high16 v9, 0x40c00000    # 6.0f

    mul-float/2addr v8, v9

    aget v9, v1, v4

    mul-float/2addr v8, v9

    add-float/2addr v8, v5

    aput v8, v1, v4

    .line 48
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 39
    .end local v0    # "Hk":F
    .end local v1    # "T":[F
    .end local v4    # "i":I
    .end local v5    # "p":F
    .end local v6    # "q":F
    :cond_2
    add-float v8, p2, p1

    mul-float v9, p2, p1

    sub-float v6, v8, v9

    goto :goto_1

    .line 51
    .restart local v0    # "Hk":F
    .restart local v1    # "T":[F
    .restart local v4    # "i":I
    .restart local v5    # "p":F
    .restart local v6    # "q":F
    :cond_3
    aget v8, v1, v4

    const/high16 v9, 0x3f800000    # 1.0f

    cmpl-float v8, v8, v9

    if-lez v8, :cond_1

    aget v8, v1, v4

    float-to-double v8, v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v8, v10

    double-to-float v8, v8

    aput v8, v1, v4

    goto :goto_3

    .line 57
    :cond_4
    aget v8, v1, v4

    float-to-double v8, v8

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_5

    .line 59
    aput v6, v1, v4

    goto :goto_4

    .line 61
    :cond_5
    aget v8, v1, v4

    float-to-double v8, v8

    const-wide/high16 v10, 0x4008000000000000L    # 3.0

    mul-double/2addr v8, v10

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    cmpg-double v8, v8, v10

    if-gez v8, :cond_6

    .line 63
    sub-float v8, v6, v5

    const v9, 0x3f2aaaab

    aget v10, v1, v4

    sub-float/2addr v9, v10

    mul-float/2addr v8, v9

    const/high16 v9, 0x40c00000    # 6.0f

    mul-float/2addr v8, v9

    add-float/2addr v8, v5

    aput v8, v1, v4

    goto :goto_4

    .line 65
    :cond_6
    aput v5, v1, v4

    goto :goto_4

    .line 68
    :cond_7
    const/4 v8, 0x0

    aget v8, v1, v8

    float-to-double v8, v8

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    double-to-int v7, v8

    .line 69
    .restart local v7    # "r":I
    const/4 v8, 0x1

    aget v8, v1, v8

    float-to-double v8, v8

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    double-to-int v3, v8

    .line 70
    .restart local v3    # "g":I
    const/4 v8, 0x2

    aget v8, v1, v8

    float-to-double v8, v8

    const-wide v10, 0x406fe00000000000L    # 255.0

    mul-double/2addr v8, v10

    double-to-int v2, v8

    .restart local v2    # "b":I
    goto/16 :goto_0
.end method

.method public static HslToRgb([F)I
    .locals 3
    .param p0, "hsl"    # [F

    .prologue
    .line 25
    const/4 v0, 0x0

    aget v0, p0, v0

    const/4 v1, 0x1

    aget v1, p0, v1

    const/4 v2, 0x2

    aget v2, p0, v2

    invoke-static {v0, v1, v2}, Lmiui/imagefilters/ImageFilterUtils;->HslToRgb(FFF)I

    move-result v0

    return v0
.end method

.method public static HsvToRgb(FFF)I
    .locals 14
    .param p0, "h"    # F
    .param p1, "s"    # F
    .param p2, "v"    # F

    .prologue
    .line 82
    const/4 v8, 0x0

    .line 83
    .local v8, "r":F
    const/4 v2, 0x0

    .line 84
    .local v2, "g":F
    const/4 v0, 0x0

    .line 86
    .local v0, "b":F
    const/4 v12, 0x0

    cmpl-float v12, p1, v12

    if-nez v12, :cond_0

    .line 88
    move/from16 v0, p2

    move/from16 v2, p2

    move/from16 v8, p2

    .line 139
    :goto_0
    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v12, v8, v13}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v8

    .line 140
    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v12, v2, v13}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v2

    .line 141
    const/4 v12, 0x0

    const/high16 v13, 0x3f800000    # 1.0f

    invoke-static {v12, v0, v13}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v0

    .line 143
    const/high16 v12, 0x437f0000    # 255.0f

    mul-float/2addr v12, v8

    float-to-int v5, v12

    .line 144
    .local v5, "nr":I
    const/high16 v12, 0x437f0000    # 255.0f

    mul-float/2addr v12, v2

    float-to-int v4, v12

    .line 145
    .local v4, "ng":I
    const/high16 v12, 0x437f0000    # 255.0f

    mul-float/2addr v12, v0

    float-to-int v3, v12

    .line 146
    .local v3, "nb":I
    const/high16 v12, -0x1000000

    shl-int/lit8 v13, v5, 0x10

    or-int/2addr v12, v13

    shl-int/lit8 v13, v4, 0x8

    or-int/2addr v12, v13

    or-int/2addr v12, v3

    return v12

    .line 93
    .end local v3    # "nb":I
    .end local v4    # "ng":I
    .end local v5    # "nr":I
    :cond_0
    const/high16 v12, 0x42700000    # 60.0f

    div-float v10, p0, v12

    .line 94
    .local v10, "sectorPos":F
    float-to-double v12, v10

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v9, v12

    .line 96
    .local v9, "sectorNumber":I
    int-to-float v12, v9

    sub-float v1, v10, v12

    .line 99
    .local v1, "fractionalSector":F
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float/2addr v12, p1

    mul-float v6, p2, v12

    .line 100
    .local v6, "p":F
    const/high16 v12, 0x3f800000    # 1.0f

    mul-float v13, p1, v1

    sub-float/2addr v12, v13

    mul-float v7, p2, v12

    .line 101
    .local v7, "q":F
    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    sub-float/2addr v13, v1

    mul-float/2addr v13, p1

    sub-float/2addr v12, v13

    mul-float v11, p2, v12

    .line 104
    .local v11, "t":F
    packed-switch v9, :pswitch_data_0

    goto :goto_0

    .line 107
    :pswitch_0
    move/from16 v8, p2

    .line 108
    move v2, v11

    .line 109
    move v0, v6

    .line 110
    goto :goto_0

    .line 112
    :pswitch_1
    move v8, v7

    .line 113
    move/from16 v2, p2

    .line 114
    move v0, v6

    .line 115
    goto :goto_0

    .line 117
    :pswitch_2
    move v8, v6

    .line 118
    move/from16 v2, p2

    .line 119
    move v0, v11

    .line 120
    goto :goto_0

    .line 122
    :pswitch_3
    move v8, v6

    .line 123
    move v2, v7

    .line 124
    move/from16 v0, p2

    .line 125
    goto :goto_0

    .line 127
    :pswitch_4
    move v8, v11

    .line 128
    move v2, v6

    .line 129
    move/from16 v0, p2

    .line 130
    goto :goto_0

    .line 132
    :pswitch_5
    move/from16 v8, p2

    .line 133
    move v2, v6

    .line 134
    move v0, v7

    goto :goto_0

    .line 104
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public static RgbToHsl(III[F)V
    .locals 12
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I
    .param p3, "hsl"    # [F

    .prologue
    .line 156
    const/4 v2, 0x0

    .local v2, "h":F
    const/4 v7, 0x0

    .local v7, "s":F
    const/4 v3, 0x0

    .line 159
    .local v3, "l":F
    int-to-float v8, p0

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v6, v8, v9

    .line 160
    .local v6, "r":F
    int-to-float v8, p1

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v1, v8, v9

    .line 161
    .local v1, "g":F
    int-to-float v8, p2

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v0, v8, v9

    .line 163
    .local v0, "b":F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->max(FF)F

    move-result v4

    .line 164
    .local v4, "max":F
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v6, v8}, Ljava/lang/Math;->min(FF)F

    move-result v5

    .line 167
    .local v5, "min":F
    cmpl-float v8, v4, v5

    if-nez v8, :cond_3

    .line 169
    const/4 v2, 0x0

    .line 189
    :cond_0
    :goto_0
    add-float v8, v4, v5

    const/high16 v9, 0x40000000    # 2.0f

    div-float v3, v8, v9

    .line 192
    const/4 v8, 0x0

    cmpl-float v8, v3, v8

    if-eqz v8, :cond_1

    cmpl-float v8, v4, v5

    if-nez v8, :cond_7

    .line 194
    :cond_1
    const/4 v7, 0x0

    .line 205
    :cond_2
    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x43b40000    # 360.0f

    invoke-static {v9, v2, v10}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v9

    aput v9, p3, v8

    .line 206
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v7, v10}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v9

    aput v9, p3, v8

    .line 207
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v3, v10}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v9

    aput v9, p3, v8

    .line 208
    return-void

    .line 171
    :cond_3
    cmpl-float v8, v4, v6

    if-nez v8, :cond_4

    cmpl-float v8, v1, v0

    if-ltz v8, :cond_4

    .line 173
    const/high16 v8, 0x42700000    # 60.0f

    sub-float v9, v1, v0

    mul-float/2addr v8, v9

    sub-float v9, v4, v5

    div-float v2, v8, v9

    goto :goto_0

    .line 175
    :cond_4
    cmpl-float v8, v4, v6

    if-nez v8, :cond_5

    cmpg-float v8, v1, v0

    if-gez v8, :cond_5

    .line 177
    const/high16 v8, 0x42700000    # 60.0f

    sub-float v9, v1, v0

    mul-float/2addr v8, v9

    sub-float v9, v4, v5

    div-float/2addr v8, v9

    const/high16 v9, 0x43b40000    # 360.0f

    add-float v2, v8, v9

    goto :goto_0

    .line 179
    :cond_5
    cmpl-float v8, v4, v1

    if-nez v8, :cond_6

    .line 181
    const/high16 v8, 0x42700000    # 60.0f

    sub-float v9, v0, v6

    mul-float/2addr v8, v9

    sub-float v9, v4, v5

    div-float/2addr v8, v9

    const/high16 v9, 0x42f00000    # 120.0f

    add-float v2, v8, v9

    goto :goto_0

    .line 183
    :cond_6
    cmpl-float v8, v4, v0

    if-nez v8, :cond_0

    .line 185
    const/high16 v8, 0x42700000    # 60.0f

    sub-float v9, v6, v1

    mul-float/2addr v8, v9

    sub-float v9, v4, v5

    div-float/2addr v8, v9

    const/high16 v9, 0x43700000    # 240.0f

    add-float v2, v8, v9

    goto :goto_0

    .line 196
    :cond_7
    const/4 v8, 0x0

    cmpg-float v8, v8, v3

    if-gez v8, :cond_8

    float-to-double v8, v3

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpg-double v8, v8, v10

    if-gtz v8, :cond_8

    .line 198
    sub-float v8, v4, v5

    add-float v9, v4, v5

    div-float v7, v8, v9

    goto :goto_1

    .line 200
    :cond_8
    float-to-double v8, v3

    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    cmpl-double v8, v8, v10

    if-lez v8, :cond_2

    .line 202
    sub-float v8, v4, v5

    const/high16 v9, 0x40000000    # 2.0f

    add-float v10, v4, v5

    sub-float/2addr v9, v10

    div-float v7, v8, v9

    goto/16 :goto_1
.end method

.method public static RgbToHsl(I[F)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "hsl"    # [F

    .prologue
    .line 151
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p0, 0xff

    invoke-static {v0, v1, v2, p1}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsl(III[F)V

    .line 152
    return-void
.end method

.method public static RgbToHsv(III[F)V
    .locals 11
    .param p0, "red"    # I
    .param p1, "green"    # I
    .param p2, "blue"    # I
    .param p3, "hsv"    # [F

    .prologue
    .line 217
    const/4 v2, 0x0

    .local v2, "h":F
    const/4 v6, 0x0

    .local v6, "s":F
    const/4 v7, 0x0

    .line 220
    .local v7, "v":F
    int-to-float v8, p0

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v5, v8, v9

    .line 221
    .local v5, "r":F
    int-to-float v8, p1

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v1, v8, v9

    .line 222
    .local v1, "g":F
    int-to-float v8, p2

    const/high16 v9, 0x437f0000    # 255.0f

    div-float v0, v8, v9

    .line 224
    .local v0, "b":F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 225
    .local v3, "max":F
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v8

    invoke-static {v5, v8}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 228
    .local v4, "min":F
    cmpl-float v8, v3, v4

    if-nez v8, :cond_1

    .line 230
    const/4 v2, 0x0

    .line 250
    :cond_0
    :goto_0
    move v7, v3

    .line 253
    const/4 v8, 0x0

    cmpl-float v8, v3, v8

    if-nez v8, :cond_5

    .line 255
    const/4 v6, 0x0

    .line 261
    :goto_1
    const/4 v8, 0x0

    const/4 v9, 0x0

    const/high16 v10, 0x43b40000    # 360.0f

    invoke-static {v9, v2, v10}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v9

    aput v9, p3, v8

    .line 262
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v6, v10}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v9

    aput v9, p3, v8

    .line 263
    const/4 v8, 0x2

    const/4 v9, 0x0

    const/high16 v10, 0x3f800000    # 1.0f

    invoke-static {v9, v7, v10}, Lmiui/imagefilters/ImageFilterUtils;->clamp(FFF)F

    move-result v9

    aput v9, p3, v8

    .line 264
    return-void

    .line 232
    :cond_1
    cmpl-float v8, v3, v5

    if-nez v8, :cond_2

    cmpl-float v8, v1, v0

    if-ltz v8, :cond_2

    .line 234
    const/high16 v8, 0x42700000    # 60.0f

    sub-float v9, v1, v0

    mul-float/2addr v8, v9

    sub-float v9, v3, v4

    div-float v2, v8, v9

    goto :goto_0

    .line 236
    :cond_2
    cmpl-float v8, v3, v5

    if-nez v8, :cond_3

    cmpg-float v8, v1, v0

    if-gez v8, :cond_3

    .line 238
    const/high16 v8, 0x42700000    # 60.0f

    sub-float v9, v1, v0

    mul-float/2addr v8, v9

    sub-float v9, v3, v4

    div-float/2addr v8, v9

    const/high16 v9, 0x43b40000    # 360.0f

    add-float v2, v8, v9

    goto :goto_0

    .line 240
    :cond_3
    cmpl-float v8, v3, v1

    if-nez v8, :cond_4

    .line 242
    const/high16 v8, 0x42700000    # 60.0f

    sub-float v9, v0, v5

    mul-float/2addr v8, v9

    sub-float v9, v3, v4

    div-float/2addr v8, v9

    const/high16 v9, 0x42f00000    # 120.0f

    add-float v2, v8, v9

    goto :goto_0

    .line 244
    :cond_4
    cmpl-float v8, v3, v0

    if-nez v8, :cond_0

    .line 246
    const/high16 v8, 0x42700000    # 60.0f

    sub-float v9, v5, v1

    mul-float/2addr v8, v9

    sub-float v9, v3, v4

    div-float/2addr v8, v9

    const/high16 v9, 0x43700000    # 240.0f

    add-float v2, v8, v9

    goto :goto_0

    .line 258
    :cond_5
    sub-float v8, v3, v4

    div-float v6, v8, v3

    goto :goto_1
.end method

.method public static RgbToHsv(I[F)V
    .locals 3
    .param p0, "color"    # I
    .param p1, "hsv"    # [F

    .prologue
    .line 212
    ushr-int/lit8 v0, p0, 0x10

    and-int/lit16 v0, v0, 0xff

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 v2, p0, 0xff

    invoke-static {v0, v1, v2, p1}, Lmiui/imagefilters/ImageFilterUtils;->RgbToHsv(III[F)V

    .line 213
    return-void
.end method

.method public static checkChannelParam(Ljava/lang/String;[Z)V
    .locals 4
    .param p0, "paramString"    # Ljava/lang/String;
    .param p1, "outRgba"    # [Z

    .prologue
    const/4 v3, 0x1

    .line 297
    const-string v1, "r"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "red"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 298
    :cond_0
    const/4 v1, 0x0

    aput-boolean v3, p1, v1

    .line 310
    :cond_1
    :goto_0
    return-void

    .line 299
    :cond_2
    const-string v1, "g"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    const-string v1, "green"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 300
    :cond_3
    aput-boolean v3, p1, v3

    goto :goto_0

    .line 301
    :cond_4
    const-string v1, "b"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const-string v1, "blue"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 302
    :cond_5
    const/4 v1, 0x2

    aput-boolean v3, p1, v1

    goto :goto_0

    .line 303
    :cond_6
    const-string v1, "a"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    const-string v1, "alpha"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 304
    :cond_7
    array-length v1, p1

    const/4 v2, 0x4

    if-lt v1, v2, :cond_1

    const/4 v1, 0x3

    aput-boolean v3, p1, v1

    goto :goto_0

    .line 306
    :cond_8
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 307
    aput-boolean v3, p1, v0

    .line 306
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static clamp(FFF)F
    .locals 1
    .param p0, "min"    # F
    .param p1, "value"    # F
    .param p2, "max"    # F

    .prologue
    .line 285
    cmpg-float v0, p1, p0

    if-gtz v0, :cond_0

    .line 287
    .end local p0    # "min":F
    :goto_0
    return p0

    .line 286
    .restart local p0    # "min":F
    :cond_0
    cmpl-float v0, p1, p2

    if-ltz v0, :cond_1

    move p0, p2

    goto :goto_0

    :cond_1
    move p0, p1

    .line 287
    goto :goto_0
.end method

.method public static clamp(III)I
    .locals 0
    .param p0, "min"    # I
    .param p1, "value"    # I
    .param p2, "max"    # I

    .prologue
    .line 279
    if-gt p1, p0, :cond_0

    .line 281
    .end local p0    # "min":I
    :goto_0
    return p0

    .line 280
    .restart local p0    # "min":I
    :cond_0
    if-lt p1, p2, :cond_1

    move p0, p2

    goto :goto_0

    :cond_1
    move p0, p1

    .line 281
    goto :goto_0
.end method

.method public static convertColorToGrayscale(I)I
    .locals 3
    .param p0, "color"    # I

    .prologue
    .line 291
    const v0, 0x3e991687    # 0.299f

    const/high16 v1, 0xff0000

    and-int/2addr v1, p0

    ushr-int/lit8 v1, v1, 0x10

    int-to-float v1, v1

    mul-float/2addr v0, v1

    const v1, 0x3f1645a2    # 0.587f

    const v2, 0xff00

    and-int/2addr v2, p0

    ushr-int/lit8 v2, v2, 0x8

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    const v1, 0x3de978d5    # 0.114f

    and-int/lit16 v2, p0, 0xff

    int-to-float v2, v2

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static interpolate(IIIII)I
    .locals 3
    .param p0, "inMin"    # I
    .param p1, "inMax"    # I
    .param p2, "outMin"    # I
    .param p3, "outMax"    # I
    .param p4, "value"    # I

    .prologue
    .line 275
    int-to-float v0, p2

    int-to-float v1, p4

    sub-int v2, p3, p2

    int-to-float v2, v2

    mul-float/2addr v1, v2

    sub-int v2, p1, p0

    int-to-float v2, v2

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public static interpolate([F[FF[F)V
    .locals 5
    .param p0, "hsl1"    # [F
    .param p1, "hsl2"    # [F
    .param p2, "amount"    # F
    .param p3, "hslOut"    # [F

    .prologue
    .line 268
    array-length v2, p0

    array-length v3, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 269
    .local v1, "size":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 270
    aget v2, p0, v0

    aget v3, p1, v0

    aget v4, p0, v0

    sub-float/2addr v3, v4

    mul-float/2addr v3, p2

    add-float/2addr v2, v3

    aput v2, p3, v0

    .line 269
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 272
    :cond_0
    return-void
.end method

.method static setProperty(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z
    .locals 28
    .param p0, "filterObj"    # Ljava/lang/Object;
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/Object;

    .prologue
    .line 313
    new-instance v25, Ljava/lang/StringBuilder;

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    const-string v26, "set"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    .line 314
    .local v23, "strPropertyMethod":Ljava/lang/String;
    const/16 v22, 0x0

    .line 316
    .local v22, "propertyMethod":Ljava/lang/reflect/Method;
    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/Class;->getMethods()[Ljava/lang/reflect/Method;

    move-result-object v17

    .line 317
    .local v17, "methods":[Ljava/lang/reflect/Method;
    move-object/from16 v4, v17

    .local v4, "arr$":[Ljava/lang/reflect/Method;
    array-length v15, v4

    .local v15, "len$":I
    const/4 v13, 0x0

    .local v13, "i$":I
    :goto_0
    if-ge v13, v15, :cond_0

    aget-object v16, v4, v13

    .line 318
    .local v16, "method":Ljava/lang/reflect/Method;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v25

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v25

    if-eqz v25, :cond_1

    invoke-virtual/range {v16 .. v16}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v25

    move-object/from16 v0, v25

    array-length v0, v0

    move/from16 v25, v0

    const/16 v26, 0x1

    move/from16 v0, v25

    move/from16 v1, v26

    if-ne v0, v1, :cond_1

    .line 320
    move-object/from16 v22, v16

    .line 324
    .end local v16    # "method":Ljava/lang/reflect/Method;
    :cond_0
    if-nez v22, :cond_2

    .line 325
    const-string v25, "ImageFilterUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "unknown property:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ",obj:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/16 v25, 0x0

    .line 395
    :goto_1
    return v25

    .line 317
    .restart local v16    # "method":Ljava/lang/reflect/Method;
    :cond_1
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 329
    .end local v16    # "method":Ljava/lang/reflect/Method;
    :cond_2
    const-class v25, Lmiui/imagefilters/FilterParamType;

    move-object/from16 v0, v22

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Method;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v20

    check-cast v20, Lmiui/imagefilters/FilterParamType;

    .line 330
    .local v20, "paramType":Lmiui/imagefilters/FilterParamType;
    if-nez v20, :cond_4

    sget-object v21, Lmiui/imagefilters/FilterParamType$ParamType;->DEFAULT:Lmiui/imagefilters/FilterParamType$ParamType;

    .line 332
    .local v21, "paramTypeEnum":Lmiui/imagefilters/FilterParamType$ParamType;
    :goto_2
    invoke-virtual/range {v22 .. v22}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v25

    const/16 v26, 0x0

    aget-object v19, v25, v26

    .line 334
    .local v19, "paramClass":Ljava/lang/Class;
    const/16 v18, 0x0

    .line 335
    .local v18, "objValue":Ljava/lang/Object;
    :try_start_0
    move-object/from16 v0, p2

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v25, v0

    if-eqz v25, :cond_18

    .line 336
    move-object/from16 v0, p2

    check-cast v0, Ljava/lang/String;

    move-object/from16 v24, v0

    .line 337
    .local v24, "strValue":Ljava/lang/String;
    const-class v25, Ljava/lang/String;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_5

    .line 338
    move-object/from16 v18, v24

    .line 390
    .end local v18    # "objValue":Ljava/lang/Object;
    .end local v24    # "strValue":Ljava/lang/String;
    :cond_3
    :goto_3
    const/16 v25, 0x1

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v25, v0

    const/16 v26, 0x0

    aput-object v18, v25, v26

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    move-object/from16 v2, v25

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 395
    const/16 v25, 0x1

    goto :goto_1

    .line 330
    .end local v19    # "paramClass":Ljava/lang/Class;
    .end local v21    # "paramTypeEnum":Lmiui/imagefilters/FilterParamType$ParamType;
    :cond_4
    invoke-interface/range {v20 .. v20}, Lmiui/imagefilters/FilterParamType;->value()Lmiui/imagefilters/FilterParamType$ParamType;

    move-result-object v21

    goto :goto_2

    .line 339
    .restart local v18    # "objValue":Ljava/lang/Object;
    .restart local v19    # "paramClass":Ljava/lang/Class;
    .restart local v21    # "paramTypeEnum":Lmiui/imagefilters/FilterParamType$ParamType;
    .restart local v24    # "strValue":Ljava/lang/String;
    :cond_5
    :try_start_1
    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_7

    .line 340
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v14

    .line 341
    .local v14, "intVal":I
    sget-object v25, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_6

    invoke-static {v14}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(I)I

    move-result v14

    .line 342
    :cond_6
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    .line 343
    .local v18, "objValue":Ljava/lang/Integer;
    goto :goto_3

    .end local v14    # "intVal":I
    .local v18, "objValue":Ljava/lang/Object;
    :cond_7
    sget-object v25, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_9

    .line 344
    invoke-static/range {v24 .. v24}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v11

    .line 345
    .local v11, "floatVal":F
    sget-object v25, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_8

    invoke-static {v11}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v11

    .line 346
    :cond_8
    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v18

    .line 347
    .local v18, "objValue":Ljava/lang/Float;
    goto :goto_3

    .end local v11    # "floatVal":F
    .local v18, "objValue":Ljava/lang/Object;
    :cond_9
    sget-object v25, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_b

    .line 348
    invoke-static/range {v24 .. v24}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v8

    .line 349
    .local v8, "doubleVal":D
    sget-object v25, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_a

    invoke-static {v8, v9}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(D)D

    move-result-wide v8

    .line 350
    :cond_a
    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v18

    .line 351
    .local v18, "objValue":Ljava/lang/Double;
    goto :goto_3

    .end local v8    # "doubleVal":D
    .local v18, "objValue":Ljava/lang/Object;
    :cond_b
    sget-object v25, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_c

    .line 352
    invoke-static/range {v24 .. v24}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v18

    .local v18, "objValue":Ljava/lang/Boolean;
    goto/16 :goto_3

    .line 353
    .local v18, "objValue":Ljava/lang/Object;
    :cond_c
    const-class v25, Landroid/graphics/Bitmap;

    move-object/from16 v0, v25

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_d

    .line 354
    invoke-static/range {v24 .. v24}, Lmiui/content/res/IconCustomizer;->getRawIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v18

    .local v18, "objValue":Landroid/graphics/Bitmap;
    goto/16 :goto_3

    .line 355
    .local v18, "objValue":Ljava/lang/Object;
    :cond_d
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->isEnum()Z

    move-result v25

    if-eqz v25, :cond_e

    .line 356
    move-object/from16 v0, v19

    move-object/from16 v1, v24

    invoke-static {v0, v1}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v18

    .local v18, "objValue":Ljava/lang/Enum;
    goto/16 :goto_3

    .line 357
    .local v18, "objValue":Ljava/lang/Object;
    :cond_e
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->isArray()Z

    move-result v25

    if-eqz v25, :cond_17

    .line 358
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getComponentType()Ljava/lang/Class;

    move-result-object v6

    .line 359
    .local v6, "componentClass":Ljava/lang/Class;
    const-string v25, ","

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v10

    .line 360
    .local v10, "eles":[Ljava/lang/String;
    sget-object v25, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_11

    .line 361
    array-length v0, v10

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v5, v0, [I

    .line 362
    .local v5, "array":[I
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_4
    array-length v0, v5

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v12, v0, :cond_10

    .line 363
    aget-object v25, v10, v12

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v25

    aput v25, v5, v12

    .line 364
    sget-object v25, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_f

    aget v25, v5, v12

    invoke-static/range {v25 .. v25}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(I)I

    move-result v25

    aput v25, v5, v12

    .line 362
    :cond_f
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 366
    :cond_10
    move-object/from16 v18, v5

    .line 367
    .local v18, "objValue":[I
    goto/16 :goto_3

    .end local v5    # "array":[I
    .end local v12    # "i":I
    .local v18, "objValue":Ljava/lang/Object;
    :cond_11
    sget-object v25, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_14

    .line 368
    array-length v0, v10

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v5, v0, [F

    .line 369
    .local v5, "array":[F
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_5
    array-length v0, v5

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v12, v0, :cond_13

    .line 370
    aget-object v25, v10, v12

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    aput v25, v5, v12

    .line 371
    sget-object v25, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_12

    aget v25, v5, v12

    invoke-static/range {v25 .. v25}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(F)F

    move-result v25

    aput v25, v5, v12

    .line 369
    :cond_12
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 373
    :cond_13
    move-object/from16 v18, v5

    .line 374
    .local v18, "objValue":[F
    goto/16 :goto_3

    .end local v5    # "array":[F
    .end local v12    # "i":I
    .local v18, "objValue":Ljava/lang/Object;
    :cond_14
    sget-object v25, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    move-object/from16 v0, v25

    invoke-virtual {v0, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v25

    if-eqz v25, :cond_3

    .line 375
    array-length v0, v10

    move/from16 v25, v0

    move/from16 v0, v25

    new-array v5, v0, [D

    .line 376
    .local v5, "array":[D
    const/4 v12, 0x0

    .restart local v12    # "i":I
    :goto_6
    array-length v0, v5

    move/from16 v25, v0

    move/from16 v0, v25

    if-ge v12, v0, :cond_16

    .line 377
    aget-object v25, v10, v12

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v25

    move/from16 v0, v25

    float-to-double v0, v0

    move-wide/from16 v26, v0

    aput-wide v26, v5, v12

    .line 378
    sget-object v25, Lmiui/imagefilters/FilterParamType$ParamType;->ICON_SIZE:Lmiui/imagefilters/FilterParamType$ParamType;

    move-object/from16 v0, v21

    move-object/from16 v1, v25

    if-ne v0, v1, :cond_15

    aget-wide v26, v5, v12

    invoke-static/range {v26 .. v27}, Lmiui/content/res/IconCustomizer;->hdpiIconSizeToCurrent(D)D

    move-result-wide v26

    aput-wide v26, v5, v12

    .line 376
    :cond_15
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 380
    :cond_16
    move-object/from16 v18, v5

    .local v18, "objValue":[D
    goto/16 :goto_3

    .line 383
    .end local v5    # "array":[D
    .end local v6    # "componentClass":Ljava/lang/Class;
    .end local v10    # "eles":[Ljava/lang/String;
    .end local v12    # "i":I
    .local v18, "objValue":Ljava/lang/Object;
    :cond_17
    const-string v25, "ImageFilterUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "unknown param type:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v27

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ",obj:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ",property:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const/16 v25, 0x0

    goto/16 :goto_1

    .line 386
    .end local v24    # "strValue":Ljava/lang/String;
    :cond_18
    move-object/from16 v0, p2

    instance-of v0, v0, Lmiui/imagefilters/IImageFilter$ImageFilterGroup;

    move/from16 v25, v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    if-eqz v25, :cond_3

    .line 387
    move-object/from16 v18, p2

    goto/16 :goto_3

    .line 391
    .end local v18    # "objValue":Ljava/lang/Object;
    :catch_0
    move-exception v7

    .line 392
    .local v7, "e":Ljava/lang/Exception;
    const-string v25, "ImageFilterUtils"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "set property fail. obj:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ",property:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    const-string v27, ",value:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object/from16 v0, v26

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    move-object/from16 v0, v25

    move-object/from16 v1, v26

    invoke-static {v0, v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 393
    const/16 v25, 0x0

    goto/16 :goto_1
.end method
