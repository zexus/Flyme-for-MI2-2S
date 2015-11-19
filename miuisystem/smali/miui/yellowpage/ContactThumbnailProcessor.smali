.class public Lmiui/yellowpage/ContactThumbnailProcessor;
.super Ljava/lang/Object;
.source "ContactThumbnailProcessor.java"

# interfaces
.implements Lmiui/yellowpage/YellowPageImgLoader$Image$ImageProcessor;


# static fields
.field private static final sPhotoSize:I = 0x86


# instance fields
.field private mBackgroundRes:I

.field private mContext:Landroid/content/Context;

.field private mDefaultPhoto:Z

.field private mForegroundRes:I

.field private mMaskRes:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-object p1, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mContext:Landroid/content/Context;

    .line 29
    const/4 v0, 0x1

    iput-boolean v0, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mDefaultPhoto:Z

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "forgroundRes"    # I
    .param p3, "backgroundRes"    # I
    .param p4, "maskRes"    # I

    .prologue
    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mContext:Landroid/content/Context;

    .line 21
    iput p2, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mForegroundRes:I

    .line 22
    iput p3, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mBackgroundRes:I

    .line 23
    iput p4, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mMaskRes:I

    .line 24
    const/4 v0, 0x0

    iput-boolean v0, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mDefaultPhoto:Z

    .line 25
    return-void
.end method


# virtual methods
.method public processImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 8
    .param p1, "originImage"    # Landroid/graphics/Bitmap;

    .prologue
    const/4 v1, 0x0

    const/16 v5, 0x86

    .line 34
    if-nez p1, :cond_0

    .line 48
    :goto_0
    return-object v1

    .line 38
    :cond_0
    const/4 v6, 0x0

    .line 39
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget-boolean v0, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mDefaultPhoto:Z

    if-eqz v0, :cond_1

    .line 40
    iget-object v0, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mContext:Landroid/content/Context;

    invoke-static {v0, p1, v5}, Lmiui/graphics/BitmapFactory;->createPhoto(Landroid/content/Context;Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;

    move-result-object v6

    :goto_1
    move-object v1, v6

    .line 48
    goto :goto_0

    .line 42
    :cond_1
    iget-object v0, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 43
    .local v7, "res":Landroid/content/res/Resources;
    iget v0, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mMaskRes:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iget v0, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mForegroundRes:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iget v0, p0, Lmiui/yellowpage/ContactThumbnailProcessor;->mBackgroundRes:I

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Lmiui/graphics/BitmapFactory;->composeBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;I)Landroid/graphics/Bitmap;

    move-result-object v6

    goto :goto_1
.end method
