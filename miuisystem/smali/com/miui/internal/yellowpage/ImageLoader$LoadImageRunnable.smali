.class Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;
.super Ljava/lang/Object;
.source "ImageLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/internal/yellowpage/ImageLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoadImageRunnable"
.end annotation


# instance fields
.field private mImageView:Landroid/widget/ImageView;

.field final synthetic this$0:Lcom/miui/internal/yellowpage/ImageLoader;


# direct methods
.method public constructor <init>(Lcom/miui/internal/yellowpage/ImageLoader;Landroid/widget/ImageView;)V
    .locals 0
    .param p2, "image"    # Landroid/widget/ImageView;

    .prologue
    .line 423
    iput-object p1, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 424
    iput-object p2, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->mImageView:Landroid/widget/ImageView;

    .line 425
    return-void
.end method

.method private notifyBindImage(Lmiui/yellowpage/YellowPageImgLoader$Image;)V
    .locals 3
    .param p1, "image"    # Lmiui/yellowpage/YellowPageImgLoader$Image;

    .prologue
    .line 472
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    # getter for: Lcom/miui/internal/yellowpage/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/internal/yellowpage/ImageLoader;->access$600(Lcom/miui/internal/yellowpage/ImageLoader;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 473
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 474
    iget-object v1, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    # getter for: Lcom/miui/internal/yellowpage/ImageLoader;->mMainThreadHandler:Landroid/os/Handler;
    invoke-static {v1}, Lcom/miui/internal/yellowpage/ImageLoader;->access$600(Lcom/miui/internal/yellowpage/ImageLoader;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 475
    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 428
    iget-object v4, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v4}, Landroid/widget/ImageView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lmiui/yellowpage/YellowPageImgLoader$Image;

    .line 429
    .local v2, "image":Lmiui/yellowpage/YellowPageImgLoader$Image;
    iget-object v4, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->mImageView:Landroid/widget/ImageView;

    if-eqz v4, :cond_0

    if-nez v2, :cond_1

    .line 469
    :cond_0
    :goto_0
    return-void

    .line 433
    :cond_1
    iget-object v4, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    # getter for: Lcom/miui/internal/yellowpage/ImageLoader;->BITMAP_CACHE_LOCK:Ljava/lang/Object;
    invoke-static {v4}, Lcom/miui/internal/yellowpage/ImageLoader;->access$100(Lcom/miui/internal/yellowpage/ImageLoader;)Ljava/lang/Object;

    move-result-object v5

    monitor-enter v5

    .line 435
    :try_start_0
    iget-object v4, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    # getter for: Lcom/miui/internal/yellowpage/ImageLoader;->mRequestingImageView:Ljava/util/Map;
    invoke-static {v4}, Lcom/miui/internal/yellowpage/ImageLoader;->access$200(Lcom/miui/internal/yellowpage/ImageLoader;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/LinkedList;

    .line 436
    .local v3, "imageViewList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/widget/ImageView;>;"
    if-nez v3, :cond_2

    .line 437
    new-instance v3, Ljava/util/LinkedList;

    .end local v3    # "imageViewList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/widget/ImageView;>;"
    invoke-direct {v3}, Ljava/util/LinkedList;-><init>()V

    .line 438
    .restart local v3    # "imageViewList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/widget/ImageView;>;"
    iget-object v4, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    # getter for: Lcom/miui/internal/yellowpage/ImageLoader;->mRequestingImageView:Ljava/util/Map;
    invoke-static {v4}, Lcom/miui/internal/yellowpage/ImageLoader;->access$200(Lcom/miui/internal/yellowpage/ImageLoader;)Ljava/util/Map;

    move-result-object v4

    invoke-interface {v4, v2, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    :cond_2
    iget-object v4, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->mImageView:Landroid/widget/ImageView;

    invoke-virtual {v3, v4}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 443
    iget-object v4, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    # getter for: Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;
    invoke-static {v4}, Lcom/miui/internal/yellowpage/ImageLoader;->access$300(Lcom/miui/internal/yellowpage/ImageLoader;)Landroid/util/LruCache;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    .line 444
    .local v1, "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    if-eqz v1, :cond_4

    .line 445
    iget-object v4, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    sget-object v6, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADING:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v4, v6, :cond_3

    .line 446
    monitor-exit v5

    goto :goto_0

    .line 459
    .end local v1    # "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    .end local v3    # "imageViewList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/widget/ImageView;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 447
    .restart local v1    # "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    .restart local v3    # "imageViewList":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Landroid/widget/ImageView;>;"
    :cond_3
    :try_start_1
    iget-object v4, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    sget-object v6, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADED:Lcom/miui/internal/yellowpage/ImageLoader$State;

    if-ne v4, v6, :cond_4

    .line 448
    invoke-direct {p0, v2}, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->notifyBindImage(Lmiui/yellowpage/YellowPageImgLoader$Image;)V

    .line 449
    monitor-exit v5

    goto :goto_0

    .line 454
    :cond_4
    if-nez v1, :cond_5

    .line 455
    new-instance v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;

    .end local v1    # "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    const/4 v4, 0x0

    invoke-direct {v1, v4}, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;-><init>(Lcom/miui/internal/yellowpage/ImageLoader$1;)V

    .line 457
    .restart local v1    # "holder":Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;
    :cond_5
    sget-object v4, Lcom/miui/internal/yellowpage/ImageLoader$State;->LOADING:Lcom/miui/internal/yellowpage/ImageLoader$State;

    iput-object v4, v1, Lcom/miui/internal/yellowpage/ImageLoader$BitmapHolder;->mState:Lcom/miui/internal/yellowpage/ImageLoader$State;

    .line 458
    iget-object v4, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    # getter for: Lcom/miui/internal/yellowpage/ImageLoader;->mBitmapCache:Landroid/util/LruCache;
    invoke-static {v4}, Lcom/miui/internal/yellowpage/ImageLoader;->access$300(Lcom/miui/internal/yellowpage/ImageLoader;)Landroid/util/LruCache;

    move-result-object v4

    invoke-virtual {v4, v2, v1}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 462
    iget-object v4, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    const/4 v5, 0x1

    # invokes: Lcom/miui/internal/yellowpage/ImageLoader;->loadImage(Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B
    invoke-static {v4, v2, v5}, Lcom/miui/internal/yellowpage/ImageLoader;->access$400(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;Z)[B

    move-result-object v0

    .line 463
    .local v0, "bitmapData":[B
    iget-object v4, p0, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->this$0:Lcom/miui/internal/yellowpage/ImageLoader;

    # invokes: Lcom/miui/internal/yellowpage/ImageLoader;->cacheBitmap(Lmiui/yellowpage/YellowPageImgLoader$Image;[B)V
    invoke-static {v4, v2, v0}, Lcom/miui/internal/yellowpage/ImageLoader;->access$500(Lcom/miui/internal/yellowpage/ImageLoader;Lmiui/yellowpage/YellowPageImgLoader$Image;[B)V

    .line 466
    if-eqz v0, :cond_0

    .line 467
    invoke-direct {p0, v2}, Lcom/miui/internal/yellowpage/ImageLoader$LoadImageRunnable;->notifyBindImage(Lmiui/yellowpage/YellowPageImgLoader$Image;)V

    goto :goto_0
.end method
