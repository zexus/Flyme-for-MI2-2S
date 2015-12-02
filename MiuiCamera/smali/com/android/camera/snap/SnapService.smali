.class public Lcom/android/camera/snap/SnapService;
.super Landroid/app/Service;
.source "SnapService.java"

# interfaces
.implements Lcom/android/camera/snap/SnapCamera$SnapStatusListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/camera/snap/SnapService$InnerHandler;
    }
.end annotation


# instance fields
.field private burstCount:I

.field camera:Lcom/android/camera/snap/SnapCamera;

.field cameraView:Lcom/android/camera/snap/SnapCameraPreview;

.field private inBurst:Z

.field private isInited:Z

.field private isReady:Z

.field private lastAngle:I

.field private final mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

.field mOrientationListener:Landroid/view/OrientationEventListener;

.field private picCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 28
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 38
    iput-object v0, p0, Lcom/android/camera/snap/SnapService;->camera:Lcom/android/camera/snap/SnapCamera;

    .line 39
    iput-object v0, p0, Lcom/android/camera/snap/SnapService;->cameraView:Lcom/android/camera/snap/SnapCameraPreview;

    .line 42
    iput v1, p0, Lcom/android/camera/snap/SnapService;->picCount:I

    .line 43
    iput v1, p0, Lcom/android/camera/snap/SnapService;->burstCount:I

    .line 44
    iput-boolean v1, p0, Lcom/android/camera/snap/SnapService;->inBurst:Z

    .line 45
    iput-boolean v1, p0, Lcom/android/camera/snap/SnapService;->isReady:Z

    .line 46
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/camera/snap/SnapService;->lastAngle:I

    .line 47
    iput-boolean v1, p0, Lcom/android/camera/snap/SnapService;->isInited:Z

    .line 97
    new-instance v0, Lcom/android/camera/snap/SnapService$InnerHandler;

    invoke-direct {v0, p0}, Lcom/android/camera/snap/SnapService$InnerHandler;-><init>(Lcom/android/camera/snap/SnapService;)V

    iput-object v0, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    return-void
.end method

.method static synthetic access$000(Lcom/android/camera/snap/SnapService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/snap/SnapService;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/camera/snap/SnapService;->isInited:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/camera/snap/SnapService;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/snap/SnapService;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/android/camera/snap/SnapService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/camera/snap/SnapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/snap/SnapService;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->destroy()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/camera/snap/SnapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/snap/SnapService;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->triggerWatchdog()V

    return-void
.end method

.method static synthetic access$400(Lcom/android/camera/snap/SnapService;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/snap/SnapService;

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->takeSnap()V

    return-void
.end method

.method static synthetic access$500(Lcom/android/camera/snap/SnapService;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/snap/SnapService;

    .prologue
    .line 28
    iget v0, p0, Lcom/android/camera/snap/SnapService;->lastAngle:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/camera/snap/SnapService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/snap/SnapService;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/android/camera/snap/SnapService;->lastAngle:I

    return p1
.end method

.method static synthetic access$600(Lcom/android/camera/snap/SnapService;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/snap/SnapService;

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/android/camera/snap/SnapService;->isReady:Z

    return v0
.end method

.method static synthetic access$700(Lcom/android/camera/snap/SnapService;)Lcom/android/camera/snap/SnapService$InnerHandler;
    .locals 1
    .param p0, "x0"    # Lcom/android/camera/snap/SnapService;

    .prologue
    .line 28
    iget-object v0, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    return-object v0
.end method

.method static synthetic access$802(Lcom/android/camera/snap/SnapService;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/snap/SnapService;
    .param p1, "x1"    # Z

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/android/camera/snap/SnapService;->inBurst:Z

    return p1
.end method

.method static synthetic access$902(Lcom/android/camera/snap/SnapService;I)I
    .locals 0
    .param p0, "x0"    # Lcom/android/camera/snap/SnapService;
    .param p1, "x1"    # I

    .prologue
    .line 28
    iput p1, p0, Lcom/android/camera/snap/SnapService;->burstCount:I

    return p1
.end method

.method private destroy()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 185
    iput-boolean v3, p0, Lcom/android/camera/snap/SnapService;->isReady:Z

    .line 186
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/camera/snap/SnapService;->lastAngle:I

    .line 187
    iput v3, p0, Lcom/android/camera/snap/SnapService;->picCount:I

    .line 188
    iput v3, p0, Lcom/android/camera/snap/SnapService;->burstCount:I

    .line 189
    iput-boolean v3, p0, Lcom/android/camera/snap/SnapService;->inBurst:Z

    .line 190
    iput-boolean v3, p0, Lcom/android/camera/snap/SnapService;->isInited:Z

    .line 192
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->vibratorLong()V

    .line 195
    :try_start_0
    const-string v2, "destroy"

    invoke-direct {p0, v2}, Lcom/android/camera/snap/SnapService;->log(Ljava/lang/String;)V

    .line 197
    iget-object v2, p0, Lcom/android/camera/snap/SnapService;->camera:Lcom/android/camera/snap/SnapCamera;

    if-eqz v2, :cond_0

    .line 198
    iget-object v2, p0, Lcom/android/camera/snap/SnapService;->camera:Lcom/android/camera/snap/SnapCamera;

    invoke-virtual {v2}, Lcom/android/camera/snap/SnapCamera;->release()V

    .line 199
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/snap/SnapService;->camera:Lcom/android/camera/snap/SnapCamera;

    .line 202
    :cond_0
    iget-object v2, p0, Lcom/android/camera/snap/SnapService;->cameraView:Lcom/android/camera/snap/SnapCameraPreview;

    if-eqz v2, :cond_1

    .line 203
    invoke-virtual {p0}, Lcom/android/camera/snap/SnapService;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 204
    .local v1, "wm":Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/android/camera/snap/SnapService;->cameraView:Lcom/android/camera/snap/SnapCameraPreview;

    invoke-interface {v1, v2}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 205
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/snap/SnapService;->cameraView:Lcom/android/camera/snap/SnapCameraPreview;

    .line 208
    .end local v1    # "wm":Landroid/view/WindowManager;
    :cond_1
    iget-object v2, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    const/16 v3, 0x65

    invoke-virtual {v2, v3}, Lcom/android/camera/snap/SnapService$InnerHandler;->removeMessages(I)V

    .line 209
    iget-object v2, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    const/16 v3, 0x64

    invoke-virtual {v2, v3}, Lcom/android/camera/snap/SnapService$InnerHandler;->removeMessages(I)V

    .line 211
    iget-object v2, p0, Lcom/android/camera/snap/SnapService;->mOrientationListener:Landroid/view/OrientationEventListener;

    if-eqz v2, :cond_2

    .line 212
    iget-object v2, p0, Lcom/android/camera/snap/SnapService;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v2}, Landroid/view/OrientationEventListener;->disable()V

    .line 213
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/camera/snap/SnapService;->mOrientationListener:Landroid/view/OrientationEventListener;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 218
    :cond_2
    :goto_0
    return-void

    .line 215
    :catch_0
    move-exception v0

    .line 216
    .local v0, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "destroy failed"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/camera/snap/SnapService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private init()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 100
    invoke-static {}, Lcom/android/camera/Device;->isSupportedQuickSnap()Z

    move-result v4

    if-nez v4, :cond_1

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 104
    :cond_1
    iget-object v4, p0, Lcom/android/camera/snap/SnapService;->camera:Lcom/android/camera/snap/SnapCamera;

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/android/camera/snap/SnapService;->cameraView:Lcom/android/camera/snap/SnapCameraPreview;

    if-nez v4, :cond_0

    .line 109
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->vibratorLong()V

    .line 111
    const-string v4, "init"

    invoke-direct {p0, v4}, Lcom/android/camera/snap/SnapService;->log(Ljava/lang/String;)V

    .line 113
    iput-boolean v5, p0, Lcom/android/camera/snap/SnapService;->isReady:Z

    .line 114
    iput v5, p0, Lcom/android/camera/snap/SnapService;->picCount:I

    .line 117
    :try_start_0
    invoke-virtual {p0}, Lcom/android/camera/snap/SnapService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "power"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 118
    .local v1, "pm":Landroid/os/PowerManager;
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_0

    .line 119
    new-instance v4, Lcom/android/camera/snap/SnapCamera;

    invoke-direct {v4, p0}, Lcom/android/camera/snap/SnapCamera;-><init>(Landroid/content/Context;)V

    iput-object v4, p0, Lcom/android/camera/snap/SnapService;->camera:Lcom/android/camera/snap/SnapCamera;

    .line 120
    invoke-virtual {v1}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v4

    if-nez v4, :cond_0

    .line 121
    new-instance v5, Lcom/android/camera/snap/SnapCameraPreview;

    invoke-virtual {p0}, Lcom/android/camera/snap/SnapService;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    iget-object v4, p0, Lcom/android/camera/snap/SnapService;->camera:Lcom/android/camera/snap/SnapCamera;

    invoke-virtual {v4}, Lcom/android/camera/snap/SnapCamera;->Camera()Lcom/android/camera/CameraManager$CameraProxy;

    move-result-object v7

    iget-object v4, p0, Lcom/android/camera/snap/SnapService;->camera:Lcom/android/camera/snap/SnapCamera;

    invoke-virtual {v4}, Lcom/android/camera/snap/SnapCamera;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    :goto_1
    invoke-direct {v5, v6, v7, v4}, Lcom/android/camera/snap/SnapCameraPreview;-><init>(Landroid/content/Context;Lcom/android/camera/CameraManager$CameraProxy;Lcom/android/camera/snap/SnapCamera$SnapStatusListener;)V

    iput-object v5, p0, Lcom/android/camera/snap/SnapService;->cameraView:Lcom/android/camera/snap/SnapCameraPreview;

    .line 125
    const-string v4, "camera init done"

    invoke-direct {p0, v4}, Lcom/android/camera/snap/SnapService;->log(Ljava/lang/String;)V

    .line 127
    invoke-virtual {p0}, Lcom/android/camera/snap/SnapService;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "window"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 128
    .local v2, "wm":Landroid/view/WindowManager;
    new-instance v3, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v3}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 129
    .local v3, "wmParams":Landroid/view/WindowManager$LayoutParams;
    const/4 v4, 0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 130
    const/16 v4, 0x7d2

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 131
    const/16 v4, 0x28

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 133
    const/4 v4, 0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 134
    const/4 v4, 0x1

    iput v4, v3, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 135
    iget-object v4, p0, Lcom/android/camera/snap/SnapService;->cameraView:Lcom/android/camera/snap/SnapCameraPreview;

    invoke-interface {v2, v4, v3}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    iget-object v4, p0, Lcom/android/camera/snap/SnapService;->camera:Lcom/android/camera/snap/SnapCamera;

    invoke-virtual {v4}, Lcom/android/camera/snap/SnapCamera;->isFrontCamera()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 138
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->vibratorLong()V

    .line 141
    :cond_2
    new-instance v4, Lcom/android/camera/snap/SnapService$1;

    const/4 v5, 0x3

    invoke-direct {v4, p0, p0, v5}, Lcom/android/camera/snap/SnapService$1;-><init>(Lcom/android/camera/snap/SnapService;Landroid/content/Context;I)V

    iput-object v4, p0, Lcom/android/camera/snap/SnapService;->mOrientationListener:Landroid/view/OrientationEventListener;

    .line 170
    iget-object v4, p0, Lcom/android/camera/snap/SnapService;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v4}, Landroid/view/OrientationEventListener;->canDetectOrientation()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 171
    const-string v4, "Can detect orientation"

    invoke-direct {p0, v4}, Lcom/android/camera/snap/SnapService;->log(Ljava/lang/String;)V

    .line 172
    iget-object v4, p0, Lcom/android/camera/snap/SnapService;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v4}, Landroid/view/OrientationEventListener;->enable()V

    .line 178
    :goto_2
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/camera/snap/SnapService;->isInited:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 179
    .end local v1    # "pm":Landroid/os/PowerManager;
    .end local v2    # "wm":Landroid/view/WindowManager;
    .end local v3    # "wmParams":Landroid/view/WindowManager$LayoutParams;
    :catch_0
    move-exception v0

    .line 180
    .local v0, "e":Ljava/lang/Exception;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "init failed"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/camera/snap/SnapService;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .end local v0    # "e":Ljava/lang/Exception;
    .restart local v1    # "pm":Landroid/os/PowerManager;
    :cond_3
    move-object v4, p0

    .line 121
    goto :goto_1

    .line 174
    .restart local v2    # "wm":Landroid/view/WindowManager;
    .restart local v3    # "wmParams":Landroid/view/WindowManager$LayoutParams;
    :cond_4
    :try_start_1
    const-string v4, "Cannot detect orientation"

    invoke-direct {p0, v4}, Lcom/android/camera/snap/SnapService;->log(Ljava/lang/String;)V

    .line 175
    iget-object v4, p0, Lcom/android/camera/snap/SnapService;->mOrientationListener:Landroid/view/OrientationEventListener;

    invoke-virtual {v4}, Landroid/view/OrientationEventListener;->disable()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_2
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .param p1, "log"    # Ljava/lang/String;

    .prologue
    .line 58
    const-string v0, "SnapService"

    invoke-static {v0, p1}, Lcom/android/camera/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    return-void
.end method

.method public static notifyForDetail(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "title"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 338
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 339
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 340
    const-string v4, "image/*"

    invoke-virtual {v0, p1, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 342
    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 343
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    new-instance v1, Landroid/app/Notification;

    const v4, 0x1080041

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v1, v4, p2, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    .line 345
    .local v1, "notification":Landroid/app/Notification;
    invoke-static {p0, v5, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 348
    .local v3, "pendingIntent":Landroid/app/PendingIntent;
    invoke-virtual {v1, p0, p2, p3, v3}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    .line 349
    iget v4, v1, Landroid/app/Notification;->flags:I

    or-int/lit8 v4, v4, 0x10

    iput v4, v1, Landroid/app/Notification;->flags:I

    .line 350
    iget-object v4, v1, Landroid/app/Notification;->extraNotification:Landroid/app/MiuiNotification;

    invoke-virtual {v4, v5}, Landroid/app/MiuiNotification;->setMessageCount(I)V

    .line 351
    invoke-virtual {v2, v5, v1}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    .line 352
    return-void
.end method

.method private takeSnap()V
    .locals 3

    .prologue
    .line 263
    :try_start_0
    invoke-static {}, Lcom/android/camera/Device;->isSupportedQuickSnap()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/android/camera/snap/SnapService;->isReady:Z

    if-nez v1, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    iget-object v1, p0, Lcom/android/camera/snap/SnapService;->camera:Lcom/android/camera/snap/SnapCamera;

    if-eqz v1, :cond_0

    .line 268
    iget-object v1, p0, Lcom/android/camera/snap/SnapService;->camera:Lcom/android/camera/snap/SnapCamera;

    invoke-virtual {v1, p0}, Lcom/android/camera/snap/SnapCamera;->takeSnap(Lcom/android/camera/snap/SnapCamera$SnapStatusListener;)V

    .line 269
    const-string v1, "take snap"

    invoke-direct {p0, v1}, Lcom/android/camera/snap/SnapService;->log(Ljava/lang/String;)V

    .line 270
    invoke-static {}, Lcom/android/camera/CameraDataAnalytics;->instance()Lcom/android/camera/CameraDataAnalytics;

    move-result-object v1

    const-string v2, "capture_times_quick_snap"

    invoke-virtual {v1, v2}, Lcom/android/camera/CameraDataAnalytics;->trackEvent(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 272
    :catch_0
    move-exception v0

    .line 273
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "takesnap failed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/camera/snap/SnapService;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private triggerWatchdog()V
    .locals 4

    .prologue
    const/16 v1, 0x65

    .line 50
    iget-boolean v0, p0, Lcom/android/camera/snap/SnapService;->isInited:Z

    if-nez v0, :cond_0

    .line 55
    :goto_0
    return-void

    .line 53
    :cond_0
    iget-object v0, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    invoke-virtual {v0, v1}, Lcom/android/camera/snap/SnapService$InnerHandler;->removeMessages(I)V

    .line 54
    iget-object v0, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    const-wide/16 v2, 0x7530

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/snap/SnapService$InnerHandler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method

.method private vibrator([J)V
    .locals 2
    .param p1, "pattern"    # [J

    .prologue
    .line 318
    :try_start_0
    const-string v1, "vibrator"

    invoke-virtual {p0, v1}, Lcom/android/camera/snap/SnapService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Vibrator;

    .line 319
    .local v0, "vibrator":Landroid/os/Vibrator;
    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Landroid/os/Vibrator;->vibrate([JI)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 323
    .end local v0    # "vibrator":Landroid/os/Vibrator;
    :goto_0
    return-void

    .line 320
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method private vibratorLong()V
    .locals 1

    .prologue
    .line 278
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/android/camera/snap/SnapService;->vibrator([J)V

    .line 279
    return-void

    .line 278
    :array_0
    .array-data 8
        0xa
        0x64
    .end array-data
.end method

.method private vibratorShort()V
    .locals 1

    .prologue
    .line 284
    const/4 v0, 0x2

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    invoke-direct {p0, v0}, Lcom/android/camera/snap/SnapService;->vibrator([J)V

    .line 285
    return-void

    .line 284
    :array_0
    .array-data 8
        0xa
        0x14
    .end array-data
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 224
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->init()V

    .line 225
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->triggerWatchdog()V

    .line 227
    new-instance v0, Landroid/os/Messenger;

    new-instance v1, Lcom/android/camera/snap/SnapService$2;

    invoke-direct {v1, p0}, Lcom/android/camera/snap/SnapService$2;-><init>(Lcom/android/camera/snap/SnapService;)V

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 0

    .prologue
    .line 257
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 258
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->destroy()V

    .line 259
    return-void
.end method

.method public onDone(Landroid/net/Uri;)V
    .locals 4
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 299
    :try_start_0
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->vibratorShort()V

    .line 300
    iget v0, p0, Lcom/android/camera/snap/SnapService;->picCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/snap/SnapService;->picCount:I

    .line 302
    iget-boolean v0, p0, Lcom/android/camera/snap/SnapService;->inBurst:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    if-eqz v0, :cond_0

    .line 303
    iget v0, p0, Lcom/android/camera/snap/SnapService;->burstCount:I

    const/16 v1, 0xa

    if-gt v0, v1, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/camera/snap/SnapService;->mHandler:Lcom/android/camera/snap/SnapService$InnerHandler;

    const/16 v1, 0x64

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/camera/snap/SnapService$InnerHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 305
    iget v0, p0, Lcom/android/camera/snap/SnapService;->burstCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/camera/snap/SnapService;->burstCount:I

    .line 309
    :cond_0
    const v0, 0x7f0e01c2

    invoke-virtual {p0, v0}, Lcom/android/camera/snap/SnapService;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v1, 0x7f0e01c3

    invoke-virtual {p0, v1}, Lcom/android/camera/snap/SnapService;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {p0, p1, v0, v1}, Lcom/android/camera/snap/SnapService;->notifyForDetail(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 314
    :goto_0
    return-void

    .line 311
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public onReady()V
    .locals 1

    .prologue
    .line 289
    iget-boolean v0, p0, Lcom/android/camera/snap/SnapService;->isInited:Z

    if-nez v0, :cond_0

    .line 294
    :goto_0
    return-void

    .line 291
    :cond_0
    const-string v0, "focus done"

    invoke-direct {p0, v0}, Lcom/android/camera/snap/SnapService;->log(Ljava/lang/String;)V

    .line 292
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/camera/snap/SnapService;->isReady:Z

    .line 293
    invoke-direct {p0}, Lcom/android/camera/snap/SnapService;->vibratorLong()V

    goto :goto_0
.end method
