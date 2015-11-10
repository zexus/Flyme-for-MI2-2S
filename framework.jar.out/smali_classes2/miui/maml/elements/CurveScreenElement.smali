.class public Lmiui/maml/elements/CurveScreenElement;
.super Lmiui/maml/elements/GeometryScreenElement;
.source "CurveScreenElement.java"

# interfaces
.implements Lmiui/maml/elements/VariableArrayElement$VarObserver;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/CurveScreenElement$BezierCurve;,
        Lmiui/maml/elements/CurveScreenElement$DataInfo;
    }
.end annotation


# static fields
.field public static final TAG_NAME:Ljava/lang/String; = "Curve"


# instance fields
.field private mBezierCurve:Lmiui/maml/elements/CurveScreenElement$BezierCurve;

.field private mClose:Z

.field private mControlPoints:[F

.field private mCurvature:F

.field private mCurveChanged:Z

.field private mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

.field private mDataValid:Z

.field private mDynamic:Z

.field private mDynamicExp:Lmiui/maml/data/Expression;

.field private mForceUpdate:Z

.field private mLoaded:Z

.field private mNode:Lorg/w3c/dom/Element;

.field private mPath:Landroid/graphics/Path;

.field private mPoints:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private mXData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

.field private mYData:Lmiui/maml/elements/CurveScreenElement$DataInfo;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    .line 87
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/GeometryScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    .line 72
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mPath:Landroid/graphics/Path;

    .line 80
    new-instance v0, Lmiui/maml/elements/CurveScreenElement$BezierCurve;

    invoke-direct {v0, p0}, Lmiui/maml/elements/CurveScreenElement$BezierCurve;-><init>(Lmiui/maml/elements/CurveScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mBezierCurve:Lmiui/maml/elements/CurveScreenElement$BezierCurve;

    .line 88
    iput-object p1, p0, Lmiui/maml/elements/CurveScreenElement;->mNode:Lorg/w3c/dom/Element;

    .line 89
    return-void
.end method

.method private buildData(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/CurveScreenElement$DataInfo;
    .locals 4
    .param p1, "vars"    # Lmiui/maml/data/Variables;
    .param p2, "data"    # Ljava/lang/String;
    .param p3, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v2, 0x0

    .line 133
    invoke-virtual {p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, v2

    .line 148
    :goto_0
    return-object v0

    .line 137
    :cond_0
    new-instance v0, Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-direct {v0, p0}, Lmiui/maml/elements/CurveScreenElement$DataInfo;-><init>(Lmiui/maml/elements/CurveScreenElement;)V

    .line 138
    .local v0, "info":Lmiui/maml/elements/CurveScreenElement$DataInfo;
    const-string v3, "##"

    invoke-virtual {p2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 139
    const/4 v3, 0x2

    invoke-virtual {p2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Lmiui/maml/ScreenElementRoot;->findElement(Ljava/lang/String;)Lmiui/maml/elements/ScreenElement;

    move-result-object v1

    .line 140
    .local v1, "varArray":Lmiui/maml/elements/ScreenElement;
    if-eqz v1, :cond_1

    instance-of v3, v1, Lmiui/maml/elements/VariableArrayElement;

    if-eqz v3, :cond_1

    .line 141
    check-cast v1, Lmiui/maml/elements/VariableArrayElement;

    .end local v1    # "varArray":Lmiui/maml/elements/ScreenElement;
    iput-object v1, v0, Lmiui/maml/elements/CurveScreenElement$DataInfo;->mVarArray:Lmiui/maml/elements/VariableArrayElement;

    goto :goto_0

    .restart local v1    # "varArray":Lmiui/maml/elements/ScreenElement;
    :cond_1
    move-object v0, v2

    .line 143
    goto :goto_0

    .line 146
    .end local v1    # "varArray":Lmiui/maml/elements/ScreenElement;
    :cond_2
    invoke-static {p1, p2}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v2

    iput-object v2, v0, Lmiui/maml/elements/CurveScreenElement$DataInfo;->mExps:[Lmiui/maml/data/Expression;

    goto :goto_0
.end method


# virtual methods
.method protected doTick(J)V
    .locals 15
    .param p1, "currentTime"    # J

    .prologue
    .line 190
    invoke-super/range {p0 .. p2}, Lmiui/maml/elements/GeometryScreenElement;->doTick(J)V

    .line 191
    invoke-virtual {p0}, Lmiui/maml/elements/CurveScreenElement;->isVisible()Z

    move-result v9

    if-nez v9, :cond_1

    .line 241
    :cond_0
    :goto_0
    return-void

    .line 195
    :cond_1
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mControlPoints:[F

    if-eqz v9, :cond_2

    iget-boolean v9, p0, Lmiui/maml/elements/CurveScreenElement;->mForceUpdate:Z

    if-nez v9, :cond_2

    iget-boolean v9, p0, Lmiui/maml/elements/CurveScreenElement;->mDynamic:Z

    if-nez v9, :cond_2

    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mDynamicExp:Lmiui/maml/data/Expression;

    if-eqz v9, :cond_0

    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mDynamicExp:Lmiui/maml/data/Expression;

    invoke-virtual {v9}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v10

    const-wide/16 v12, 0x0

    cmpl-double v9, v10, v12

    if-lez v9, :cond_0

    .line 197
    :cond_2
    const/4 v9, 0x0

    iput-boolean v9, p0, Lmiui/maml/elements/CurveScreenElement;->mForceUpdate:Z

    .line 199
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    if-eqz v9, :cond_3

    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v9}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->size()I

    move-result v9

    if-lez v9, :cond_3

    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v9}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->size()I

    move-result v9

    rem-int/lit8 v9, v9, 0x2

    if-eqz v9, :cond_4

    :cond_3
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mXData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mYData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    if-eqz v9, :cond_6

    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mXData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v9}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->size()I

    move-result v9

    if-lez v9, :cond_6

    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mXData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v9}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->size()I

    move-result v9

    iget-object v10, p0, Lmiui/maml/elements/CurveScreenElement;->mYData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v10}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->size()I

    move-result v10

    if-ne v9, v10, :cond_6

    :cond_4
    const/4 v9, 0x1

    :goto_1
    iput-boolean v9, p0, Lmiui/maml/elements/CurveScreenElement;->mDataValid:Z

    .line 201
    iget-boolean v9, p0, Lmiui/maml/elements/CurveScreenElement;->mDataValid:Z

    if-eqz v9, :cond_0

    .line 205
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->clear()V

    .line 206
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    if-eqz v9, :cond_7

    .line 207
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v9}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->toPoints()Ljava/util/ArrayList;

    move-result-object v9

    iput-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    .line 218
    :cond_5
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 219
    .local v1, "x0":F
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v5

    .line 220
    .local v5, "y0":F
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    const/4 v10, 0x2

    iget-object v11, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    rem-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v2

    .line 221
    .local v2, "x1":F
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    const/4 v10, 0x3

    iget-object v11, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v11

    rem-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v6

    .line 222
    .local v6, "y1":F
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    iget-object v10, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x2

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v4

    .line 223
    .local v4, "xn":F
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    iget-object v10, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    add-int/lit8 v10, v10, -0x1

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Float;

    invoke-virtual {v9}, Ljava/lang/Float;->floatValue()F

    move-result v8

    .line 224
    .local v8, "yn":F
    iget-boolean v9, p0, Lmiui/maml/elements/CurveScreenElement;->mClose:Z

    if-eqz v9, :cond_8

    .line 225
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 226
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 227
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 228
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 229
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-static {v2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :goto_2
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mBezierCurve:Lmiui/maml/elements/CurveScreenElement$BezierCurve;

    iget-object v10, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    iget v11, p0, Lmiui/maml/elements/CurveScreenElement;->mCurvature:F

    invoke-virtual {v9, v10, v11}, Lmiui/maml/elements/CurveScreenElement$BezierCurve;->computeControlPoints(Ljava/util/ArrayList;F)[F

    move-result-object v9

    iput-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mControlPoints:[F

    .line 239
    const/4 v9, 0x1

    iput-boolean v9, p0, Lmiui/maml/elements/CurveScreenElement;->mCurveChanged:Z

    goto/16 :goto_0

    .line 199
    .end local v1    # "x0":F
    .end local v2    # "x1":F
    .end local v4    # "xn":F
    .end local v5    # "y0":F
    .end local v6    # "y1":F
    .end local v8    # "yn":F
    :cond_6
    const/4 v9, 0x0

    goto/16 :goto_1

    .line 209
    :cond_7
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mXData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v9}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->toPoints()Ljava/util/ArrayList;

    move-result-object v3

    .line 210
    .local v3, "xArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mYData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v9}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->toPoints()Ljava/util/ArrayList;

    move-result-object v7

    .line 211
    .local v7, "yArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    if-eqz v3, :cond_5

    if-eqz v7, :cond_5

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ne v9, v10, :cond_5

    .line 212
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v0, v9, :cond_5

    .line 213
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 212
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 232
    .end local v0    # "i":I
    .end local v3    # "xArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .end local v7    # "yArr":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Float;>;"
    .restart local v1    # "x0":F
    .restart local v2    # "x1":F
    .restart local v4    # "xn":F
    .restart local v5    # "y0":F
    .restart local v6    # "y1":F
    .restart local v8    # "yn":F
    :cond_8
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    const/4 v10, 0x0

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 233
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    const/4 v10, 0x1

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    invoke-virtual {v9, v10, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 234
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 235
    iget-object v9, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public finish()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    invoke-super {p0}, Lmiui/maml/elements/GeometryScreenElement;->finish()V

    .line 154
    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    if-eqz v0, :cond_1

    .line 155
    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->registerVarArrayObserver(Z)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 157
    :cond_1
    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mXData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    if-eqz v0, :cond_2

    .line 158
    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mXData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->registerVarArrayObserver(Z)V

    .line 160
    :cond_2
    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mYData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mYData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v0, v1}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->registerVarArrayObserver(Z)V

    goto :goto_0
.end method

.method public init()V
    .locals 11

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    const/4 v10, 0x1

    .line 93
    invoke-super {p0}, Lmiui/maml/elements/GeometryScreenElement;->init()V

    .line 95
    iget-boolean v7, p0, Lmiui/maml/elements/CurveScreenElement;->mLoaded:Z

    if-nez v7, :cond_0

    .line 96
    iget-object v7, p0, Lmiui/maml/elements/CurveScreenElement;->mNode:Lorg/w3c/dom/Element;

    const-string v8, "data"

    invoke-virtual {p0, v7, v8}, Lmiui/maml/elements/CurveScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 97
    .local v0, "data":Ljava/lang/String;
    iget-object v7, p0, Lmiui/maml/elements/CurveScreenElement;->mNode:Lorg/w3c/dom/Element;

    const-string v8, "xdata"

    invoke-virtual {p0, v7, v8}, Lmiui/maml/elements/CurveScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 98
    .local v3, "xdata":Ljava/lang/String;
    iget-object v7, p0, Lmiui/maml/elements/CurveScreenElement;->mNode:Lorg/w3c/dom/Element;

    const-string v8, "ydata"

    invoke-virtual {p0, v7, v8}, Lmiui/maml/elements/CurveScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 99
    .local v4, "ydata":Ljava/lang/String;
    invoke-virtual {p0}, Lmiui/maml/elements/CurveScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    .line 100
    .local v2, "vars":Lmiui/maml/data/Variables;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_2

    .line 101
    iget-object v7, p0, Lmiui/maml/elements/CurveScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {p0, v2, v0, v7}, Lmiui/maml/elements/CurveScreenElement;->buildData(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/CurveScreenElement$DataInfo;

    move-result-object v7

    iput-object v7, p0, Lmiui/maml/elements/CurveScreenElement;->mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    .line 106
    :goto_0
    iget-object v7, p0, Lmiui/maml/elements/CurveScreenElement;->mNode:Lorg/w3c/dom/Element;

    const-string v8, "close"

    invoke-virtual {p0, v7, v8}, Lmiui/maml/elements/CurveScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v7

    iput-boolean v7, p0, Lmiui/maml/elements/CurveScreenElement;->mClose:Z

    .line 107
    iget-object v7, p0, Lmiui/maml/elements/CurveScreenElement;->mNode:Lorg/w3c/dom/Element;

    const-string v8, "curvature"

    const v9, 0x3f333333    # 0.7f

    invoke-virtual {p0, v7, v8, v9}, Lmiui/maml/elements/CurveScreenElement;->getAttrAsFloat(Lorg/w3c/dom/Element;Ljava/lang/String;F)F

    move-result v7

    iput v7, p0, Lmiui/maml/elements/CurveScreenElement;->mCurvature:F

    .line 108
    iget v7, p0, Lmiui/maml/elements/CurveScreenElement;->mCurvature:F

    cmpg-float v7, v7, v5

    if-gez v7, :cond_3

    :goto_1
    iput v5, p0, Lmiui/maml/elements/CurveScreenElement;->mCurvature:F

    .line 109
    iget-object v5, p0, Lmiui/maml/elements/CurveScreenElement;->mNode:Lorg/w3c/dom/Element;

    const-string v6, "dynamic"

    invoke-virtual {p0, v5, v6}, Lmiui/maml/elements/CurveScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 110
    .local v1, "dynamicStr":Ljava/lang/String;
    const-string v5, "true"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 111
    iput-boolean v10, p0, Lmiui/maml/elements/CurveScreenElement;->mDynamic:Z

    .line 117
    :goto_2
    iput-boolean v10, p0, Lmiui/maml/elements/CurveScreenElement;->mLoaded:Z

    .line 120
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "dynamicStr":Ljava/lang/String;
    .end local v2    # "vars":Lmiui/maml/data/Variables;
    .end local v3    # "xdata":Ljava/lang/String;
    .end local v4    # "ydata":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lmiui/maml/elements/CurveScreenElement;->mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    if-eqz v5, :cond_7

    .line 121
    iget-object v5, p0, Lmiui/maml/elements/CurveScreenElement;->mData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v5, v10}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->registerVarArrayObserver(Z)V

    .line 130
    :cond_1
    :goto_3
    return-void

    .line 103
    .restart local v0    # "data":Ljava/lang/String;
    .restart local v2    # "vars":Lmiui/maml/data/Variables;
    .restart local v3    # "xdata":Ljava/lang/String;
    .restart local v4    # "ydata":Ljava/lang/String;
    :cond_2
    iget-object v7, p0, Lmiui/maml/elements/CurveScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {p0, v2, v3, v7}, Lmiui/maml/elements/CurveScreenElement;->buildData(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/CurveScreenElement$DataInfo;

    move-result-object v7

    iput-object v7, p0, Lmiui/maml/elements/CurveScreenElement;->mXData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    .line 104
    iget-object v7, p0, Lmiui/maml/elements/CurveScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {p0, v2, v4, v7}, Lmiui/maml/elements/CurveScreenElement;->buildData(Lmiui/maml/data/Variables;Ljava/lang/String;Lmiui/maml/ScreenElementRoot;)Lmiui/maml/elements/CurveScreenElement$DataInfo;

    move-result-object v7

    iput-object v7, p0, Lmiui/maml/elements/CurveScreenElement;->mYData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    goto :goto_0

    .line 108
    :cond_3
    iget v5, p0, Lmiui/maml/elements/CurveScreenElement;->mCurvature:F

    cmpl-float v5, v5, v6

    if-lez v5, :cond_4

    move v5, v6

    goto :goto_1

    :cond_4
    iget v5, p0, Lmiui/maml/elements/CurveScreenElement;->mCurvature:F

    goto :goto_1

    .line 112
    .restart local v1    # "dynamicStr":Ljava/lang/String;
    :cond_5
    const-string v5, "false"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 113
    const/4 v5, 0x0

    iput-boolean v5, p0, Lmiui/maml/elements/CurveScreenElement;->mDynamic:Z

    goto :goto_2

    .line 115
    :cond_6
    invoke-static {v2, v1}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v5

    iput-object v5, p0, Lmiui/maml/elements/CurveScreenElement;->mDynamicExp:Lmiui/maml/data/Expression;

    goto :goto_2

    .line 123
    .end local v0    # "data":Ljava/lang/String;
    .end local v1    # "dynamicStr":Ljava/lang/String;
    .end local v2    # "vars":Lmiui/maml/data/Variables;
    .end local v3    # "xdata":Ljava/lang/String;
    .end local v4    # "ydata":Ljava/lang/String;
    :cond_7
    iget-object v5, p0, Lmiui/maml/elements/CurveScreenElement;->mXData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    if-eqz v5, :cond_8

    .line 124
    iget-object v5, p0, Lmiui/maml/elements/CurveScreenElement;->mXData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v5, v10}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->registerVarArrayObserver(Z)V

    .line 126
    :cond_8
    iget-object v5, p0, Lmiui/maml/elements/CurveScreenElement;->mYData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    if-eqz v5, :cond_1

    .line 127
    iget-object v5, p0, Lmiui/maml/elements/CurveScreenElement;->mYData:Lmiui/maml/elements/CurveScreenElement$DataInfo;

    invoke-virtual {v5, v10}, Lmiui/maml/elements/CurveScreenElement$DataInfo;->registerVarArrayObserver(Z)V

    goto :goto_3
.end method

.method public onDataChange([Ljava/lang/Object;)V
    .locals 1
    .param p1, "objects"    # [Ljava/lang/Object;

    .prologue
    .line 168
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/CurveScreenElement;->mForceUpdate:Z

    .line 169
    invoke-virtual {p0}, Lmiui/maml/elements/CurveScreenElement;->requestUpdate()V

    .line 170
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;Lmiui/maml/elements/GeometryScreenElement$DrawMode;)V
    .locals 4
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "mode"    # Lmiui/maml/elements/GeometryScreenElement$DrawMode;

    .prologue
    .line 179
    iget-boolean v0, p0, Lmiui/maml/elements/CurveScreenElement;->mDataValid:Z

    if-eqz v0, :cond_1

    .line 180
    iget-boolean v0, p0, Lmiui/maml/elements/CurveScreenElement;->mCurveChanged:Z

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mBezierCurve:Lmiui/maml/elements/CurveScreenElement$BezierCurve;

    iget-object v1, p0, Lmiui/maml/elements/CurveScreenElement;->mPoints:Ljava/util/ArrayList;

    iget-object v2, p0, Lmiui/maml/elements/CurveScreenElement;->mControlPoints:[F

    iget-object v3, p0, Lmiui/maml/elements/CurveScreenElement;->mPath:Landroid/graphics/Path;

    invoke-virtual {v0, v1, v2, v3}, Lmiui/maml/elements/CurveScreenElement$BezierCurve;->inflateBezierPath(Ljava/util/ArrayList;[FLandroid/graphics/Path;)V

    .line 182
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/maml/elements/CurveScreenElement;->mCurveChanged:Z

    .line 184
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/CurveScreenElement;->mPath:Landroid/graphics/Path;

    iget-object v1, p0, Lmiui/maml/elements/CurveScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 186
    :cond_1
    return-void
.end method

.method public refresh()V
    .locals 1

    .prologue
    .line 173
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/maml/elements/CurveScreenElement;->mForceUpdate:Z

    .line 174
    invoke-virtual {p0}, Lmiui/maml/elements/CurveScreenElement;->requestUpdate()V

    .line 175
    return-void
.end method
