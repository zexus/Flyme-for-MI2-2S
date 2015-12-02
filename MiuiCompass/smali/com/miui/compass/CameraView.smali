.class public Lcom/miui/compass/CameraView;
.super Landroid/view/SurfaceView;
.source "CameraView.java"

# interfaces
.implements Landroid/view/SurfaceHolder$Callback;


# instance fields
.field private mCamera:Landroid/hardware/Camera;

.field private mCameraUnAvailableDialog:Landroid/app/AlertDialog;

.field private mHolder:Landroid/view/SurfaceHolder;

.field private mIsRunningPreview:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/compass/CameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/compass/CameraView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-virtual {p0}, Lcom/miui/compass/CameraView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/compass/CameraView;->mHolder:Landroid/view/SurfaceHolder;

    .line 35
    iget-object v0, p0, Lcom/miui/compass/CameraView;->mHolder:Landroid/view/SurfaceHolder;

    invoke-interface {v0, p0}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 36
    iget-object v0, p0, Lcom/miui/compass/CameraView;->mHolder:Landroid/view/SurfaceHolder;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 37
    return-void
.end method

.method static synthetic access$000(Lcom/miui/compass/CameraView;)Landroid/hardware/Camera;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CameraView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/compass/CameraView;->mCamera:Landroid/hardware/Camera;

    return-object v0
.end method

.method static synthetic access$002(Lcom/miui/compass/CameraView;Landroid/hardware/Camera;)Landroid/hardware/Camera;
    .locals 0
    .param p0, "x0"    # Lcom/miui/compass/CameraView;
    .param p1, "x1"    # Landroid/hardware/Camera;

    .prologue
    .line 15
    iput-object p1, p0, Lcom/miui/compass/CameraView;->mCamera:Landroid/hardware/Camera;

    return-object p1
.end method

.method static synthetic access$100(Lcom/miui/compass/CameraView;)Landroid/view/SurfaceHolder;
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CameraView;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/miui/compass/CameraView;->mHolder:Landroid/view/SurfaceHolder;

    return-object v0
.end method

.method static synthetic access$200(Lcom/miui/compass/CameraView;)Z
    .locals 1
    .param p0, "x0"    # Lcom/miui/compass/CameraView;

    .prologue
    .line 15
    iget-boolean v0, p0, Lcom/miui/compass/CameraView;->mIsRunningPreview:Z

    return v0
.end method

.method static synthetic access$300(Lcom/miui/compass/CameraView;II)V
    .locals 0
    .param p0, "x0"    # Lcom/miui/compass/CameraView;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Lcom/miui/compass/CameraView;->startPreview(II)V

    return-void
.end method

.method private getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;
    .locals 16
    .param p2, "w"    # I
    .param p3, "h"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/hardware/Camera$Size;",
            ">;II)",
            "Landroid/hardware/Camera$Size;"
        }
    .end annotation

    .prologue
    .line 136
    .local p1, "sizes":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-nez p3, :cond_1

    .line 137
    const/4 v3, 0x0

    .line 163
    :cond_0
    :goto_0
    return-object v3

    .line 140
    :cond_1
    move/from16 v0, p2

    int-to-double v12, v0

    move/from16 v0, p3

    int-to-double v14, v0

    div-double v10, v12, v14

    .line 141
    .local v10, "targetRatio":D
    if-nez p1, :cond_2

    const/4 v3, 0x0

    goto :goto_0

    .line 143
    :cond_2
    const/4 v3, 0x0

    .line 144
    .local v3, "optimalSize":Landroid/hardware/Camera$Size;
    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    .line 146
    .local v4, "minDiff":D
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :cond_3
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/hardware/Camera$Size;

    .line 148
    .local v8, "size":Landroid/hardware/Camera$Size;
    move/from16 v0, p2

    move/from16 v1, p3

    if-le v0, v1, :cond_4

    iget v9, v8, Landroid/hardware/Camera$Size;->width:I

    iget v12, v8, Landroid/hardware/Camera$Size;->height:I

    if-gt v9, v12, :cond_5

    :cond_4
    move/from16 v0, p2

    move/from16 v1, p3

    if-ge v0, v1, :cond_6

    iget v9, v8, Landroid/hardware/Camera$Size;->width:I

    iget v12, v8, Landroid/hardware/Camera$Size;->height:I

    if-ge v9, v12, :cond_6

    .line 149
    :cond_5
    iget v9, v8, Landroid/hardware/Camera$Size;->width:I

    int-to-double v12, v9

    iget v9, v8, Landroid/hardware/Camera$Size;->height:I

    int-to-double v14, v9

    div-double v6, v12, v14

    .line 153
    .local v6, "ratio":D
    :goto_2
    sub-double v12, v10, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpg-double v9, v12, v4

    if-gez v9, :cond_7

    .line 154
    move-object v3, v8

    .line 155
    sub-double v12, v10, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v4

    goto :goto_1

    .line 151
    .end local v6    # "ratio":D
    :cond_6
    iget v9, v8, Landroid/hardware/Camera$Size;->height:I

    int-to-double v12, v9

    iget v9, v8, Landroid/hardware/Camera$Size;->width:I

    int-to-double v14, v9

    div-double v6, v12, v14

    .restart local v6    # "ratio":D
    goto :goto_2

    .line 156
    :cond_7
    sub-double v12, v10, v6

    invoke-static {v12, v13}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    cmpl-double v9, v12, v4

    if-nez v9, :cond_3

    .line 157
    iget v9, v3, Landroid/hardware/Camera$Size;->width:I

    iget v12, v8, Landroid/hardware/Camera$Size;->width:I

    if-gt v9, v12, :cond_8

    iget v9, v3, Landroid/hardware/Camera$Size;->height:I

    iget v12, v8, Landroid/hardware/Camera$Size;->height:I

    if-le v9, v12, :cond_3

    .line 158
    :cond_8
    move-object v3, v8

    goto :goto_1
.end method

.method private initParameters(II)V
    .locals 12
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v11, 0x0

    const/4 v10, 0x1

    .line 87
    iget-object v8, p0, Lcom/miui/compass/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v3

    .line 88
    .local v3, "parameters":Landroid/hardware/Camera$Parameters;
    const-string v8, "auto"

    invoke-virtual {v3, v8}, Landroid/hardware/Camera$Parameters;->setAntibanding(Ljava/lang/String;)V

    .line 89
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPictureSizes()Ljava/util/List;

    move-result-object v2

    .line 90
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<Landroid/hardware/Camera$Size;>;"
    if-eqz v2, :cond_3

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_3

    .line 91
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/hardware/Camera$Size;

    .line 92
    .local v7, "smallestSize":Landroid/hardware/Camera$Size;
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/hardware/Camera$Size;

    .line 93
    .local v5, "size":Landroid/hardware/Camera$Size;
    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    iget v9, v5, Landroid/hardware/Camera$Size;->width:I

    if-gt v8, v9, :cond_1

    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    iget v9, v5, Landroid/hardware/Camera$Size;->width:I

    if-ne v8, v9, :cond_0

    iget v8, v7, Landroid/hardware/Camera$Size;->height:I

    iget v9, v5, Landroid/hardware/Camera$Size;->height:I

    if-le v8, v9, :cond_0

    .line 95
    :cond_1
    move-object v7, v5

    goto :goto_0

    .line 98
    .end local v5    # "size":Landroid/hardware/Camera$Size;
    :cond_2
    iget v8, v7, Landroid/hardware/Camera$Size;->width:I

    iget v9, v7, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v8, v9}, Landroid/hardware/Camera$Parameters;->setPictureSize(II)V

    .line 101
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v7    # "smallestSize":Landroid/hardware/Camera$Size;
    :cond_3
    invoke-virtual {v3}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewFpsRange()Ljava/util/List;

    move-result-object v0

    .line 102
    .local v0, "fpsList":Ljava/util/List;, "Ljava/util/List<[I>;"
    if-eqz v0, :cond_7

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v8

    if-le v8, v10, :cond_7

    .line 103
    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 104
    .local v6, "smalledRange":[I
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :cond_4
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [I

    .line 105
    .local v4, "range":[I
    aget v8, v4, v10

    aget v9, v6, v10

    if-lt v8, v9, :cond_5

    aget v8, v4, v10

    aget v9, v6, v10

    if-ne v8, v9, :cond_4

    aget v8, v4, v11

    aget v9, v6, v11

    if-ge v8, v9, :cond_4

    .line 107
    :cond_5
    move-object v6, v4

    goto :goto_1

    .line 110
    .end local v4    # "range":[I
    :cond_6
    aget v8, v6, v11

    aget v9, v6, v10

    invoke-virtual {v3, v8, v9}, Landroid/hardware/Camera$Parameters;->setPreviewFpsRange(II)V

    .line 113
    .end local v1    # "i$":Ljava/util/Iterator;
    .end local v6    # "smalledRange":[I
    :cond_7
    iget-object v8, p0, Lcom/miui/compass/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v8}, Landroid/hardware/Camera;->getParameters()Landroid/hardware/Camera$Parameters;

    move-result-object v8

    invoke-virtual {v8}, Landroid/hardware/Camera$Parameters;->getSupportedPreviewSizes()Ljava/util/List;

    move-result-object v8

    invoke-direct {p0, v8, p1, p2}, Lcom/miui/compass/CameraView;->getOptimalPreviewSize(Ljava/util/List;II)Landroid/hardware/Camera$Size;

    move-result-object v5

    .line 114
    .restart local v5    # "size":Landroid/hardware/Camera$Size;
    if-eqz v5, :cond_8

    .line 115
    iget v8, v5, Landroid/hardware/Camera$Size;->width:I

    iget v9, v5, Landroid/hardware/Camera$Size;->height:I

    invoke-virtual {v3, v8, v9}, Landroid/hardware/Camera$Parameters;->setPreviewSize(II)V

    .line 118
    :cond_8
    const-string v8, "continuous-picture"

    invoke-virtual {v3, v8}, Landroid/hardware/Camera$Parameters;->setFocusMode(Ljava/lang/String;)V

    .line 120
    iget-object v8, p0, Lcom/miui/compass/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v8, v3}, Landroid/hardware/Camera;->setParameters(Landroid/hardware/Camera$Parameters;)V

    .line 121
    return-void
.end method

.method private startPreview(II)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    .line 79
    iget-object v0, p0, Lcom/miui/compass/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 80
    invoke-direct {p0, p1, p2}, Lcom/miui/compass/CameraView;->initParameters(II)V

    .line 81
    iget-object v0, p0, Lcom/miui/compass/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->startPreview()V

    .line 82
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/compass/CameraView;->mIsRunningPreview:Z

    .line 84
    :cond_0
    return-void
.end method

.method private stopPreview()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 124
    invoke-virtual {p0, v0}, Lcom/miui/compass/CameraView;->shouldShowCameraUnavailableDialog(Z)V

    .line 125
    monitor-enter p0

    .line 126
    :try_start_0
    iget-object v0, p0, Lcom/miui/compass/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/miui/compass/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->stopPreview()V

    .line 128
    iget-object v0, p0, Lcom/miui/compass/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v0}, Landroid/hardware/Camera;->release()V

    .line 130
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/compass/CameraView;->mCamera:Landroid/hardware/Camera;

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/compass/CameraView;->mIsRunningPreview:Z

    .line 132
    monitor-exit p0

    .line 133
    return-void

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public closeCamera()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Lcom/miui/compass/CameraView;->stopPreview()V

    .line 168
    return-void
.end method

.method public openCamera()V
    .locals 2

    .prologue
    .line 40
    new-instance v0, Lcom/miui/compass/CameraView$1;

    invoke-direct {v0, p0}, Lcom/miui/compass/CameraView$1;-><init>(Lcom/miui/compass/CameraView;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/miui/compass/CameraView$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 76
    return-void
.end method

.method public shouldShowCameraUnavailableDialog(Z)V
    .locals 3
    .param p1, "show"    # Z

    .prologue
    const/4 v2, 0x0

    .line 196
    if-eqz p1, :cond_2

    .line 197
    iget-object v1, p0, Lcom/miui/compass/CameraView;->mCameraUnAvailableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/compass/CameraView;->mCameraUnAvailableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-nez v1, :cond_1

    .line 198
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/miui/compass/CameraView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 199
    .local v0, "b":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f08002e

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 200
    const v1, 0x7f08002f

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 201
    const v1, 0x104000a

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 202
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    iput-object v1, p0, Lcom/miui/compass/CameraView;->mCameraUnAvailableDialog:Landroid/app/AlertDialog;

    .line 203
    iget-object v1, p0, Lcom/miui/compass/CameraView;->mCameraUnAvailableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 211
    .end local v0    # "b":Landroid/app/AlertDialog$Builder;
    :cond_1
    :goto_0
    return-void

    .line 206
    :cond_2
    iget-object v1, p0, Lcom/miui/compass/CameraView;->mCameraUnAvailableDialog:Landroid/app/AlertDialog;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/miui/compass/CameraView;->mCameraUnAvailableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 207
    iget-object v1, p0, Lcom/miui/compass/CameraView;->mCameraUnAvailableDialog:Landroid/app/AlertDialog;

    invoke-virtual {v1}, Landroid/app/AlertDialog;->dismiss()V

    .line 209
    :cond_3
    iput-object v2, p0, Lcom/miui/compass/CameraView;->mCameraUnAvailableDialog:Landroid/app/AlertDialog;

    goto :goto_0
.end method

.method public surfaceChanged(Landroid/view/SurfaceHolder;III)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/miui/compass/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 184
    invoke-direct {p0, p3, p4}, Lcom/miui/compass/CameraView;->startPreview(II)V

    .line 186
    :cond_0
    return-void
.end method

.method public surfaceCreated(Landroid/view/SurfaceHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 173
    :try_start_0
    iget-object v1, p0, Lcom/miui/compass/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v1, :cond_0

    .line 174
    iget-object v1, p0, Lcom/miui/compass/CameraView;->mCamera:Landroid/hardware/Camera;

    invoke-virtual {v1, p1}, Landroid/hardware/Camera;->setPreviewDisplay(Landroid/view/SurfaceHolder;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 179
    :cond_0
    :goto_0
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "exception":Ljava/io/IOException;
    const-string v1, "Compass:CameraView"

    const-string v2, "IOException caused by setPreviewDisplay()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public surfaceDestroyed(Landroid/view/SurfaceHolder;)V
    .locals 1
    .param p1, "holder"    # Landroid/view/SurfaceHolder;

    .prologue
    .line 190
    iget-object v0, p0, Lcom/miui/compass/CameraView;->mCamera:Landroid/hardware/Camera;

    if-eqz v0, :cond_0

    .line 191
    invoke-direct {p0}, Lcom/miui/compass/CameraView;->stopPreview()V

    .line 193
    :cond_0
    return-void
.end method
