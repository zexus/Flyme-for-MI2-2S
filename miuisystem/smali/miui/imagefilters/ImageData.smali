.class public Lmiui/imagefilters/ImageData;
.super Ljava/lang/Object;
.source "ImageData.java"


# instance fields
.field private backPixels:[I

.field height:I

.field private mHashCode:I

.field pixels:[I

.field width:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    const/4 v0, 0x0

    iput v0, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    .line 16
    iput p1, p0, Lmiui/imagefilters/ImageData;->width:I

    .line 17
    iput p2, p0, Lmiui/imagefilters/ImageData;->height:I

    .line 18
    mul-int v0, p1, p2

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 19
    return-void
.end method

.method public static bitmapToImageData(Landroid/graphics/Bitmap;)Lmiui/imagefilters/ImageData;
    .locals 9
    .param p0, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v2, 0x0

    .line 54
    new-instance v8, Lmiui/imagefilters/ImageData;

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    invoke-direct {v8, v0, v1}, Lmiui/imagefilters/ImageData;-><init>(II)V

    .line 55
    .local v8, "imgData":Lmiui/imagefilters/ImageData;
    iget-object v1, v8, Lmiui/imagefilters/ImageData;->pixels:[I

    iget v3, v8, Lmiui/imagefilters/ImageData;->width:I

    iget v6, v8, Lmiui/imagefilters/ImageData;->width:I

    iget v7, v8, Lmiui/imagefilters/ImageData;->height:I

    move-object v0, p0

    move v4, v2

    move v5, v2

    invoke-virtual/range {v0 .. v7}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 56
    const/16 v0, 0x64

    invoke-virtual {v8, v0}, Lmiui/imagefilters/ImageData;->generalRandomNum(I)I

    .line 57
    return-object v8
.end method

.method public static imageDataToBitmap(Lmiui/imagefilters/ImageData;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "imgData"    # Lmiui/imagefilters/ImageData;

    .prologue
    .line 61
    iget-object v0, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    iget v1, p0, Lmiui/imagefilters/ImageData;->width:I

    iget v2, p0, Lmiui/imagefilters/ImageData;->height:I

    sget-object v3, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public generalRandomNum(I)I
    .locals 7
    .param p1, "maxNum"    # I

    .prologue
    .line 26
    iget v5, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    if-nez v5, :cond_2

    .line 27
    const/16 v0, 0x8

    .line 28
    .local v0, "fragCount":I
    iget v5, p0, Lmiui/imagefilters/ImageData;->width:I

    div-int/lit8 v3, v5, 0x8

    .line 29
    .local v3, "xStep":I
    iget v5, p0, Lmiui/imagefilters/ImageData;->height:I

    div-int/lit8 v4, v5, 0x8

    .line 30
    .local v4, "yStep":I
    const/4 v1, 0x1

    .local v1, "i":I
    :goto_0
    const/16 v5, 0x8

    if-ge v1, v5, :cond_0

    .line 31
    mul-int v5, v1, v4

    iget v6, p0, Lmiui/imagefilters/ImageData;->width:I

    mul-int/2addr v5, v6

    mul-int v6, v1, v3

    add-int v2, v5, v6

    .line 32
    .local v2, "index":I
    iget v5, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    iget-object v6, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    aget v6, v6, v2

    xor-int/2addr v5, v6

    iput v5, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    .line 30
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 34
    .end local v2    # "index":I
    :cond_0
    iget v5, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    if-nez v5, :cond_1

    iput p1, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    .line 35
    :cond_1
    iget v5, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    if-gez v5, :cond_2

    iget v5, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    neg-int v5, v5

    iput v5, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    .line 37
    .end local v0    # "fragCount":I
    .end local v1    # "i":I
    .end local v3    # "xStep":I
    .end local v4    # "yStep":I
    :cond_2
    iget v5, p0, Lmiui/imagefilters/ImageData;->mHashCode:I

    rem-int/2addr v5, p1

    return v5
.end method

.method public getBackPixels()[I
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    array-length v0, v0

    iget-object v1, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    array-length v1, v1

    if-eq v0, v1, :cond_1

    .line 42
    :cond_0
    iget-object v0, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    array-length v0, v0

    new-array v0, v0, [I

    iput-object v0, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    .line 44
    :cond_1
    iget-object v0, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    return-object v0
.end method

.method public swapPixels()V
    .locals 2

    .prologue
    .line 48
    iget-object v0, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 49
    .local v0, "temp":[I
    iget-object v1, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    iput-object v1, p0, Lmiui/imagefilters/ImageData;->pixels:[I

    .line 50
    iput-object v0, p0, Lmiui/imagefilters/ImageData;->backPixels:[I

    .line 51
    return-void
.end method
