.class public Lmiui/maml/elements/ImageScreenElement;
.super Lmiui/maml/elements/AnimatedScreenElement;
.source "ImageScreenElement.java"

# interfaces
.implements Lmiui/maml/elements/BitmapProvider$IBitmapHolder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiui/maml/elements/ImageScreenElement$1;,
        Lmiui/maml/elements/ImageScreenElement$pair;,
        Lmiui/maml/elements/ImageScreenElement$Mask;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "ImageScreenElement"

.field public static final MASK_TAG_NAME:Ljava/lang/String; = "Mask"

.field private static final PI:D = 3.1415926535897

.field public static final TAG_NAME:Ljava/lang/String; = "Image"

.field private static final VAR_BMP_HEIGHT:Ljava/lang/String; = "bmp_height"

.field private static final VAR_BMP_WIDTH:Ljava/lang/String; = "bmp_width"

.field private static final VAR_HAS_BITMAP:Ljava/lang/String; = "has_bitmap"


# instance fields
.field private mAntiAlias:Z

.field protected mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

.field private mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

.field private mBlurBitmap:Landroid/graphics/Bitmap;

.field private mBlurRadius:I

.field private mBmpSizeHeightVar:Lmiui/maml/data/IndexedVariable;

.field private mBmpSizeWidthVar:Lmiui/maml/data/IndexedVariable;

.field protected mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

.field private mDesRect:Landroid/graphics/Rect;

.field private mExpSrcH:Lmiui/maml/data/Expression;

.field private mExpSrcW:Lmiui/maml/data/Expression;

.field private mExpSrcX:Lmiui/maml/data/Expression;

.field private mExpSrcY:Lmiui/maml/data/Expression;

.field private mHasBitmapVar:Lmiui/maml/data/IndexedVariable;

.field private mHasSrcRect:Z

.field private mLoadAsync:Z

.field private mMaskPaint:Landroid/graphics/Paint;

.field private mMasks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lmiui/maml/elements/ImageScreenElement$Mask;",
            ">;"
        }
    .end annotation
.end field

.field private mMeshHeight:I

.field private mMeshWidth:I

.field protected mPaint:Landroid/graphics/Paint;

.field private mPendingBlur:Z

.field private mRawBlurRadius:I

.field private mRetainWhenInvisible:Z

.field private mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lmiui/maml/elements/ImageScreenElement$pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private mSources:Lmiui/maml/animation/SourcesAnimation;

.field private mSrc:Ljava/lang/String;

.field private mSrcFormatter:Lmiui/maml/util/TextFormatter;

.field private mSrcH:I

.field private mSrcIdExpression:Lmiui/maml/data/Expression;

.field private mSrcRect:Landroid/graphics/Rect;

.field private mSrcW:I

.field private mSrcX:I

.field private mSrcY:I

.field private mVerts:[F

.field private mVertsExps:[Lmiui/maml/data/Expression;

.field private mXfermodeNumExp:Lmiui/maml/data/Expression;


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Element;
    .param p2, "root"    # Lmiui/maml/ScreenElementRoot;

    .prologue
    const/4 v1, 0x0

    .line 141
    invoke-direct {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    .line 45
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    .line 47
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    .line 53
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    .line 63
    new-instance v0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-direct {v0, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 83
    new-instance v0, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-direct {v0, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;-><init>(Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 142
    invoke-direct {p0, p1}, Lmiui/maml/elements/ImageScreenElement;->load(Lorg/w3c/dom/Element;)V

    .line 143
    return-void
.end method

.method private load(Lorg/w3c/dom/Element;)V
    .locals 19
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 146
    if-nez p1, :cond_0

    .line 223
    :goto_0
    return-void

    .line 149
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getVariables()Lmiui/maml/data/Variables;

    move-result-object v2

    .line 150
    .local v2, "vars":Lmiui/maml/data/Variables;
    const-string v4, "src"

    const-string v5, "srcFormat"

    const-string v6, "srcParas"

    const-string v7, "srcExp"

    const-string v8, "srcFormatExp"

    move-object/from16 v3, p1

    invoke-static/range {v2 .. v8}, Lmiui/maml/util/TextFormatter;->fromElement(Lmiui/maml/data/Variables;Lorg/w3c/dom/Element;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lmiui/maml/util/TextFormatter;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    .line 151
    const-string v3, "srcid"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lmiui/maml/data/Expression;

    .line 154
    const-string v3, "antiAlias"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "false"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_6

    const/4 v3, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmiui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    .line 155
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 156
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    sget-object v5, Landroid/graphics/PorterDuff$Mode;->DST_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v4, v5}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 157
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lmiui/maml/elements/ImageScreenElement;->mAntiAlias:Z

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setFilterBitmap(Z)V

    .line 158
    const-string v3, "srcX"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcX:Lmiui/maml/data/Expression;

    .line 159
    const-string v3, "srcY"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcY:Lmiui/maml/data/Expression;

    .line 160
    const-string v3, "srcW"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcW:Lmiui/maml/data/Expression;

    .line 161
    const-string v3, "srcH"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcH:Lmiui/maml/data/Expression;

    .line 162
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcW:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_1

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcH:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_1

    .line 163
    const/4 v3, 0x1

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmiui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    .line 164
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    .line 167
    :cond_1
    const-string v3, "blur"

    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3, v4}, Lmiui/maml/elements/ImageScreenElement;->getAttrAsInt(Lorg/w3c/dom/Element;Ljava/lang/String;I)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lmiui/maml/elements/ImageScreenElement;->mRawBlurRadius:I

    .line 168
    const-string v3, "mesh"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 169
    .local v14, "meshStr":Ljava/lang/String;
    const-string v3, ","

    invoke-virtual {v14, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v9

    .line 170
    .local v9, "comma":I
    const/4 v3, -0x1

    if-eq v9, v3, :cond_2

    .line 172
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v14, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    .line 173
    add-int/lit8 v3, v9, 0x1

    invoke-virtual {v14, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    move-object/from16 v0, p0

    iput v3, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_2
    const-string v3, "meshVerts"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v15

    .line 178
    .local v15, "meshVertsStr":Ljava/lang/String;
    invoke-static {v2, v15}, Lmiui/maml/data/Expression;->buildMultiple(Lmiui/maml/data/Variables;Ljava/lang/String;)[Lmiui/maml/data/Expression;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    .line 179
    move-object/from16 v0, p0

    iget v3, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    add-int/lit8 v3, v3, 0x1

    move-object/from16 v0, p0

    iget v4, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    add-int/lit8 v4, v4, 0x1

    mul-int/2addr v3, v4

    mul-int/lit8 v3, v3, 0x2

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    array-length v4, v4

    if-eq v3, v4, :cond_7

    .line 180
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    .line 181
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    .line 182
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    .line 183
    const-string v3, "ImageScreenElement"

    const-string v4, "Wrong number of meshVerts!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    .end local v15    # "meshVertsStr":Ljava/lang/String;
    :cond_2
    :goto_3
    const-string v3, "xfermodeNum"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/data/Expression;->build(Lmiui/maml/data/Variables;Ljava/lang/String;)Lmiui/maml/data/Expression;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    .line 204
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    if-nez v3, :cond_3

    .line 205
    const-string v3, "xfermode"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lmiui/maml/util/Utils;->getPorterDuffMode(Ljava/lang/String;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v16

    .line 206
    .local v16, "mode":Landroid/graphics/PorterDuff$Mode;
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance v4, Landroid/graphics/PorterDuffXfermode;

    move-object/from16 v0, v16

    invoke-direct {v4, v0}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 210
    .end local v16    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_3
    const-string v3, "useVirtualScreen"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v18

    .line 211
    .local v18, "useVirtualScreen":Z
    const-string v3, "srcType"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 212
    .local v17, "srcType":Ljava/lang/String;
    if-eqz v18, :cond_4

    const-string v17, "VirtualScreen"

    .end local v17    # "srcType":Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lmiui/maml/elements/ImageScreenElement;->setSrcType(Ljava/lang/String;)V

    .line 214
    const-string v3, "loadAsync"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmiui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    .line 215
    const-string v3, "retainWhenInvisible"

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v3}, Lmiui/maml/elements/ImageScreenElement;->getAttr(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    move-object/from16 v0, p0

    iput-boolean v3, v0, Lmiui/maml/elements/ImageScreenElement;->mRetainWhenInvisible:Z

    .line 217
    move-object/from16 v0, p0

    iget-boolean v3, v0, Lmiui/maml/elements/ImageScreenElement;->mHasName:Z

    if-eqz v3, :cond_5

    .line 218
    new-instance v3, Lmiui/maml/data/IndexedVariable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bmp_width"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v2, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mBmpSizeWidthVar:Lmiui/maml/data/IndexedVariable;

    .line 219
    new-instance v3, Lmiui/maml/data/IndexedVariable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "bmp_height"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v2, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mBmpSizeHeightVar:Lmiui/maml/data/IndexedVariable;

    .line 220
    new-instance v3, Lmiui/maml/data/IndexedVariable;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "has_bitmap"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {v3, v4, v2, v5}, Lmiui/maml/data/IndexedVariable;-><init>(Ljava/lang/String;Lmiui/maml/data/Variables;Z)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mHasBitmapVar:Lmiui/maml/data/IndexedVariable;

    .line 222
    :cond_5
    invoke-direct/range {p0 .. p1}, Lmiui/maml/elements/ImageScreenElement;->loadMask(Lorg/w3c/dom/Element;)V

    goto/16 :goto_0

    .line 154
    .end local v9    # "comma":I
    .end local v14    # "meshStr":Ljava/lang/String;
    .end local v18    # "useVirtualScreen":Z
    :cond_6
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 174
    .restart local v9    # "comma":I
    .restart local v14    # "meshStr":Ljava/lang/String;
    :catch_0
    move-exception v10

    .line 175
    .local v10, "e":Ljava/lang/NumberFormatException;
    const-string v3, "ImageScreenElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid format:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 185
    .end local v10    # "e":Ljava/lang/NumberFormatException;
    .restart local v15    # "meshVertsStr":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    array-length v13, v3

    .line 186
    .local v13, "length":I
    const/4 v12, 0x0

    .line 187
    .local v12, "isNull":Z
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_4
    if-ge v11, v13, :cond_8

    .line 188
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    aget-object v3, v3, v11

    if-nez v3, :cond_9

    .line 189
    const-string v3, "ImageScreenElement"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid meshVerts:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    const/4 v12, 0x1

    .line 191
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    .line 192
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput v3, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    .line 193
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    .line 197
    :cond_8
    if-nez v12, :cond_2

    .line 198
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    array-length v3, v3

    new-array v3, v3, [F

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mVerts:[F

    goto/16 :goto_3

    .line 187
    :cond_9
    add-int/lit8 v11, v11, 0x1

    goto :goto_4
.end method

.method private loadMask(Lorg/w3c/dom/Element;)V
    .locals 6
    .param p1, "node"    # Lorg/w3c/dom/Element;

    .prologue
    .line 239
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    .line 240
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    .line 242
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 244
    const-string v2, "Mask"

    invoke-interface {p1, v2}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 245
    .local v1, "images":Lorg/w3c/dom/NodeList;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 246
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    new-instance v4, Lmiui/maml/elements/ImageScreenElement$Mask;

    invoke-interface {v1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-direct {v4, p0, v2, v5}, Lmiui/maml/elements/ImageScreenElement$Mask;-><init>(Lmiui/maml/elements/ImageScreenElement;Lorg/w3c/dom/Element;Lmiui/maml/ScreenElementRoot;)V

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 245
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_1
    return-void
.end method

.method private renderWithMask(Landroid/graphics/Canvas;Lmiui/maml/elements/ImageScreenElement$Mask;II)V
    .locals 45
    .param p1, "bufferCanvas"    # Landroid/graphics/Canvas;
    .param p2, "mask"    # Lmiui/maml/elements/ImageScreenElement$Mask;
    .param p3, "x"    # I
    .param p4, "y"    # I

    .prologue
    .line 483
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v3

    iget-object v3, v3, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getSrc()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lmiui/maml/ResourceManager;->getBitmap(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v39

    .line 484
    .local v39, "rawMask":Landroid/graphics/Bitmap;
    if-nez v39, :cond_0

    .line 539
    :goto_0
    return-void

    .line 487
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 488
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getX()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v34, v0

    .line 489
    .local v34, "maskX":D
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getY()F

    move-result v3

    float-to-double v0, v3

    move-wide/from16 v36, v0

    .line 490
    .local v36, "maskY":D
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getRotation()F

    move-result v32

    .line 491
    .local v32, "maskAngle":F
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->isAlignAbsolute()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 492
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getRotation()F

    move-result v2

    .line 493
    .local v2, "angle":F
    const/4 v3, 0x0

    cmpl-float v3, v2, v3

    if-nez v3, :cond_4

    .line 494
    move/from16 v0, p3

    int-to-double v4, v0

    sub-double v34, v34, v4

    .line 495
    move/from16 v0, p4

    int-to-double v4, v0

    sub-double v36, v36, v4

    .line 522
    :goto_1
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getX()F

    move-result v3

    float-to-double v4, v3

    sub-double v34, v34, v4

    .line 523
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getY()F

    move-result v3

    float-to-double v4, v3

    sub-double v36, v36, v4

    .line 525
    .end local v2    # "angle":F
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getPivotX()F

    move-result v3

    float-to-double v4, v3

    add-double v4, v4, v34

    move/from16 v0, p3

    int-to-double v6, v0

    add-double/2addr v4, v6

    double-to-float v3, v4

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getPivotY()F

    move-result v4

    float-to-double v4, v4

    add-double v4, v4, v36

    move/from16 v0, p4

    int-to-double v6, v0

    add-double/2addr v4, v6

    double-to-float v4, v4

    move-object/from16 v0, p1

    move/from16 v1, v32

    invoke-virtual {v0, v1, v3, v4}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 527
    move-wide/from16 v0, v34

    double-to-int v0, v0

    move/from16 v33, v0

    .line 528
    .local v33, "mx":I
    move-wide/from16 v0, v36

    double-to-int v0, v0

    move/from16 v38, v0

    .line 529
    .local v38, "my":I
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getWidth()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v44

    .line 530
    .local v44, "width":I
    if-gez v44, :cond_2

    .line 531
    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v44

    .line 532
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getHeight()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v25

    .line 533
    .local v25, "height":I
    if-gez v25, :cond_3

    .line 534
    invoke-virtual/range {v39 .. v39}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v25

    .line 535
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    add-int v4, v33, p3

    add-int v5, v38, p4

    add-int v6, v33, p3

    add-int v6, v6, v44

    add-int v7, v38, p4

    add-int v7, v7, v25

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 536
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getAlpha()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 537
    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v5, v0, Lmiui/maml/elements/ImageScreenElement;->mMaskPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    move-object/from16 v1, v39

    invoke-virtual {v0, v1, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 538
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_0

    .line 497
    .end local v25    # "height":I
    .end local v33    # "mx":I
    .end local v38    # "my":I
    .end local v44    # "width":I
    .restart local v2    # "angle":F
    :cond_4
    sub-float v32, v32, v2

    .line 498
    float-to-double v4, v2

    const-wide v6, 0x400921fb54442c46L    # 3.1415926535897

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v8, v4, v6

    .line 499
    .local v8, "angleA":D
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getPivotX()F

    move-result v19

    .line 500
    .local v19, "cx":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getPivotY()F

    move-result v24

    .line 501
    .local v24, "cy":F
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    if-nez v3, :cond_5

    .line 502
    new-instance v3, Lmiui/maml/elements/ImageScreenElement$pair;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lmiui/maml/elements/ImageScreenElement$pair;-><init>(Lmiui/maml/elements/ImageScreenElement$1;)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    .line 504
    :cond_5
    move/from16 v0, v19

    float-to-double v4, v0

    move/from16 v0, v24

    float-to-double v6, v0

    move-object/from16 v0, p0

    iget-object v10, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    move-object/from16 v3, p0

    invoke-direct/range {v3 .. v10}, Lmiui/maml/elements/ImageScreenElement;->rotateXY(DDDLmiui/maml/elements/ImageScreenElement$pair;)V

    .line 506
    move/from16 v0, p3

    int-to-double v4, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    iget-object v3, v3, Lmiui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double v40, v4, v6

    .line 507
    .local v40, "rx":D
    move/from16 v0, p4

    int-to-double v4, v0

    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    iget-object v3, v3, Lmiui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    add-double v42, v4, v6

    .line 510
    .local v42, "ry":D
    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getPivotX()F

    move-result v3

    float-to-double v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmiui/maml/elements/ImageScreenElement;->descale(D)D

    move-result-wide v12

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getPivotY()F

    move-result v3

    float-to-double v4, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmiui/maml/elements/ImageScreenElement;->descale(D)D

    move-result-wide v14

    invoke-virtual/range {p2 .. p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->getRotation()F

    move-result v3

    float-to-double v4, v3

    const-wide v6, 0x400921fb54442c46L    # 3.1415926535897

    mul-double/2addr v4, v6

    const-wide v6, 0x4066800000000000L    # 180.0

    div-double v16, v4, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    move-object/from16 v18, v0

    move-object/from16 v11, p0

    invoke-direct/range {v11 .. v18}, Lmiui/maml/elements/ImageScreenElement;->rotateXY(DDDLmiui/maml/elements/ImageScreenElement$pair;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    iget-object v3, v3, Lmiui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v3

    float-to-double v4, v3

    add-double v34, v34, v4

    .line 513
    move-object/from16 v0, p0

    iget-object v3, v0, Lmiui/maml/elements/ImageScreenElement;->mRotateXYpair:Lmiui/maml/elements/ImageScreenElement$pair;

    iget-object v3, v3, Lmiui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v5}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v3

    float-to-double v4, v3

    add-double v36, v36, v4

    .line 514
    sub-double v28, v34, v40

    .line 515
    .local v28, "dx":D
    sub-double v30, v36, v42

    .line 516
    .local v30, "dy":D
    mul-double v4, v28, v28

    mul-double v6, v30, v30

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v26

    .line 517
    .local v26, "dm":D
    div-double v4, v28, v26

    invoke-static {v4, v5}, Ljava/lang/Math;->asin(D)D

    move-result-wide v20

    .line 518
    .local v20, "angleB":D
    const-wide/16 v4, 0x0

    cmpl-double v3, v30, v4

    if-lez v3, :cond_6

    add-double v22, v8, v20

    .line 519
    .local v22, "angleC":D
    :goto_2
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double v34, v26, v4

    .line 520
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v36, v26, v4

    goto/16 :goto_1

    .line 518
    .end local v22    # "angleC":D
    :cond_6
    const-wide v4, 0x400921fb54442c46L    # 3.1415926535897

    add-double/2addr v4, v8

    sub-double v22, v4, v20

    goto :goto_2
.end method

.method private rotateXY(DDDLmiui/maml/elements/ImageScreenElement$pair;)V
    .locals 13
    .param p1, "centerX"    # D
    .param p3, "centerY"    # D
    .param p5, "angle"    # D
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DDD",
            "Lmiui/maml/elements/ImageScreenElement$pair",
            "<",
            "Ljava/lang/Double;",
            "Ljava/lang/Double;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 468
    .local p7, "pr":Lmiui/maml/elements/ImageScreenElement$pair;, "Lmiui/maml/elements/ImageScreenElement$pair<Ljava/lang/Double;Ljava/lang/Double;>;"
    mul-double v8, p1, p1

    mul-double v10, p3, p3

    add-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    .line 470
    .local v6, "cm":D
    const-wide/16 v8, 0x0

    cmpl-double v8, v6, v8

    if-lez v8, :cond_0

    .line 471
    div-double v8, p1, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->acos(D)D

    move-result-wide v2

    .line 472
    .local v2, "angle1":D
    const-wide v8, 0x400921fb54442c46L    # 3.1415926535897

    sub-double/2addr v8, v2

    sub-double v4, v8, p5

    .line 473
    .local v4, "angle2":D
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    add-double/2addr v8, p1

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object/from16 v0, p7

    iput-object v8, v0, Lmiui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 474
    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v8, v6

    sub-double v8, p3, v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object/from16 v0, p7

    iput-object v8, v0, Lmiui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    .line 479
    .end local v2    # "angle1":D
    .end local v4    # "angle2":D
    :goto_0
    return-void

    .line 476
    :cond_0
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object/from16 v0, p7

    iput-object v8, v0, Lmiui/maml/elements/ImageScreenElement$pair;->p1:Ljava/lang/Object;

    .line 477
    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v8

    move-object/from16 v0, p7

    iput-object v8, v0, Lmiui/maml/elements/ImageScreenElement$pair;->p2:Ljava/lang/Object;

    goto :goto_0
.end method


# virtual methods
.method protected doRender(Landroid/graphics/Canvas;)V
    .locals 30
    .param p1, "c"    # Landroid/graphics/Canvas;

    .prologue
    .line 343
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v6}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v7

    .line 344
    .local v7, "bmp":Landroid/graphics/Bitmap;
    if-nez v7, :cond_1

    .line 428
    :cond_0
    :goto_0
    return-void

    .line 348
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v6, v0, Lmiui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    if-eqz v6, :cond_4

    .line 349
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    if-ne v6, v8, :cond_2

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    if-eq v6, v8, :cond_3

    .line 352
    :cond_2
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v6, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 355
    :cond_3
    const/4 v6, 0x0

    move-object/from16 v0, p0

    iput-boolean v6, v0, Lmiui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 356
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    move-object/from16 v0, p0

    iget v8, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    invoke-static {v7, v6, v8}, Lmiui/graphics/BitmapFactory;->fastBlur(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, p0

    iput-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 359
    :cond_4
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    if-eqz v6, :cond_5

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    if-lez v6, :cond_5

    .line 360
    move-object/from16 v0, p0

    iget-object v7, v0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 363
    :cond_5
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getAlpha()I

    move-result v15

    .line 364
    .local v15, "alpha":I
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {v6, v15}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 365
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->getDensity()I

    move-result v26

    .line 366
    .local v26, "oldDensity":I
    const/4 v6, 0x0

    move-object/from16 v0, p1

    invoke-virtual {v0, v6}, Landroid/graphics/Canvas;->setDensity(I)V

    .line 368
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getWidth()F

    move-result v27

    .line 369
    .local v27, "width":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getHeight()F

    move-result v20

    .line 370
    .local v20, "height":F
    invoke-super/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v17

    .line 371
    .local v17, "aniWidth":F
    invoke-super/range {p0 .. p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v16

    .line 373
    .local v16, "aniHeight":F
    const/4 v6, 0x0

    cmpl-float v6, v27, v6

    if-eqz v6, :cond_0

    const/4 v6, 0x0

    cmpl-float v6, v20, v6

    if-eqz v6, :cond_0

    .line 376
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v27

    invoke-virtual {v0, v6, v1}, Lmiui/maml/elements/ImageScreenElement;->getLeft(FF)F

    move-result v6

    float-to-int v0, v6

    move/from16 v28, v0

    .line 377
    .local v28, "x":I
    const/4 v6, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v6, v1}, Lmiui/maml/elements/ImageScreenElement;->getTop(FF)F

    move-result v6

    float-to-int v0, v6

    move/from16 v29, v0

    .line 378
    .local v29, "y":I
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    .line 380
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-nez v6, :cond_c

    .line 381
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getNinePatchChunk()[B

    move-result-object v6

    if-eqz v6, :cond_7

    .line 382
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getContext()Lmiui/maml/ScreenContext;

    move-result-object v6

    iget-object v6, v6, Lmiui/maml/ScreenContext;->mResourceManager:Lmiui/maml/ResourceManager;

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Lmiui/maml/ResourceManager;->getNinePatch(Ljava/lang/String;)Landroid/graphics/NinePatch;

    move-result-object v25

    .line 383
    .local v25, "np":Landroid/graphics/NinePatch;
    if-eqz v25, :cond_6

    .line 384
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move/from16 v0, v28

    int-to-float v8, v0

    add-float v8, v8, v27

    float-to-int v8, v8

    move/from16 v0, v29

    int-to-float v9, v0

    add-float v9, v9, v20

    float-to-int v9, v9

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 385
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, v25

    move-object/from16 v1, p1

    invoke-virtual {v0, v1, v6, v8}, Landroid/graphics/NinePatch;->draw(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 426
    .end local v25    # "np":Landroid/graphics/NinePatch;
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    .line 427
    move-object/from16 v0, p1

    move/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/graphics/Canvas;->setDensity(I)V

    goto/16 :goto_0

    .line 387
    .restart local v25    # "np":Landroid/graphics/NinePatch;
    :cond_6
    const-string v6, "ImageScreenElement"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the image contains ninepatch chunk but couldn\'t get NinePatch object: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 391
    .end local v25    # "np":Landroid/graphics/NinePatch;
    :cond_7
    const/4 v6, 0x0

    cmpl-float v6, v17, v6

    if-gtz v6, :cond_8

    const/4 v6, 0x0

    cmpl-float v6, v16, v6

    if-gtz v6, :cond_8

    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v6, :cond_a

    .line 392
    :cond_8
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move/from16 v0, v28

    int-to-float v8, v0

    add-float v8, v8, v27

    float-to-int v8, v8

    move/from16 v0, v29

    int-to-float v9, v0

    add-float v9, v9, v20

    float-to-int v9, v9

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 393
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v6, :cond_9

    .line 394
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v8, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    move-object/from16 v0, p0

    iget v9, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    move-object/from16 v0, p0

    iget v10, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    move-object/from16 v0, p0

    iget v11, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcW:I

    add-int/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    move-object/from16 v0, p0

    iget v12, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcH:I

    add-int/2addr v11, v12

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 396
    :cond_9
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 397
    :cond_a
    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    if-lez v6, :cond_b

    move-object/from16 v0, p0

    iget v6, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    if-lez v6, :cond_b

    .line 398
    move-object/from16 v0, p0

    iget v8, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    move-object/from16 v0, p0

    iget v9, v0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    move-object/from16 v0, p0

    iget-object v10, v0, Lmiui/maml/elements/ImageScreenElement;->mVerts:[F

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v6, p1

    invoke-virtual/range {v6 .. v14}, Landroid/graphics/Canvas;->drawBitmapMesh(Landroid/graphics/Bitmap;II[FI[IILandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 400
    :cond_b
    move/from16 v0, v28

    int-to-float v6, v0

    move/from16 v0, v29

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto/16 :goto_1

    .line 404
    :cond_c
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getMaxWidth()F

    move-result v24

    .line 405
    .local v24, "maxWidth":F
    invoke-virtual/range {p0 .. p0}, Lmiui/maml/elements/ImageScreenElement;->getMaxHeight()F

    move-result v23

    .line 406
    .local v23, "maxHeight":F
    move/from16 v0, v24

    move/from16 v1, v27

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v24

    .line 407
    move/from16 v0, v23

    move/from16 v1, v20

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v23

    .line 408
    move/from16 v0, v24

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    move/from16 v19, v0

    .line 409
    .local v19, "bufferWidth":I
    move/from16 v0, v23

    float-to-double v8, v0

    invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    double-to-int v0, v8

    move/from16 v18, v0

    .line 410
    .local v18, "bufferHeight":I
    move/from16 v0, v28

    int-to-float v9, v0

    move/from16 v0, v29

    int-to-float v10, v0

    add-int v6, v28, v19

    int-to-float v11, v6

    add-int v6, v29, v18

    int-to-float v12, v6

    move-object/from16 v0, p0

    iget-object v13, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    const/16 v14, 0x1f

    move-object/from16 v8, p1

    invoke-virtual/range {v8 .. v14}, Landroid/graphics/Canvas;->saveLayer(FFFFLandroid/graphics/Paint;I)I

    .line 411
    const/4 v6, 0x0

    cmpl-float v6, v17, v6

    if-gtz v6, :cond_d

    const/4 v6, 0x0

    cmpl-float v6, v16, v6

    if-gtz v6, :cond_d

    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v6, :cond_f

    .line 412
    :cond_d
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move/from16 v0, v27

    float-to-int v8, v0

    add-int v8, v8, v28

    move/from16 v0, v20

    float-to-int v9, v0

    add-int v9, v9, v29

    move/from16 v0, v28

    move/from16 v1, v29

    invoke-virtual {v6, v0, v1, v8, v9}, Landroid/graphics/Rect;->set(IIII)V

    .line 413
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    if-eqz v6, :cond_e

    .line 414
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget v8, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    move-object/from16 v0, p0

    iget v9, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    move-object/from16 v0, p0

    iget v10, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    move-object/from16 v0, p0

    iget v11, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcW:I

    add-int/2addr v10, v11

    move-object/from16 v0, p0

    iget v11, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    move-object/from16 v0, p0

    iget v12, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcH:I

    add-int/2addr v11, v12

    invoke-virtual {v6, v8, v9, v10, v11}, Landroid/graphics/Rect;->set(IIII)V

    .line 416
    :cond_e
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mSrcRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v8, v0, Lmiui/maml/elements/ImageScreenElement;->mDesRect:Landroid/graphics/Rect;

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    .line 421
    :goto_2
    move-object/from16 v0, p0

    iget-object v6, v0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, "i$":Ljava/util/Iterator;
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 422
    .local v22, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, v22

    move/from16 v3, v28

    move/from16 v4, v29

    invoke-direct {v0, v1, v2, v3, v4}, Lmiui/maml/elements/ImageScreenElement;->renderWithMask(Landroid/graphics/Canvas;Lmiui/maml/elements/ImageScreenElement$Mask;II)V

    goto :goto_3

    .line 418
    .end local v21    # "i$":Ljava/util/Iterator;
    .end local v22    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_f
    move/from16 v0, v28

    int-to-float v6, v0

    move/from16 v0, v29

    int-to-float v8, v0

    move-object/from16 v0, p0

    iget-object v9, v0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v7, v6, v8, v9}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 424
    .restart local v21    # "i$":Ljava/util/Iterator;
    :cond_10
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V

    goto/16 :goto_1
.end method

.method protected doTick(J)V
    .locals 9
    .param p1, "currentTime"    # J

    .prologue
    .line 543
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->doTick(J)V

    .line 544
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->isVisible()Z

    move-result v5

    if-nez v5, :cond_0

    .line 575
    :goto_0
    return-void

    .line 547
    :cond_0
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    if-eqz v5, :cond_1

    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v5}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v5

    :goto_1
    iput-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mSrc:Ljava/lang/String;

    .line 549
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v5, :cond_2

    .line 550
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 551
    .local v3, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v3, p1, p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->doTick(J)V

    goto :goto_2

    .line 547
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_1
    const/4 v5, 0x0

    goto :goto_1

    .line 555
    :cond_2
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    if-eqz v5, :cond_3

    .line 556
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mXfermodeNumExp:Lmiui/maml/data/Expression;

    invoke-virtual {v5}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-int v5, v6

    invoke-static {v5}, Lmiui/maml/util/Utils;->getPorterDuffMode(I)Landroid/graphics/PorterDuff$Mode;

    move-result-object v4

    .line 557
    .local v4, "mode":Landroid/graphics/PorterDuff$Mode;
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mPaint:Landroid/graphics/Paint;

    new-instance v6, Landroid/graphics/PorterDuffXfermode;

    invoke-direct {v6, v4}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v5, v6}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    .line 560
    .end local v4    # "mode":Landroid/graphics/PorterDuff$Mode;
    :cond_3
    iget-boolean v5, p0, Lmiui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    if-eqz v5, :cond_4

    .line 561
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcX:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v5}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcX:I

    .line 562
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcY:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v5}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcY:I

    .line 563
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcW:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v5}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcW:I

    .line 564
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mExpSrcH:Lmiui/maml/data/Expression;

    invoke-virtual {p0, v5}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v5

    float-to-int v5, v5

    iput v5, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcH:I

    .line 567
    :cond_4
    iget v5, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshWidth:I

    if-lez v5, :cond_5

    iget v5, p0, Lmiui/maml/elements/ImageScreenElement;->mMeshHeight:I

    if-lez v5, :cond_5

    .line 568
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    array-length v2, v5

    .line 569
    .local v2, "length":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_3
    if-ge v0, v2, :cond_5

    .line 570
    iget-object v5, p0, Lmiui/maml/elements/ImageScreenElement;->mVerts:[F

    iget-object v6, p0, Lmiui/maml/elements/ImageScreenElement;->mVertsExps:[Lmiui/maml/data/Expression;

    aget-object v6, v6, v0

    invoke-virtual {p0, v6}, Lmiui/maml/elements/ImageScreenElement;->evaluate(Lmiui/maml/data/Expression;)D

    move-result-wide v6

    invoke-virtual {p0, v6, v7}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v6

    aput v6, v5, v0

    .line 569
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 574
    .end local v0    # "i":I
    .end local v2    # "length":I
    :cond_5
    iget-boolean v5, p0, Lmiui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    invoke-virtual {p0, v5}, Lmiui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    goto/16 :goto_0
.end method

.method public finish()V
    .locals 3

    .prologue
    .line 579
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->finish()V

    .line 581
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v2, :cond_0

    .line 582
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider;->finish()V

    .line 585
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 586
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 587
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1}, Lmiui/maml/elements/ImageScreenElement$Mask;->finish()V

    goto :goto_0

    .line 590
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 591
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 592
    const/4 v2, 0x0

    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurBitmap:Landroid/graphics/Bitmap;

    .line 593
    return-void
.end method

.method public getBitmap(Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 1
    .param p1, "id"    # Ljava/lang/String;

    .prologue
    .line 715
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    return-object v0
.end method

.method protected getBitmap(Z)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    .locals 3
    .param p1, "async"    # Z

    .prologue
    .line 439
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 440
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    .line 445
    :goto_0
    return-object v0

    .line 441
    :cond_0
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v0, :cond_2

    .line 442
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v2

    if-nez p1, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v2, v0}, Lmiui/maml/elements/BitmapProvider;->getBitmap(Ljava/lang/String;Z)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 445
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getBitmapHeight()I
    .locals 2

    .prologue
    .line 282
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 283
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected getBitmapWidth()I
    .locals 2

    .prologue
    .line 277
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 278
    .local v0, "bmp":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getHeight()F
    .locals 2

    .prologue
    .line 317
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getHeight()F

    move-result v0

    .line 318
    .local v0, "h":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 323
    .end local v0    # "h":F
    :goto_0
    return v0

    .line 320
    .restart local v0    # "h":F
    :cond_0
    iget-boolean v1, p0, Lmiui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    if-eqz v1, :cond_1

    .line 321
    iget v1, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcH:I

    int-to-float v0, v1

    goto :goto_0

    .line 323
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmapHeight()I

    move-result v1

    int-to-float v0, v1

    goto :goto_0
.end method

.method public final getSrc()Ljava/lang/String;
    .locals 6

    .prologue
    .line 327
    const/4 v2, 0x0

    .line 328
    .local v2, "src":Ljava/lang/String;
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    if-eqz v3, :cond_1

    .line 329
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    invoke-virtual {v3}, Lmiui/maml/animation/SourcesAnimation;->getSrc()Ljava/lang/String;

    move-result-object v2

    .line 334
    :goto_0
    if-eqz v2, :cond_0

    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lmiui/maml/data/Expression;

    if-eqz v3, :cond_0

    .line 335
    iget-object v3, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lmiui/maml/data/Expression;

    invoke-virtual {v3}, Lmiui/maml/data/Expression;->evaluate()D

    move-result-wide v4

    double-to-long v0, v4

    .line 336
    .local v0, "id":J
    invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lmiui/maml/util/Utils;->addFileNameSuffix(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 338
    .end local v0    # "id":J
    :cond_0
    return-object v2

    .line 331
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mSrc:Ljava/lang/String;

    goto :goto_0
.end method

.method public getWidth()F
    .locals 2

    .prologue
    .line 306
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getWidth()F

    move-result v0

    .line 307
    .local v0, "w":F
    const/4 v1, 0x0

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_0

    .line 312
    .end local v0    # "w":F
    :goto_0
    return v0

    .line 309
    .restart local v0    # "w":F
    :cond_0
    iget-boolean v1, p0, Lmiui/maml/elements/ImageScreenElement;->mHasSrcRect:Z

    if-eqz v1, :cond_1

    .line 310
    iget v1, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcW:I

    int-to-float v0, v1

    goto :goto_0

    .line 312
    :cond_1
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmapWidth()I

    move-result v1

    int-to-float v0, v1

    goto :goto_0
.end method

.method public getX()F
    .locals 4

    .prologue
    .line 288
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getX()F

    move-result v0

    .line 289
    .local v0, "x":F
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    if-eqz v1, :cond_0

    .line 290
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    invoke-virtual {v1}, Lmiui/maml/animation/SourcesAnimation;->getX()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v1

    add-float/2addr v0, v1

    .line 292
    :cond_0
    return v0
.end method

.method public getY()F
    .locals 4

    .prologue
    .line 297
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->getY()F

    move-result v0

    .line 298
    .local v0, "y":F
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    if-eqz v1, :cond_0

    .line 299
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    invoke-virtual {v1}, Lmiui/maml/animation/SourcesAnimation;->getY()D

    move-result-wide v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v1

    add-float/2addr v0, v1

    .line 301
    :cond_0
    return v0
.end method

.method public init()V
    .locals 4

    .prologue
    .line 252
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->init()V

    .line 254
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v2}, Lmiui/maml/util/TextFormatter;->getText()Ljava/lang/String;

    move-result-object v2

    :goto_0
    iput-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mSrc:Ljava/lang/String;

    .line 256
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    .line 258
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_1

    .line 259
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 260
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1}, Lmiui/maml/elements/ImageScreenElement$Mask;->init()V

    goto :goto_1

    .line 254
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 263
    :cond_1
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v2, :cond_2

    .line 264
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lmiui/maml/elements/BitmapProvider;->init(Ljava/lang/String;)V

    .line 267
    :cond_2
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 268
    iget-boolean v2, p0, Lmiui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    invoke-virtual {p0, v2}, Lmiui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    .line 271
    :cond_3
    iget v2, p0, Lmiui/maml/elements/ImageScreenElement;->mRawBlurRadius:I

    int-to-double v2, v2

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/ImageScreenElement;->scale(D)F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    .line 272
    iget v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    if-lez v2, :cond_4

    .line 273
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 274
    :cond_4
    return-void
.end method

.method protected onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "ele"    # Lorg/w3c/dom/Element;

    .prologue
    .line 227
    const-string v0, "SourcesAnimation"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 228
    new-instance v0, Lmiui/maml/animation/SourcesAnimation;

    invoke-direct {v0, p2, p0}, Lmiui/maml/animation/SourcesAnimation;-><init>(Lorg/w3c/dom/Element;Lmiui/maml/elements/ScreenElement;)V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    .line 231
    :goto_0
    return-object v0

    :cond_0
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->onCreateAnimation(Ljava/lang/String;Lorg/w3c/dom/Element;)Lmiui/maml/animation/BaseAnimation;

    move-result-object v0

    goto :goto_0
.end method

.method protected onSetAnimBefore()V
    .locals 1

    .prologue
    .line 634
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->onSetAnimBefore()V

    .line 635
    const/4 v0, 0x0

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    .line 636
    return-void
.end method

.method protected onSetAnimEnable(Lmiui/maml/animation/BaseAnimation;)V
    .locals 1
    .param p1, "ani"    # Lmiui/maml/animation/BaseAnimation;

    .prologue
    .line 640
    instance-of v0, p1, Lmiui/maml/animation/SourcesAnimation;

    if-eqz v0, :cond_0

    .line 641
    check-cast p1, Lmiui/maml/animation/SourcesAnimation;

    .end local p1    # "ani":Lmiui/maml/animation/BaseAnimation;
    iput-object p1, p0, Lmiui/maml/elements/ImageScreenElement;->mSources:Lmiui/maml/animation/SourcesAnimation;

    .line 645
    :goto_0
    return-void

    .line 643
    .restart local p1    # "ani":Lmiui/maml/animation/BaseAnimation;
    :cond_0
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onSetAnimEnable(Lmiui/maml/animation/BaseAnimation;)V

    goto :goto_0
.end method

.method protected onVisibilityChange(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 682
    invoke-super {p0, p1}, Lmiui/maml/elements/AnimatedScreenElement;->onVisibilityChange(Z)V

    .line 683
    if-eqz p1, :cond_1

    .line 684
    iget-boolean v0, p0, Lmiui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    .line 692
    :cond_0
    :goto_0
    return-void

    .line 686
    :cond_1
    iget-boolean v0, p0, Lmiui/maml/elements/ImageScreenElement;->mRetainWhenInvisible:Z

    if-nez v0, :cond_0

    .line 687
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v0, :cond_2

    .line 688
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider;->finish()V

    .line 689
    :cond_2
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->reset()V

    goto :goto_0
.end method

.method public pause()V
    .locals 3

    .prologue
    .line 597
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->pause()V

    .line 599
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 600
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 601
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1}, Lmiui/maml/elements/ImageScreenElement$Mask;->pause()V

    goto :goto_0

    .line 604
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    return-void
.end method

.method protected pauseAnim(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 662
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->pauseAnim(J)V

    .line 663
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 664
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 665
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1, p1, p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->pauseAnim(J)V

    goto :goto_0

    .line 668
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    return-void
.end method

.method protected playAnim(JJJZZ)V
    .locals 11
    .param p1, "time"    # J
    .param p3, "startTime"    # J
    .param p5, "endTime"    # J
    .param p7, "isLoop"    # Z
    .param p8, "isDelay"    # Z

    .prologue
    .line 649
    invoke-super/range {p0 .. p8}, Lmiui/maml/elements/AnimatedScreenElement;->playAnim(JJJZZ)V

    .line 650
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 651
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move/from16 v8, p7

    move/from16 v9, p8

    .line 652
    invoke-virtual/range {v1 .. v9}, Lmiui/maml/elements/ImageScreenElement$Mask;->playAnim(JJJZZ)V

    goto :goto_0

    .line 655
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v2, :cond_1

    .line 656
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider;->reset()V

    .line 658
    :cond_1
    return-void
.end method

.method public reset(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 619
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->reset(J)V

    .line 620
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 621
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 622
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1, p1, p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->reset(J)V

    goto :goto_0

    .line 625
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    if-eqz v2, :cond_1

    .line 626
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    invoke-virtual {v2}, Lmiui/maml/elements/BitmapProvider;->reset()V

    .line 628
    :cond_1
    iget v2, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    if-lez v2, :cond_2

    .line 629
    const/4 v2, 0x1

    iput-boolean v2, p0, Lmiui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 630
    :cond_2
    return-void
.end method

.method public resume()V
    .locals 3

    .prologue
    .line 608
    invoke-super {p0}, Lmiui/maml/elements/AnimatedScreenElement;->resume()V

    .line 610
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 611
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 612
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1}, Lmiui/maml/elements/ImageScreenElement$Mask;->resume()V

    goto :goto_0

    .line 615
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    return-void
.end method

.method protected resumeAnim(J)V
    .locals 3
    .param p1, "time"    # J

    .prologue
    .line 672
    invoke-super {p0, p1, p2}, Lmiui/maml/elements/AnimatedScreenElement;->resumeAnim(J)V

    .line 673
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    if-eqz v2, :cond_0

    .line 674
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mMasks:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lmiui/maml/elements/ImageScreenElement$Mask;

    .line 675
    .local v1, "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    invoke-virtual {v1, p1, p2}, Lmiui/maml/elements/ImageScreenElement$Mask;->resumeAnim(J)V

    goto :goto_0

    .line 678
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v1    # "mask":Lmiui/maml/elements/ImageScreenElement$Mask;
    :cond_0
    return-void
.end method

.method public setBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bmp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 431
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 432
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0, p1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 433
    iget-boolean v0, p0, Lmiui/maml/elements/ImageScreenElement;->mLoadAsync:Z

    invoke-virtual {p0, v0}, Lmiui/maml/elements/ImageScreenElement;->updateBitmap(Z)V

    .line 434
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->requestUpdate()V

    .line 436
    :cond_0
    return-void
.end method

.method public setSrc(Ljava/lang/String;)V
    .locals 1
    .param p1, "src"    # Ljava/lang/String;

    .prologue
    .line 449
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    if-eqz v0, :cond_0

    .line 450
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcFormatter:Lmiui/maml/util/TextFormatter;

    invoke-virtual {v0, p1}, Lmiui/maml/util/TextFormatter;->setText(Ljava/lang/String;)V

    .line 452
    :cond_0
    return-void
.end method

.method public setSrcId(D)V
    .locals 3
    .param p1, "srcId"    # D

    .prologue
    .line 455
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lmiui/maml/data/Expression;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lmiui/maml/data/Expression;

    instance-of v0, v0, Lmiui/maml/data/Expression$NumberExpression;

    if-eqz v0, :cond_0

    .line 456
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lmiui/maml/data/Expression;

    check-cast v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-virtual {v0, p1, p2}, Lmiui/maml/data/Expression$NumberExpression;->setValue(D)V

    .line 460
    :goto_0
    return-void

    .line 458
    :cond_0
    new-instance v0, Lmiui/maml/data/Expression$NumberExpression;

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lmiui/maml/data/Expression$NumberExpression;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mSrcIdExpression:Lmiui/maml/data/Expression;

    goto :goto_0
.end method

.method public setSrcType(Ljava/lang/String;)V
    .locals 1
    .param p1, "srcType"    # Ljava/lang/String;

    .prologue
    .line 235
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mRoot:Lmiui/maml/ScreenElementRoot;

    invoke-static {v0, p1}, Lmiui/maml/elements/BitmapProvider;->create(Lmiui/maml/ScreenElementRoot;Ljava/lang/String;)Lmiui/maml/elements/BitmapProvider;

    move-result-object v0

    iput-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBitmapProvider:Lmiui/maml/elements/BitmapProvider;

    .line 236
    return-void
.end method

.method protected updateBitmap(Z)V
    .locals 2
    .param p1, "sync"    # Z

    .prologue
    .line 695
    invoke-virtual {p0, p1}, Lmiui/maml/elements/ImageScreenElement;->getBitmap(Z)Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    move-result-object v0

    .line 696
    .local v0, "versionedBmp":Lmiui/maml/elements/BitmapProvider$VersionedBitmap;
    iget v1, p0, Lmiui/maml/elements/ImageScreenElement;->mBlurRadius:I

    if-lez v1, :cond_0

    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-static {v0, v1}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->equals(Lmiui/maml/elements/BitmapProvider$VersionedBitmap;Lmiui/maml/elements/BitmapProvider$VersionedBitmap;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 697
    const/4 v1, 0x1

    iput-boolean v1, p0, Lmiui/maml/elements/ImageScreenElement;->mPendingBlur:Z

    .line 698
    :cond_0
    iget-object v1, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v1, v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->set(Lmiui/maml/elements/BitmapProvider$VersionedBitmap;)V

    .line 700
    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->updateBitmapVars()V

    .line 701
    return-void
.end method

.method protected updateBitmapVars()V
    .locals 4

    .prologue
    .line 704
    iget-boolean v0, p0, Lmiui/maml/elements/ImageScreenElement;->mHasName:Z

    if-eqz v0, :cond_0

    .line 707
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpSizeWidthVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmapWidth()I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/ImageScreenElement;->descale(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 708
    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mBmpSizeHeightVar:Lmiui/maml/data/IndexedVariable;

    invoke-virtual {p0}, Lmiui/maml/elements/ImageScreenElement;->getBitmapHeight()I

    move-result v1

    int-to-double v2, v1

    invoke-virtual {p0, v2, v3}, Lmiui/maml/elements/ImageScreenElement;->descale(D)D

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 709
    iget-object v2, p0, Lmiui/maml/elements/ImageScreenElement;->mHasBitmapVar:Lmiui/maml/data/IndexedVariable;

    iget-object v0, p0, Lmiui/maml/elements/ImageScreenElement;->mCurrentBitmap:Lmiui/maml/elements/BitmapProvider$VersionedBitmap;

    invoke-virtual {v0}, Lmiui/maml/elements/BitmapProvider$VersionedBitmap;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_1

    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    :goto_0
    invoke-virtual {v2, v0, v1}, Lmiui/maml/data/IndexedVariable;->set(D)V

    .line 711
    :cond_0
    return-void

    .line 709
    :cond_1
    const-wide/16 v0, 0x0

    goto :goto_0
.end method
