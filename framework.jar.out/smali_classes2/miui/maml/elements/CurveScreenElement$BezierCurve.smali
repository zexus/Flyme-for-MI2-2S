.class Lmiui/maml/elements/CurveScreenElement$BezierCurve;
.super Ljava/lang/Object;
.source "CurveScreenElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiui/maml/elements/CurveScreenElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BezierCurve"
.end annotation


# instance fields
.field private mCachedContrlPoints:[F

.field private mCachedSegmentLens:[F

.field final synthetic this$0:Lmiui/maml/elements/CurveScreenElement;


# direct methods
.method constructor <init>(Lmiui/maml/elements/CurveScreenElement;)V
    .locals 0

    .prologue
    .line 243
    iput-object p1, p0, Lmiui/maml/elements/CurveScreenElement$BezierCurve;->this$0:Lmiui/maml/elements/CurveScreenElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public computeControlPoints(Ljava/util/ArrayList;F)[F
    .locals 17
    .param p2, "curvature"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;F)[F"
        }
    .end annotation

    .prologue
    .line 248
    .local p1, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    const/4 v13, 0x6

    if-lt v12, v13, :cond_0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    rem-int/lit8 v12, v12, 0x2

    if-eqz v12, :cond_1

    .line 249
    :cond_0
    const/4 v12, 0x0

    .line 284
    :goto_0
    return-object v12

    .line 252
    :cond_1
    const/high16 v12, 0x40000000    # 2.0f

    div-float p2, p2, v12

    .line 253
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/CurveScreenElement$BezierCurve;->mCachedSegmentLens:[F

    if-eqz v12, :cond_2

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/CurveScreenElement$BezierCurve;->mCachedSegmentLens:[F

    array-length v12, v12

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x1

    if-eq v12, v13, :cond_3

    .line 254
    :cond_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x1

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Lmiui/maml/elements/CurveScreenElement$BezierCurve;->mCachedSegmentLens:[F

    .line 256
    :cond_3
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/CurveScreenElement$BezierCurve;->mCachedContrlPoints:[F

    if-eqz v12, :cond_4

    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/CurveScreenElement$BezierCurve;->mCachedContrlPoints:[F

    array-length v12, v12

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v13

    add-int/lit8 v13, v13, -0x4

    mul-int/lit8 v13, v13, 0x2

    if-eq v12, v13, :cond_5

    .line 257
    :cond_4
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x4

    mul-int/lit8 v12, v12, 0x2

    new-array v12, v12, [F

    move-object/from16 v0, p0

    iput-object v12, v0, Lmiui/maml/elements/CurveScreenElement$BezierCurve;->mCachedContrlPoints:[F

    .line 259
    :cond_5
    const/4 v2, 0x2

    .local v2, "i":I
    :goto_1
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x3

    if-ge v2, v12, :cond_6

    .line 260
    add-int/lit8 v12, v2, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 261
    .local v8, "xp":F
    add-int/lit8 v12, v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 262
    .local v11, "yp":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 263
    .local v6, "x":F
    add-int/lit8 v12, v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 264
    .local v9, "y":F
    add-int/lit8 v12, v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 265
    .local v7, "xn":F
    add-int/lit8 v12, v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 266
    .local v10, "yn":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/CurveScreenElement$BezierCurve;->mCachedSegmentLens:[F

    add-int/lit8 v13, v2, -0x2

    div-int/lit8 v13, v13, 0x2

    sub-float v14, v8, v6

    sub-float v15, v8, v6

    mul-float/2addr v14, v15

    sub-float v15, v11, v9

    sub-float v16, v11, v9

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    aput v14, v12, v13

    .line 267
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/CurveScreenElement$BezierCurve;->mCachedSegmentLens:[F

    add-int/lit8 v13, v2, -0x2

    div-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    sub-float v14, v7, v6

    sub-float v15, v7, v6

    mul-float/2addr v14, v15

    sub-float v15, v10, v9

    sub-float v16, v10, v9

    mul-float v15, v15, v16

    add-float/2addr v14, v15

    float-to-double v14, v14

    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    double-to-float v14, v14

    aput v14, v12, v13

    .line 259
    add-int/lit8 v2, v2, 0x4

    goto/16 :goto_1

    .line 269
    .end local v6    # "x":F
    .end local v7    # "xn":F
    .end local v8    # "xp":F
    .end local v9    # "y":F
    .end local v10    # "yn":F
    .end local v11    # "yp":F
    :cond_6
    const/4 v2, 0x2

    :goto_2
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v12

    add-int/lit8 v12, v12, -0x3

    if-ge v2, v12, :cond_7

    .line 270
    add-int/lit8 v12, v2, -0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 271
    .restart local v8    # "xp":F
    add-int/lit8 v12, v2, -0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v11

    .line 272
    .restart local v11    # "yp":F
    move-object/from16 v0, p1

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 273
    .restart local v6    # "x":F
    add-int/lit8 v12, v2, 0x1

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v9

    .line 274
    .restart local v9    # "y":F
    add-int/lit8 v12, v2, 0x2

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v7

    .line 275
    .restart local v7    # "xn":F
    add-int/lit8 v12, v2, 0x3

    move-object/from16 v0, p1

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Float;

    invoke-virtual {v12}, Ljava/lang/Float;->floatValue()F

    move-result v10

    .line 276
    .restart local v10    # "yn":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/CurveScreenElement$BezierCurve;->mCachedSegmentLens:[F

    add-int/lit8 v13, v2, -0x2

    div-int/lit8 v13, v13, 0x2

    aget v12, v12, v13

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/elements/CurveScreenElement$BezierCurve;->mCachedSegmentLens:[F

    add-int/lit8 v14, v2, -0x2

    div-int/lit8 v14, v14, 0x2

    add-int/lit8 v14, v14, 0x1

    aget v13, v13, v14

    add-float v5, v12, v13

    .line 277
    .local v5, "lenpn":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/CurveScreenElement$BezierCurve;->mCachedSegmentLens:[F

    add-int/lit8 v13, v2, -0x2

    div-int/lit8 v13, v13, 0x2

    aget v12, v12, v13

    div-float v4, v12, v5

    .line 278
    .local v4, "kp":F
    const/high16 v12, 0x3f800000    # 1.0f

    sub-float v3, v12, v4

    .line 279
    .local v3, "kn":F
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/CurveScreenElement$BezierCurve;->mCachedContrlPoints:[F

    add-int/lit8 v13, v2, -0x2

    mul-int/lit8 v13, v13, 0x2

    sub-float v14, v8, v7

    mul-float/2addr v14, v4

    mul-float v14, v14, p2

    add-float/2addr v14, v6

    aput v14, v12, v13

    .line 280
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/CurveScreenElement$BezierCurve;->mCachedContrlPoints:[F

    add-int/lit8 v13, v2, -0x2

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x1

    sub-float v14, v11, v10

    mul-float/2addr v14, v4

    mul-float v14, v14, p2

    add-float/2addr v14, v9

    aput v14, v12, v13

    .line 281
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/CurveScreenElement$BezierCurve;->mCachedContrlPoints:[F

    add-int/lit8 v13, v2, -0x2

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x2

    sub-float v14, v7, v8

    mul-float/2addr v14, v3

    mul-float v14, v14, p2

    add-float/2addr v14, v6

    aput v14, v12, v13

    .line 282
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/CurveScreenElement$BezierCurve;->mCachedContrlPoints:[F

    add-int/lit8 v13, v2, -0x2

    mul-int/lit8 v13, v13, 0x2

    add-int/lit8 v13, v13, 0x3

    sub-float v14, v10, v11

    mul-float/2addr v14, v3

    mul-float v14, v14, p2

    add-float/2addr v14, v9

    aput v14, v12, v13

    .line 269
    add-int/lit8 v2, v2, 0x2

    goto/16 :goto_2

    .line 284
    .end local v3    # "kn":F
    .end local v4    # "kp":F
    .end local v5    # "lenpn":F
    .end local v6    # "x":F
    .end local v7    # "xn":F
    .end local v8    # "xp":F
    .end local v9    # "y":F
    .end local v10    # "yn":F
    .end local v11    # "yp":F
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lmiui/maml/elements/CurveScreenElement$BezierCurve;->mCachedContrlPoints:[F

    goto/16 :goto_0
.end method

.method public inflateBezierPath(Ljava/util/ArrayList;[FLandroid/graphics/Path;)V
    .locals 8
    .param p2, "ctrlPoints"    # [F
    .param p3, "path"    # Landroid/graphics/Path;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;[F",
            "Landroid/graphics/Path;",
            ")V"
        }
    .end annotation

    .prologue
    .line 288
    .local p1, "points":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x6

    if-lt v0, v1, :cond_0

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_1

    .line 299
    :cond_0
    return-void

    .line 292
    :cond_1
    invoke-virtual {p3}, Landroid/graphics/Path;->reset()V

    .line 293
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v1

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p3, v1, v0}, Landroid/graphics/Path;->moveTo(FF)V

    .line 294
    const/4 v7, 0x4

    .local v7, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x3

    if-ge v7, v0, :cond_0

    .line 295
    add-int/lit8 v0, v7, -0x4

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x2

    aget v1, p2, v0

    add-int/lit8 v0, v7, -0x4

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x3

    aget v2, p2, v0

    add-int/lit8 v0, v7, -0x4

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x4

    aget v3, p2, v0

    add-int/lit8 v0, v7, -0x4

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x5

    aget v4, p2, v0

    invoke-virtual {p1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v5

    add-int/lit8 v0, v7, 0x1

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v6

    move-object v0, p3

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    .line 294
    add-int/lit8 v7, v7, 0x2

    goto :goto_0
.end method
