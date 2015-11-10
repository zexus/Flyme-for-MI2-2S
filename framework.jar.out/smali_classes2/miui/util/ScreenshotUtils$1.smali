.class final Lmiui/util/ScreenshotUtils$1;
.super Ljava/lang/Object;
.source "ScreenshotUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lmiui/util/ScreenshotUtils;->captureActivityScreenshot(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$isPort:Z

.field final synthetic val$rotation:I

.field final synthetic val$shortComponentName:Ljava/lang/String;


# direct methods
.method constructor <init>(Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 0

    .prologue
    .line 128
    iput-object p1, p0, Lmiui/util/ScreenshotUtils$1;->val$context:Landroid/content/Context;

    iput p2, p0, Lmiui/util/ScreenshotUtils$1;->val$rotation:I

    iput-object p3, p0, Lmiui/util/ScreenshotUtils$1;->val$shortComponentName:Ljava/lang/String;

    iput-boolean p4, p0, Lmiui/util/ScreenshotUtils$1;->val$isPort:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const/4 v8, 0x1

    const/4 v9, 0x0

    const/high16 v13, 0x40000000    # 2.0f

    const/high16 v12, 0x3f000000    # 0.5f

    .line 132
    :try_start_0
    iget-object v7, p0, Lmiui/util/ScreenshotUtils$1;->val$context:Landroid/content/Context;

    const/16 v10, 0x7d0

    invoke-static {v7, v10}, Landroid/view/MiuiWindowManager;->getLayer(Landroid/content/Context;I)I

    move-result v6

    .line 133
    .local v6, "statusBarLayer":I
    sget v7, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    sget v10, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    const/4 v11, 0x0

    invoke-static {v7, v10, v11, v6}, Lmiui/util/CompatibilityHelper;->screenshot(IIII)Landroid/graphics/Bitmap;

    move-result-object v5

    .line 136
    .local v5, "screenshot":Landroid/graphics/Bitmap;
    # getter for: Lmiui/util/ScreenshotUtils;->sCacheBitmap:Ljava/lang/ref/SoftReference;
    invoke-static {}, Lmiui/util/ScreenshotUtils;->access$000()Ljava/lang/ref/SoftReference;

    move-result-object v7

    if-nez v7, :cond_5

    const/4 v4, 0x0

    .line 137
    .local v4, "saveBitmap":Landroid/graphics/Bitmap;
    :goto_0
    if-nez v4, :cond_0

    .line 138
    sget v7, Lmiui/util/ScreenshotUtils;->sScreenWidth:I

    int-to-float v7, v7

    # getter for: Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_SCALE:F
    invoke-static {}, Lmiui/util/ScreenshotUtils;->access$100()F

    move-result v10

    mul-float/2addr v7, v10

    add-float/2addr v7, v12

    float-to-int v7, v7

    sget v10, Lmiui/util/ScreenshotUtils;->sScreenHeight:I

    int-to-float v10, v10

    # getter for: Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_SCALE:F
    invoke-static {}, Lmiui/util/ScreenshotUtils;->access$100()F

    move-result v11

    mul-float/2addr v10, v11

    add-float/2addr v10, v12

    float-to-int v10, v10

    sget-object v11, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v10, v11}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 142
    new-instance v7, Ljava/lang/ref/SoftReference;

    invoke-direct {v7, v4}, Ljava/lang/ref/SoftReference;-><init>(Ljava/lang/Object;)V

    # setter for: Lmiui/util/ScreenshotUtils;->sCacheBitmap:Ljava/lang/ref/SoftReference;
    invoke-static {v7}, Lmiui/util/ScreenshotUtils;->access$002(Ljava/lang/ref/SoftReference;)Ljava/lang/ref/SoftReference;

    .line 144
    :cond_0
    # getter for: Lmiui/util/ScreenshotUtils;->sPaint:Landroid/graphics/Paint;
    invoke-static {}, Lmiui/util/ScreenshotUtils;->access$200()Landroid/graphics/Paint;

    move-result-object v7

    if-nez v7, :cond_1

    .line 145
    new-instance v7, Landroid/graphics/Paint;

    const/4 v10, 0x3

    invoke-direct {v7, v10}, Landroid/graphics/Paint;-><init>(I)V

    # setter for: Lmiui/util/ScreenshotUtils;->sPaint:Landroid/graphics/Paint;
    invoke-static {v7}, Lmiui/util/ScreenshotUtils;->access$202(Landroid/graphics/Paint;)Landroid/graphics/Paint;

    .line 147
    :cond_1
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v4}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 150
    .local v1, "canvas":Landroid/graphics/Canvas;
    iget v7, p0, Lmiui/util/ScreenshotUtils$1;->val$rotation:I

    if-eq v7, v8, :cond_2

    iget v7, p0, Lmiui/util/ScreenshotUtils$1;->val$rotation:I

    const/4 v10, 0x2

    if-ne v7, v10, :cond_3

    .line 151
    :cond_2
    const/high16 v7, 0x43340000    # 180.0f

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v13

    invoke-virtual {v4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v13

    invoke-virtual {v1, v7, v10, v11}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 155
    :cond_3
    # getter for: Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_SCALE:F
    invoke-static {}, Lmiui/util/ScreenshotUtils;->access$100()F

    move-result v7

    # getter for: Lmiui/util/ScreenshotUtils;->ACTIVITY_SCREENSHOT_SCALE:F
    invoke-static {}, Lmiui/util/ScreenshotUtils;->access$100()F

    move-result v10

    invoke-virtual {v1, v7, v10}, Landroid/graphics/Canvas;->scale(FF)V

    .line 156
    const/4 v7, 0x0

    const/4 v10, 0x0

    # getter for: Lmiui/util/ScreenshotUtils;->sPaint:Landroid/graphics/Paint;
    invoke-static {}, Lmiui/util/ScreenshotUtils;->access$200()Landroid/graphics/Paint;

    move-result-object v11

    invoke-virtual {v1, v5, v7, v10, v11}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V

    .line 157
    invoke-virtual {v5}, Landroid/graphics/Bitmap;->recycle()V

    .line 160
    new-instance v3, Ljava/io/FileOutputStream;

    iget-object v7, p0, Lmiui/util/ScreenshotUtils$1;->val$shortComponentName:Ljava/lang/String;

    iget-boolean v10, p0, Lmiui/util/ScreenshotUtils$1;->val$isPort:Z

    invoke-static {v7, v10}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v7

    invoke-direct {v3, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 162
    .local v3, "outStream":Ljava/io/FileOutputStream;
    sget-object v7, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v10, 0x5a

    invoke-virtual {v4, v7, v10, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 163
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V

    .line 166
    iget-object v10, p0, Lmiui/util/ScreenshotUtils$1;->val$shortComponentName:Ljava/lang/String;

    iget-boolean v7, p0, Lmiui/util/ScreenshotUtils$1;->val$isPort:Z

    if-nez v7, :cond_6

    move v7, v8

    :goto_1
    invoke-static {v10, v7}, Lmiui/util/ScreenshotUtils;->getActivityScreenshotFile(Ljava/lang/String;Z)Ljava/io/File;

    move-result-object v0

    .line 167
    .local v0, "anotherFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 171
    .end local v0    # "anotherFile":Ljava/io/File;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "saveBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "screenshot":Landroid/graphics/Bitmap;
    .end local v6    # "statusBarLayer":I
    :cond_4
    :goto_2
    return-void

    .line 136
    .restart local v5    # "screenshot":Landroid/graphics/Bitmap;
    .restart local v6    # "statusBarLayer":I
    :cond_5
    # getter for: Lmiui/util/ScreenshotUtils;->sCacheBitmap:Ljava/lang/ref/SoftReference;
    invoke-static {}, Lmiui/util/ScreenshotUtils;->access$000()Ljava/lang/ref/SoftReference;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/ref/SoftReference;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v4, v7

    goto/16 :goto_0

    .restart local v1    # "canvas":Landroid/graphics/Canvas;
    .restart local v3    # "outStream":Ljava/io/FileOutputStream;
    .restart local v4    # "saveBitmap":Landroid/graphics/Bitmap;
    :cond_6
    move v7, v9

    .line 166
    goto :goto_1

    .line 168
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    .end local v3    # "outStream":Ljava/io/FileOutputStream;
    .end local v4    # "saveBitmap":Landroid/graphics/Bitmap;
    .end local v5    # "screenshot":Landroid/graphics/Bitmap;
    .end local v6    # "statusBarLayer":I
    :catch_0
    move-exception v2

    .line 169
    .local v2, "ex":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2
.end method
