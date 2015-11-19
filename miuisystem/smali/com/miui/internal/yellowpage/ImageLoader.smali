.class public Lcom/miui/internal/yellowpage/ImageLoader;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/internal/yellowpage/ImageLoader$1;,
        Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;,
        Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;,
        Lcom/miui/internal/yellowpage/ImageLoader$State;
    }
.end annotation


# static fields
.field private static final BITMAP_CACHE_SIZE:I = 0xa00000

.field private static final MESSAGE_REQUEST_LOADED:I = 0x1

.field private static final TAG:Ljava/lang/String; = "ImageLoader"

.field private static final THREAD_POOL_COUNT:I = 0x6

.field private static sDisplayHeight:I

.field private static sDisplayWidth:I

.field private static sLoader:Lcom/miui/internal/yellowpage/ImageLoader;


# instance fields
.field private final BITMAP_CACHE_LOCK:Ljava/lang/Object;

.field private final mBitmapCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache",
            "<",
            "Lmiui/yellowpage/YellowPageImgLoader$Image;",
            "Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private final mDefaultBitmapCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lmiui/yellowpage/YellowPageImgLoader$Image;",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mLoadingRequest:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Landroid/widget/ImageView;",
            "Lmiui/yellowpage/YellowPageImgLoader$Image;",
            ">;"
        }
    .end annotation
.end field

.field private mMainThreadHandler:Landroid/os/Handler;

.field private mNetworkAccess:I

.field private volatile mPauseLoading:Z

.field private final mPendingRequests:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestingImageView:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lmiui/yellowpage/YellowPageImgLoader$Image;",
            "Ljava/util/LinkedList",
            "<",
            "Landroid/widget/ImageView;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    .line 107
    new-instance v0, Landroid/util/LruCache;

    const/high16 v1, 0xa00000

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    .line 108
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mDefaultBitmapCache:Ljava/util/Map;

    .line 110
    new-instance v0, Ljava/util/LinkedHashSet;

    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Set;

    .line 111
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mLoadingRequest:Ljava/util/Map;

    .line 112
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mRequestingImageView:Ljava/util/Map;

    .line 113
    new-instance v0, Landroid/os/Handler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1, p0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;

    .line 114
    const/4 v0, 0x6

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newFixedThreadPool(I)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 115
    iput-object p1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    .line 116
    return-void
.end method

.method static synthetic access$100(Lcom/miui/internal/yellowpage/ImageLoader;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/yellowpage/ImageLoader;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/internal/yellowpage/ImageLoader;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/yellowpage/ImageLoader;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mRequestingImageView:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$300(Lcom/miui/internal/yellowpage/ImageLoader;)Landroid/util/LruCache;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/yellowpage/ImageLoader;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    return-object v0
.end method

.method static synthetic access$400(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/yellowpage/ImageLoader;
    .param p1, "x1"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p2, "x2"    # Z

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;[B)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/internal/yellowpage/ImageLoader;
    .param p1, "x1"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p2, "x2"    # [B

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->cacheBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;[B)V

    return-void
.end method

.method static synthetic access$600(Lcom/miui/internal/yellowpage/ImageLoader;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Lcom/miui/internal/yellowpage/ImageLoader;

    .prologue
    .line 43
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private static acquireScreenAttr(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 133
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 134
    .local v0, "dm":Landroid/util/DisplayMetrics;
    const-string v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 135
    .local v1, "wm":Landroid/view/WindowManager;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 136
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    sput v2, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayHeight:I

    .line 137
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    sput v2, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayWidth:I

    .line 138
    return-void
.end method

.method private bindCachedImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;)Lcom/miui/internal/yellowpage/ImageLoader$State;
    .locals 5
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;

    .prologue
    .line 239
    iget-object v3, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 240
    const/4 v1, 0x0

    .line 241
    .local v1, "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    :try_start_0
    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v2, p2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    move-object v1, v0

    .line 242
    if-eqz v1, :cond_1

    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    sget-object v4, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v2, v4, :cond_1

    .line 243
    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 244
    invoke-direct {p0, p2, v1}, Lcom/miui/internal/yellowpage/ImageLoader;->inflateBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;)V

    .line 247
    :cond_0
    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v2}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Bitmap;

    invoke-direct {p0, p1, v2, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->bindImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lmiui/yellowpage/YellowPageImgLoader$Image;)V

    .line 248
    sget-object v2, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    monitor-exit v3

    .line 253
    :goto_0
    return-object v2

    .line 249
    :cond_1
    if-eqz v1, :cond_2

    .line 250
    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    monitor-exit v3

    goto :goto_0

    .line 252
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    :cond_2
    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 253
    sget-object v2, Lcom/miui/internal/yellowpage/ImageLoader$State;->NEEDED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    goto :goto_0
.end method

.method private bindDefaultImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V
    .locals 3
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p3, "defaultBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "defaultResId"    # I

    .prologue
    .line 486
    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mDefaultBitmapCache:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/graphics/Bitmap;

    .line 487
    .local v0, "cachedDefaultBitmap":Landroid/graphics/Bitmap;
    if-nez v0, :cond_1

    .line 489
    if-eqz p3, :cond_2

    .line 490
    :try_start_0
    invoke-virtual {p2, p3}, Lmiui/yellowpage/YellowPageImgLoader$Image;->proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 499
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 500
    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mDefaultBitmapCache:Ljava/util/Map;

    invoke-interface {v2, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 503
    :cond_1
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 504
    return-void

    .line 491
    :cond_2
    if-eqz p4, :cond_0

    .line 492
    :try_start_1
    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {p2, v2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v0

    goto :goto_0

    .line 495
    :catch_0
    move-exception v1

    .line 496
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V

    goto :goto_0
.end method

.method private bindImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lmiui/yellowpage/YellowPageImgLoader$Image;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;

    .prologue
    .line 479
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 480
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 482
    :cond_0
    return-void
.end method

.method private cacheBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;[B)V
    .locals 5
    .param p1, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p2, "bitmapData"    # [B

    .prologue
    .line 257
    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v2

    .line 258
    :try_start_0
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    .line 259
    .local v0, "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    if-nez v0, :cond_0

    .line 260
    new-instance v0, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    .end local v0    # "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;-><init>(Lcom/miui/internal/yellowpage/ImageLoader$1;)V

    .line 261
    .restart local v0    # "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v1, p1, v0}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 264
    :cond_0
    if-eqz p2, :cond_2

    .line 265
    iput-object p2, v0, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBytes:[B

    .line 266
    invoke-direct {p0, p1, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->inflateBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;)V

    .line 267
    iget-object v1, v0, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 269
    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    iput-object v1, v0, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    .line 278
    :goto_0
    monitor-exit v2

    .line 279
    return-void

    .line 271
    :cond_1
    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader$State;->NEEDED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    iput-object v1, v0, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    goto :goto_0

    .line 278
    .end local v0    # "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 274
    .restart local v0    # "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    :cond_2
    :try_start_1
    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader$State;->NEEDED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    iput-object v1, v0, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    .line 275
    const-string v1, "ImageLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "LoadImageRunnable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lmiui/yellowpage/YellowPageImgLoader$Image;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " load error"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method private calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I
    .locals 7
    .param p1, "options"    # Landroid/graphics/BitmapFactory$Options;
    .param p2, "reqWidth"    # I
    .param p3, "reqHeight"    # I

    .prologue
    .line 326
    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 327
    .local v0, "height":I
    iget v3, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 328
    .local v3, "width":I
    const/4 v2, 0x1

    .line 330
    .local v2, "inSampleSize":I
    if-gt v0, p3, :cond_0

    if-le v3, p2, :cond_1

    .line 334
    :cond_0
    int-to-float v5, v0

    int-to-float v6, p3

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 335
    .local v1, "heightRatio":I
    int-to-float v5, v3

    int-to-float v6, p2

    div-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v4

    .line 341
    .local v4, "widthRatio":I
    if-ge v1, v4, :cond_2

    move v2, v1

    .line 344
    .end local v1    # "heightRatio":I
    .end local v4    # "widthRatio":I
    :cond_1
    :goto_0
    return v2

    .restart local v1    # "heightRatio":I
    .restart local v4    # "widthRatio":I
    :cond_2
    move v2, v4

    .line 341
    goto :goto_0
.end method

.method private decodeBitmap([B)Landroid/graphics/Bitmap;
    .locals 6
    .param p1, "bytes"    # [B

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 304
    if-eqz p1, :cond_0

    array-length v2, p1

    if-lez v2, :cond_0

    .line 306
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 307
    .local v1, "ops":Landroid/graphics/BitmapFactory$Options;
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 308
    array-length v2, p1

    invoke-static {p1, v4, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 311
    invoke-direct {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getDisplayWidth()I

    move-result v2

    invoke-direct {p0}, Lcom/miui/internal/yellowpage/ImageLoader;->getDisplayHeight()I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Lcom/miui/internal/yellowpage/ImageLoader;->calculateInSampleSize(Landroid/graphics/BitmapFactory$Options;II)I

    move-result v2

    iput v2, v1, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 314
    iput-boolean v4, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 315
    iput-boolean v5, v1, Landroid/graphics/BitmapFactory$Options;->inPurgeable:Z

    .line 316
    array-length v2, p1

    invoke-static {p1, v4, v2, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 320
    .end local v1    # "ops":Landroid/graphics/BitmapFactory$Options;
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getDisplayHeight()I
    .locals 1

    .prologue
    .line 119
    sget v0, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayHeight:I

    if-nez v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/yellowpage/ImageLoader;->acquireScreenAttr(Landroid/content/Context;)V

    .line 122
    :cond_0
    sget v0, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayHeight:I

    return v0
.end method

.method private getDisplayWidth()I
    .locals 1

    .prologue
    .line 126
    sget v0, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayWidth:I

    if-nez v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/miui/internal/yellowpage/ImageLoader;->acquireScreenAttr(Landroid/content/Context;)V

    .line 129
    :cond_0
    sget v0, Lcom/miui/internal/yellowpage/ImageLoader;->sDisplayWidth:I

    return v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/miui/internal/yellowpage/ImageLoader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 89
    const-class v1, Lcom/miui/internal/yellowpage/ImageLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;

    if-nez v0, :cond_0

    .line 90
    new-instance v0, Lcom/miui/internal/yellowpage/ImageLoader;

    invoke-direct {v0, p0}, Lcom/miui/internal/yellowpage/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;

    .line 92
    :cond_0
    sget-object v0, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 89
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;I)Lcom/miui/internal/yellowpage/ImageLoader;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "networkAccess"    # I

    .prologue
    .line 99
    const-class v1, Lcom/miui/internal/yellowpage/ImageLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;

    if-nez v0, :cond_0

    .line 100
    new-instance v0, Lcom/miui/internal/yellowpage/ImageLoader;

    invoke-direct {v0, p0}, Lcom/miui/internal/yellowpage/ImageLoader;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;

    .line 102
    :cond_0
    sget-object v0, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;

    iput p1, v0, Lcom/miui/internal/yellowpage/ImageLoader;->mNetworkAccess:I

    .line 103
    sget-object v0, Lcom/miui/internal/yellowpage/ImageLoader;->sLoader:Lcom/miui/internal/yellowpage/ImageLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 99
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private inflateBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;)V
    .locals 6
    .param p1, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p2, "holder"    # Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    .prologue
    const/4 v5, 0x0

    .line 283
    :try_start_0
    iget-object v3, p2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBytes:[B

    if-eqz v3, :cond_2

    .line 284
    iget-object v3, p2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBytes:[B

    invoke-direct {p0, v3}, Lcom/miui/internal/yellowpage/ImageLoader;->decodeBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 285
    .local v2, "src":Landroid/graphics/Bitmap;
    if-eqz v2, :cond_1

    .line 286
    invoke-virtual {p1, v2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->proccessImage(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 287
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v0}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 297
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "src":Landroid/graphics/Bitmap;
    :goto_0
    iget-object v3, p2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    if-nez v3, :cond_0

    .line 298
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    .line 301
    :cond_0
    :goto_1
    return-void

    .line 289
    .restart local v2    # "src":Landroid/graphics/Bitmap;
    :cond_1
    :try_start_1
    const-string v3, "ImageLoader"

    const-string v4, "Can not decode bitmap bytes."

    invoke-static {v3, v4}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 294
    .end local v2    # "src":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v1

    .line 295
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 297
    iget-object v3, p2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    if-nez v3, :cond_0

    .line 298
    new-instance v3, Ljava/lang/ref/SoftReference;

    invoke-direct {v3, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v3, p2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    goto :goto_1

    .line 292
    .end local v1    # "e":Ljava/lang/OutOfMemoryError;
    :cond_2
    :try_start_3
    const-string v3, "ImageLoader"

    const-string v4, "The holder\'s bytes should not be null"

    invoke-static {v3, v4}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/OutOfMemoryError; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 297
    :catchall_0
    move-exception v3

    iget-object v4, p2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    if-nez v4, :cond_3

    .line 298
    new-instance v4, Ljava/lang/ref/SoftReference;

    invoke-direct {v4, v5}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, p2, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    :cond_3
    throw v3
.end method

.method private loadCachedImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;)[B
    .locals 5
    .param p1, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;

    .prologue
    .line 220
    iget-object v3, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 221
    const/4 v1, 0x0

    .line 222
    .local v1, "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    :try_start_0
    iget-object v2, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    move-object v1, v0

    .line 223
    if-eqz v1, :cond_0

    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    sget-object v4, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v2, v4, :cond_0

    .line 224
    iget-object v2, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBytes:[B

    monitor-exit v3

    .line 226
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    monitor-exit v3

    goto :goto_0

    .line 228
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V
    .locals 4
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p3, "defaultBitmap"    # Landroid/graphics/Bitmap;
    .param p4, "defaultImageRes"    # I

    .prologue
    .line 160
    if-eqz p2, :cond_2

    invoke-virtual {p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 161
    invoke-direct {p0, p1, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->bindCachedImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;)Lcom/miui/internal/yellowpage/ImageLoader$State;

    move-result-object v0

    .line 162
    .local v0, "loadState":Lcom/miui/internal/yellowpage/ImageLoader$State;
    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v0, v1, :cond_1

    .line 163
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 164
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mLoadingRequest:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 185
    .end local v0    # "loadState":Lcom/miui/internal/yellowpage/ImageLoader$State;
    :cond_0
    :goto_0
    return-void

    .line 169
    .restart local v0    # "loadState":Lcom/miui/internal/yellowpage/ImageLoader$State;
    :cond_1
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->bindDefaultImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V

    .line 172
    sget-object v1, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-eq v0, v1, :cond_0

    .line 173
    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 174
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-direct {p0, p1}, Lcom/miui/internal/yellowpage/ImageLoader;->requestLoading(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 176
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 180
    .end local v0    # "loadState":Lcom/miui/internal/yellowpage/ImageLoader$State;
    :cond_2
    const-string v1, "ImageLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "loadImage: invalid image : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Lmiui/yellowpage/YellowPageImgLoader$Image;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 182
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mLoadingRequest:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 183
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->bindDefaultImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V

    goto :goto_0
.end method

.method private loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B
    .locals 1
    .param p1, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p2, "online"    # Z

    .prologue
    .line 507
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;ZI)[B

    move-result-object v0

    return-object v0
.end method

.method private loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;ZI)[B
    .locals 20
    .param p1, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p2, "online"    # Z
    .param p3, "timeout"    # I

    .prologue
    .line 511
    invoke-virtual/range {p1 .. p1}, Lmiui/yellowpage/YellowPageImgLoader$Image;->getUrl()Ljava/lang/String;

    move-result-object v19

    .line 512
    .local v19, "url":Ljava/lang/String;
    invoke-static/range {v19 .. v19}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 513
    const/4 v11, 0x0

    .line 626
    :cond_0
    :goto_0
    return-object v11

    .line 516
    :cond_1
    const/4 v8, 0x0

    .line 518
    .local v8, "afd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    sget-object v4, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE:Landroid/net/Uri;

    invoke-virtual/range {p1 .. p1}, Lmiui/yellowpage/YellowPageImgLoader$Image;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    const-string v5, "w"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v8

    .line 526
    const/16 v18, 0x0

    .line 527
    .local v18, "os":Ljava/io/OutputStream;
    const/4 v9, 0x0

    .line 528
    .local v9, "bos":Ljava/io/ByteArrayOutputStream;
    const/4 v15, 0x0

    .line 531
    .local v15, "is":Ljava/io/FileInputStream;
    :try_start_1
    new-instance v10, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v10}, Ljava/io/ByteArrayOutputStream;-><init>()V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_27
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_26
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1c
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 532
    .end local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v10, "bos":Ljava/io/ByteArrayOutputStream;
    :try_start_2
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_c
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_25
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_15

    if-eqz p2, :cond_15

    .line 534
    :try_start_3
    sget-object v2, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE_CLOUD:Landroid/net/Uri;

    invoke-static/range {v19 .. v19}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    .line 537
    .local v13, "cloudImageUri":Landroid/net/Uri$Builder;
    const-string v2, "timeout"

    invoke-static/range {p3 .. p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 538
    const-string v2, "overwrite_network_access"

    move-object/from16 v0, p0

    iget v4, v0, Lcom/miui/internal/yellowpage/ImageLoader;->mNetworkAccess:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v13, v2, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 539
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v4

    const-string v5, "r"

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v12

    .line 541
    .local v12, "cloudImage":Landroid/content/res/AssetFileDescriptor;
    if-eqz v12, :cond_2

    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->getLength()J
    :try_end_3
    .catch Ljava/io/FileNotFoundException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_25
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-nez v2, :cond_6

    .line 542
    :cond_2
    const/4 v11, 0x0

    .line 594
    if-eqz v18, :cond_3

    .line 596
    :try_start_4
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 602
    :cond_3
    :goto_1
    if-eqz v10, :cond_4

    .line 604
    :try_start_5
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 610
    :cond_4
    :goto_2
    if-eqz v15, :cond_5

    .line 612
    :try_start_6
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_4

    .line 618
    :cond_5
    :goto_3
    if-eqz v8, :cond_0

    .line 620
    :try_start_7
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_0

    .line 621
    :catch_0
    move-exception v14

    .line 622
    .local v14, "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 520
    .end local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v12    # "cloudImage":Landroid/content/res/AssetFileDescriptor;
    .end local v13    # "cloudImageUri":Landroid/net/Uri$Builder;
    .end local v14    # "e":Ljava/io/IOException;
    .end local v15    # "is":Ljava/io/FileInputStream;
    .end local v18    # "os":Ljava/io/OutputStream;
    :catch_1
    move-exception v14

    .line 521
    .local v14, "e":Ljava/io/FileNotFoundException;
    const-string v2, "ImageLoader"

    const-string v4, "The yellowpage provider\'s image can not be written now"

    invoke-static {v2, v4}, Lmiui/yellowpage/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    invoke-virtual {v14}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 523
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 597
    .end local v14    # "e":Ljava/io/FileNotFoundException;
    .restart local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v12    # "cloudImage":Landroid/content/res/AssetFileDescriptor;
    .restart local v13    # "cloudImageUri":Landroid/net/Uri$Builder;
    .restart local v15    # "is":Ljava/io/FileInputStream;
    .restart local v18    # "os":Ljava/io/OutputStream;
    :catch_2
    move-exception v14

    .line 598
    .local v14, "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 605
    .end local v14    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v14

    .line 606
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    .line 613
    .end local v14    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v14

    .line 614
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    .line 546
    .end local v14    # "e":Ljava/io/IOException;
    :cond_6
    :try_start_8
    invoke-virtual {v12}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v15

    .line 547
    const/16 v2, 0x1000

    new-array v11, v2, [B

    .line 548
    .local v11, "buffer":[B
    const/16 v16, 0x0

    .line 549
    .local v16, "len":I
    :goto_4
    invoke-virtual {v15, v11}, Ljava/io/FileInputStream;->read([B)I

    move-result v16

    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_c

    .line 550
    const/4 v2, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v11, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_8
    .catch Ljava/io/FileNotFoundException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_6
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_25
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_4

    .line 567
    .end local v11    # "buffer":[B
    .end local v12    # "cloudImage":Landroid/content/res/AssetFileDescriptor;
    .end local v13    # "cloudImageUri":Landroid/net/Uri$Builder;
    .end local v16    # "len":I
    :catch_5
    move-exception v14

    .line 568
    .local v14, "e":Ljava/io/FileNotFoundException;
    :try_start_9
    invoke-virtual {v14}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 570
    sget-object v2, Lmiui/yellowpage/YellowPageContract$ImageLookup;->CONTENT_URI_IMAGE_CLOUD:Landroid/net/Uri;

    invoke-static/range {v19 .. v19}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 572
    .local v3, "uri":Landroid/net/Uri;
    invoke-virtual {v3}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    const-string v4, "fileName"

    invoke-virtual/range {p1 .. p1}, Lmiui/yellowpage/YellowPageImgLoader$Image;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v3

    .line 573
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    :try_end_9
    .catch Ljava/io/FileNotFoundException; {:try_start_9 .. :try_end_9} :catch_c
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_6
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_25
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 594
    .end local v3    # "uri":Landroid/net/Uri;
    .end local v14    # "e":Ljava/io/FileNotFoundException;
    :cond_7
    if-eqz v18, :cond_8

    .line 596
    :try_start_a
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_12

    .line 602
    :cond_8
    :goto_5
    if-eqz v10, :cond_9

    .line 604
    :try_start_b
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_13

    .line 610
    :cond_9
    :goto_6
    if-eqz v15, :cond_a

    .line 612
    :try_start_c
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_14

    .line 618
    :cond_a
    :goto_7
    if-eqz v8, :cond_24

    .line 620
    :try_start_d
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_15

    move-object v9, v10

    .line 626
    .end local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_b
    :goto_8
    const/4 v11, 0x0

    goto/16 :goto_0

    .line 553
    .end local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "buffer":[B
    .restart local v12    # "cloudImage":Landroid/content/res/AssetFileDescriptor;
    .restart local v13    # "cloudImageUri":Landroid/net/Uri$Builder;
    .restart local v16    # "len":I
    :cond_c
    :try_start_e
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v11

    .line 554
    new-instance v17, Landroid/graphics/BitmapFactory$Options;

    invoke-direct/range {v17 .. v17}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 555
    .local v17, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v2, 0x1

    move-object/from16 v0, v17

    iput-boolean v2, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 556
    const/4 v2, 0x0

    array-length v4, v11

    move-object/from16 v0, v17

    invoke-static {v11, v2, v4, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 557
    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d

    move-object/from16 v0, v17

    iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v4, "image"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_11

    .line 558
    :cond_d
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid mime type ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v17

    iget-object v5, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_e
    .catch Ljava/io/FileNotFoundException; {:try_start_e .. :try_end_e} :catch_5
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_6
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_25
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 589
    .end local v11    # "buffer":[B
    .end local v12    # "cloudImage":Landroid/content/res/AssetFileDescriptor;
    .end local v13    # "cloudImageUri":Landroid/net/Uri$Builder;
    .end local v16    # "len":I
    .end local v17    # "opt":Landroid/graphics/BitmapFactory$Options;
    :catch_6
    move-exception v14

    move-object v9, v10

    .line 590
    .end local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v14, "e":Ljava/io/IOException;
    :goto_9
    :try_start_f
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 594
    if-eqz v18, :cond_e

    .line 596
    :try_start_10
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_10
    .catch Ljava/io/IOException; {:try_start_10 .. :try_end_10} :catch_19

    .line 602
    :cond_e
    :goto_a
    if-eqz v9, :cond_f

    .line 604
    :try_start_11
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_1a

    .line 610
    :cond_f
    :goto_b
    if-eqz v15, :cond_10

    .line 612
    :try_start_12
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_1b

    .line 618
    :cond_10
    :goto_c
    if-eqz v8, :cond_b

    .line 620
    :try_start_13
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_7

    goto :goto_8

    .line 621
    :catch_7
    move-exception v14

    .line 622
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_8

    .line 561
    .end local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "buffer":[B
    .restart local v12    # "cloudImage":Landroid/content/res/AssetFileDescriptor;
    .restart local v13    # "cloudImageUri":Landroid/net/Uri$Builder;
    .restart local v16    # "len":I
    .restart local v17    # "opt":Landroid/graphics/BitmapFactory$Options;
    :cond_11
    :try_start_14
    array-length v2, v11

    if-lez v2, :cond_7

    .line 562
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->createOutputStream()Ljava/io/FileOutputStream;

    move-result-object v18

    .line 563
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/io/OutputStream;->write([B)V

    .line 564
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->flush()V
    :try_end_14
    .catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_14} :catch_5
    .catch Ljava/io/IOException; {:try_start_14 .. :try_end_14} :catch_6
    .catch Ljava/lang/Exception; {:try_start_14 .. :try_end_14} :catch_25
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    .line 594
    if-eqz v18, :cond_12

    .line 596
    :try_start_15
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_15
    .catch Ljava/io/IOException; {:try_start_15 .. :try_end_15} :catch_9

    .line 602
    :cond_12
    :goto_d
    if-eqz v10, :cond_13

    .line 604
    :try_start_16
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_16
    .catch Ljava/io/IOException; {:try_start_16 .. :try_end_16} :catch_a

    .line 610
    :cond_13
    :goto_e
    if-eqz v15, :cond_14

    .line 612
    :try_start_17
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_17
    .catch Ljava/io/IOException; {:try_start_17 .. :try_end_17} :catch_b

    .line 618
    :cond_14
    :goto_f
    if-eqz v8, :cond_0

    .line 620
    :try_start_18
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_18
    .catch Ljava/io/IOException; {:try_start_18 .. :try_end_18} :catch_8

    goto/16 :goto_0

    .line 621
    :catch_8
    move-exception v14

    .line 622
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 597
    .end local v14    # "e":Ljava/io/IOException;
    :catch_9
    move-exception v14

    .line 598
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_d

    .line 605
    .end local v14    # "e":Ljava/io/IOException;
    :catch_a
    move-exception v14

    .line 606
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_e

    .line 613
    .end local v14    # "e":Ljava/io/IOException;
    :catch_b
    move-exception v14

    .line 614
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_f

    .line 575
    .end local v11    # "buffer":[B
    .end local v12    # "cloudImage":Landroid/content/res/AssetFileDescriptor;
    .end local v13    # "cloudImageUri":Landroid/net/Uri$Builder;
    .end local v14    # "e":Ljava/io/IOException;
    .end local v16    # "len":I
    .end local v17    # "opt":Landroid/graphics/BitmapFactory$Options;
    :cond_15
    :try_start_19
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getLength()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v2, v4, v6

    if-lez v2, :cond_7

    .line 576
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->createInputStream()Ljava/io/FileInputStream;

    move-result-object v15

    .line 577
    const/16 v2, 0x1000

    new-array v11, v2, [B

    .line 578
    .restart local v11    # "buffer":[B
    const/16 v16, 0x0

    .line 579
    .restart local v16    # "len":I
    :goto_10
    invoke-virtual {v15, v11}, Ljava/io/FileInputStream;->read([B)I

    move-result v16

    const/4 v2, -0x1

    move/from16 v0, v16

    if-eq v0, v2, :cond_19

    .line 580
    const/4 v2, 0x0

    move/from16 v0, v16

    invoke-virtual {v10, v11, v2, v0}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_19
    .catch Ljava/io/FileNotFoundException; {:try_start_19 .. :try_end_19} :catch_c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_19} :catch_6
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_19} :catch_25
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto :goto_10

    .line 587
    .end local v11    # "buffer":[B
    .end local v16    # "len":I
    :catch_c
    move-exception v14

    move-object v9, v10

    .line 588
    .end local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .local v14, "e":Ljava/io/FileNotFoundException;
    :goto_11
    :try_start_1a
    invoke-virtual {v14}, Ljava/io/FileNotFoundException;->printStackTrace()V
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_0

    .line 594
    if-eqz v18, :cond_16

    .line 596
    :try_start_1b
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_1b
    .catch Ljava/io/IOException; {:try_start_1b .. :try_end_1b} :catch_16

    .line 602
    .end local v14    # "e":Ljava/io/FileNotFoundException;
    :cond_16
    :goto_12
    if-eqz v9, :cond_17

    .line 604
    :try_start_1c
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_1c .. :try_end_1c} :catch_17

    .line 610
    :cond_17
    :goto_13
    if-eqz v15, :cond_18

    .line 612
    :try_start_1d
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_1d
    .catch Ljava/io/IOException; {:try_start_1d .. :try_end_1d} :catch_18

    .line 618
    :cond_18
    :goto_14
    if-eqz v8, :cond_b

    .line 620
    :try_start_1e
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_1e} :catch_d

    goto/16 :goto_8

    .line 621
    :catch_d
    move-exception v14

    .line 622
    .local v14, "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 583
    .end local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v11    # "buffer":[B
    .restart local v16    # "len":I
    :cond_19
    :try_start_1f
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v2

    if-lez v2, :cond_7

    .line 584
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_1f
    .catch Ljava/io/FileNotFoundException; {:try_start_1f .. :try_end_1f} :catch_c
    .catch Ljava/io/IOException; {:try_start_1f .. :try_end_1f} :catch_6
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_1f} :catch_25
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    move-result-object v11

    .line 594
    .end local v11    # "buffer":[B
    if-eqz v18, :cond_1a

    .line 596
    :try_start_20
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_20
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_20} :catch_f

    .line 602
    :cond_1a
    :goto_15
    if-eqz v10, :cond_1b

    .line 604
    :try_start_21
    invoke-virtual {v10}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_21
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_21} :catch_10

    .line 610
    :cond_1b
    :goto_16
    if-eqz v15, :cond_1c

    .line 612
    :try_start_22
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_22
    .catch Ljava/io/IOException; {:try_start_22 .. :try_end_22} :catch_11

    .line 618
    :cond_1c
    :goto_17
    if-eqz v8, :cond_0

    .line 620
    :try_start_23
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_23
    .catch Ljava/io/IOException; {:try_start_23 .. :try_end_23} :catch_e

    goto/16 :goto_0

    .line 621
    :catch_e
    move-exception v14

    .line 622
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_0

    .line 597
    .end local v14    # "e":Ljava/io/IOException;
    :catch_f
    move-exception v14

    .line 598
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_15

    .line 605
    .end local v14    # "e":Ljava/io/IOException;
    :catch_10
    move-exception v14

    .line 606
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_16

    .line 613
    .end local v14    # "e":Ljava/io/IOException;
    :catch_11
    move-exception v14

    .line 614
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_17

    .line 597
    .end local v14    # "e":Ljava/io/IOException;
    .end local v16    # "len":I
    :catch_12
    move-exception v14

    .line 598
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_5

    .line 605
    .end local v14    # "e":Ljava/io/IOException;
    :catch_13
    move-exception v14

    .line 606
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_6

    .line 613
    .end local v14    # "e":Ljava/io/IOException;
    :catch_14
    move-exception v14

    .line 614
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_7

    .line 621
    .end local v14    # "e":Ljava/io/IOException;
    :catch_15
    move-exception v14

    .line 622
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    move-object v9, v10

    .line 623
    .end local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_8

    .line 597
    .local v14, "e":Ljava/io/FileNotFoundException;
    :catch_16
    move-exception v14

    .line 598
    .local v14, "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_12

    .line 605
    .end local v14    # "e":Ljava/io/IOException;
    :catch_17
    move-exception v14

    .line 606
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_13

    .line 613
    .end local v14    # "e":Ljava/io/IOException;
    :catch_18
    move-exception v14

    .line 614
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_14

    .line 597
    :catch_19
    move-exception v14

    .line 598
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_a

    .line 605
    :catch_1a
    move-exception v14

    .line 606
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_b

    .line 613
    :catch_1b
    move-exception v14

    .line 614
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_c

    .line 591
    .end local v14    # "e":Ljava/io/IOException;
    :catch_1c
    move-exception v14

    .line 592
    .local v14, "e":Ljava/lang/Exception;
    :goto_18
    :try_start_24
    invoke-virtual {v14}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_0

    .line 594
    if-eqz v18, :cond_1d

    .line 596
    :try_start_25
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_25} :catch_1e

    .line 602
    .end local v14    # "e":Ljava/lang/Exception;
    :cond_1d
    :goto_19
    if-eqz v9, :cond_1e

    .line 604
    :try_start_26
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_26
    .catch Ljava/io/IOException; {:try_start_26 .. :try_end_26} :catch_1f

    .line 610
    :cond_1e
    :goto_1a
    if-eqz v15, :cond_1f

    .line 612
    :try_start_27
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_27
    .catch Ljava/io/IOException; {:try_start_27 .. :try_end_27} :catch_20

    .line 618
    :cond_1f
    :goto_1b
    if-eqz v8, :cond_b

    .line 620
    :try_start_28
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_28
    .catch Ljava/io/IOException; {:try_start_28 .. :try_end_28} :catch_1d

    goto/16 :goto_8

    .line 621
    :catch_1d
    move-exception v14

    .line 622
    .local v14, "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto/16 :goto_8

    .line 597
    .local v14, "e":Ljava/lang/Exception;
    :catch_1e
    move-exception v14

    .line 598
    .local v14, "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_19

    .line 605
    .end local v14    # "e":Ljava/io/IOException;
    :catch_1f
    move-exception v14

    .line 606
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1a

    .line 613
    .end local v14    # "e":Ljava/io/IOException;
    :catch_20
    move-exception v14

    .line 614
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1b

    .line 594
    .end local v14    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    :goto_1c
    if-eqz v18, :cond_20

    .line 596
    :try_start_29
    invoke-virtual/range {v18 .. v18}, Ljava/io/OutputStream;->close()V
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_29 .. :try_end_29} :catch_21

    .line 602
    :cond_20
    :goto_1d
    if-eqz v9, :cond_21

    .line 604
    :try_start_2a
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2a
    .catch Ljava/io/IOException; {:try_start_2a .. :try_end_2a} :catch_22

    .line 610
    :cond_21
    :goto_1e
    if-eqz v15, :cond_22

    .line 612
    :try_start_2b
    invoke-virtual {v15}, Ljava/io/FileInputStream;->close()V
    :try_end_2b
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2b} :catch_23

    .line 618
    :cond_22
    :goto_1f
    if-eqz v8, :cond_23

    .line 620
    :try_start_2c
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V
    :try_end_2c
    .catch Ljava/io/IOException; {:try_start_2c .. :try_end_2c} :catch_24

    .line 623
    :cond_23
    :goto_20
    throw v2

    .line 597
    :catch_21
    move-exception v14

    .line 598
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1d

    .line 605
    .end local v14    # "e":Ljava/io/IOException;
    :catch_22
    move-exception v14

    .line 606
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1e

    .line 613
    .end local v14    # "e":Ljava/io/IOException;
    :catch_23
    move-exception v14

    .line 614
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1f

    .line 621
    .end local v14    # "e":Ljava/io/IOException;
    :catch_24
    move-exception v14

    .line 622
    .restart local v14    # "e":Ljava/io/IOException;
    invoke-virtual {v14}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_20

    .line 594
    .end local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .end local v14    # "e":Ljava/io/IOException;
    .restart local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    :catchall_1
    move-exception v2

    move-object v9, v10

    .end local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_1c

    .line 591
    .end local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    :catch_25
    move-exception v14

    move-object v9, v10

    .end local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    goto :goto_18

    .line 589
    :catch_26
    move-exception v14

    goto/16 :goto_9

    .line 587
    :catch_27
    move-exception v14

    goto/16 :goto_11

    .end local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    :cond_24
    move-object v9, v10

    .end local v10    # "bos":Ljava/io/ByteArrayOutputStream;
    .restart local v9    # "bos":Ljava/io/ByteArrayOutputStream;
    goto/16 :goto_8
.end method

.method private onRequestLoaded(Landroid/os/Message;)V
    .locals 9
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 387
    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-nez v5, :cond_0

    .line 418
    :goto_0
    return-void

    .line 391
    :cond_0
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lmiui/yellowpage/YellowPageImgLoader$Image;

    .line 392
    .local v2, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    iget-object v6, p0, Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v6

    .line 393
    :try_start_0
    iget-object v5, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mRequestingImageView:Ljava/util/Map;

    invoke-interface {v5, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    .line 394
    .local v3, "imageViewList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 396
    .local v4, "view":Landroid/widget/ImageView;
    if-eqz v2, :cond_1

    iget-object v5, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v5, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    iget-object v5, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mLoadingRequest:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v2, v5}, Lmiui/yellowpage/YellowPageImgLoader$Image;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 399
    iget-object v5, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mLoadingRequest:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 400
    iget-object v5, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;

    invoke-virtual {v5, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    .line 402
    .local v0, "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    if-eqz v0, :cond_3

    iget-object v5, v0, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    sget-object v7, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v5, v7, :cond_3

    .line 403
    iget-object v5, v0, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_2

    .line 404
    invoke-direct {p0, v2, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->inflateBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;)V

    .line 406
    :cond_2
    iget-object v5, v0, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mBitmapRef:Ljava/lang/ref/Reference;

    invoke-virtual {v5}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/graphics/Bitmap;

    invoke-direct {p0, v4, v5, v2}, Lcom/miui/internal/yellowpage/ImageLoader;->bindImage(Landroid/widget/ImageView;Landroid/graphics/Bitmap;Lmiui/yellowpage/YellowPageImgLoader$Image;)V

    .line 407
    const-string v5, "ImageLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage:ImageView with image "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " binded"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lmiui/yellowpage/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 417
    .end local v0    # "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v3    # "imageViewList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    .end local v4    # "view":Landroid/widget/ImageView;
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .line 411
    .restart local v0    # "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    .restart local v1    # "i$":Ljava/util/Iterator;
    .restart local v3    # "imageViewList":Ljava/util/List;, "Ljava/util/List<Landroid/widget/ImageView;>;"
    .restart local v4    # "view":Landroid/widget/ImageView;
    :cond_3
    :try_start_1
    const-string v5, "ImageLoader"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "handleMessage:image "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " was garbaged"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Lmiui/yellowpage/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    invoke-direct {p0, v4}, Lcom/miui/internal/yellowpage/ImageLoader;->requestLoading(Landroid/widget/ImageView;)Z

    goto/16 :goto_1

    .line 416
    .end local v0    # "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    .end local v4    # "view":Landroid/widget/ImageView;
    :cond_4
    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 417
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0
.end method

.method private requestLoading(Landroid/widget/ImageView;)Z
    .locals 2
    .param p1, "image"    # Landroid/widget/ImageView;

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPauseLoading:Z

    if-nez v0, :cond_0

    .line 349
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mLoadingRequest:Ljava/util/Map;

    invoke-virtual {p1}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/yellowpage/YellowPageImgLoader$Image;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 350
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;

    invoke-direct {v1, p0, p1}, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;-><init>(Lcom/miui/internal/yellowpage/ImageLoader;Landroid/widget/ImageView;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 351
    const/4 v0, 0x1

    .line 353
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelRequest(Landroid/widget/ImageView;)V
    .locals 1
    .param p1, "image"    # Landroid/widget/ImageView;

    .prologue
    .line 357
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 358
    iget-object v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mLoadingRequest:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    return-void
.end method

.method public handleMessage(Landroid/os/Message;)Z
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 376
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 383
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 378
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/miui/internal/yellowpage/ImageLoader;->onRequestLoaded(Landroid/os/Message;)V

    goto :goto_0

    .line 376
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;I)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p3, "defaultImageRes"    # I

    .prologue
    .line 148
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0, p3}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V

    .line 149
    return-void
.end method

.method public loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "view"    # Landroid/widget/ImageView;
    .param p2, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p3, "defaultBitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 152
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Landroid/widget/ImageView;Lmiui/yellowpage/YellowPageImgLoader$Image;Landroid/graphics/Bitmap;I)V

    .line 153
    return-void
.end method

.method public loadImageBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)Landroid/graphics/Bitmap;
    .locals 1
    .param p1, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p2, "online"    # Z

    .prologue
    .line 191
    invoke-virtual {p0, p1, p2}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->decodeBitmap([B)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B
    .locals 1
    .param p1, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p2, "online"    # Z

    .prologue
    const/4 v0, 0x0

    .line 156
    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;ZII)[B

    move-result-object v0

    return-object v0
.end method

.method public loadImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;ZII)[B
    .locals 6
    .param p1, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;
    .param p2, "online"    # Z
    .param p3, "defaultRes"    # I
    .param p4, "timeout"    # I

    .prologue
    .line 198
    invoke-direct {p0, p1}, Lcom/miui/internal/yellowpage/ImageLoader;->loadCachedImageBytes(Lmiui/yellowpage/YellowPageImgLoader$Image;)[B

    move-result-object v1

    .line 199
    .local v1, "bytes":[B
    if-eqz v1, :cond_0

    move-object v2, v1

    .line 216
    .end local v1    # "bytes":[B
    .local v2, "bytes":[B
    :goto_0
    return-object v2

    .line 203
    .end local v2    # "bytes":[B
    .restart local v1    # "bytes":[B
    :cond_0
    invoke-direct {p0, p1, p2, p4}, Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;ZI)[B

    move-result-object v1

    .line 204
    if-eqz v1, :cond_2

    .line 205
    invoke-direct {p0, p1, v1}, Lcom/miui/internal/yellowpage/ImageLoader;->cacheBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;[B)V

    :cond_1
    :goto_1
    move-object v2, v1

    .line 216
    .end local v1    # "bytes":[B
    .restart local v2    # "bytes":[B
    goto :goto_0

    .line 207
    .end local v2    # "bytes":[B
    .restart local v1    # "bytes":[B
    :cond_2
    if-eqz p3, :cond_1

    .line 208
    const-string v4, "ImageLoader"

    const-string v5, "failed to load image, return default res"

    invoke-static {v4, v5}, Lmiui/yellowpage/Log;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 209
    iget-object v4, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    check-cast v4, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {v4}, Landroid/graphics/drawable/BitmapDrawable;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 210
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 211
    .local v3, "stream":Ljava/io/ByteArrayOutputStream;
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {v0, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 212
    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    goto :goto_1
.end method

.method public pauseLoading()V
    .locals 1

    .prologue
    .line 362
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPauseLoading:Z

    .line 363
    return-void
.end method

.method public resumeLoading()V
    .locals 2

    .prologue
    .line 366
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPauseLoading:Z

    .line 367
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader;->mPendingRequests:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 368
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/widget/ImageView;>;"
    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 369
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    invoke-direct {p0, v1}, Lcom/miui/internal/yellowpage/ImageLoader;->requestLoading(Landroid/widget/ImageView;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 370
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 373
    :cond_1
    return-void
.end method
